package com.sina.weibo.sdk.net;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.text.TextUtils;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.exception.WeiboHttpException;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.Utility;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

class HttpManager
{
  private static final String BOUNDARY;
  private static final int BUFFER_SIZE = 8192;
  private static final int CONNECTION_TIMEOUT = 25000;
  private static final String END_MP_BOUNDARY = "--" + BOUNDARY + "--";
  private static final String HTTP_METHOD_GET = "GET";
  private static final String HTTP_METHOD_POST = "POST";
  private static final String MP_BOUNDARY;
  private static final String MULTIPART_FORM_DATA = "multipart/form-data";
  private static final int SOCKET_TIMEOUT = 20000;
  private static final String TAG = "HttpManager";
  private static SSLSocketFactory sSSLSocketFactory;
  
  static
  {
    System.loadLibrary("weibosdkcore");
    BOUNDARY = getBoundry();
    MP_BOUNDARY = "--" + BOUNDARY;
  }
  
  private static void buildParams(OutputStream paramOutputStream, WeiboParameters paramWeiboParameters)
    throws WeiboException
  {
    for (;;)
    {
      Object localObject2;
      StringBuilder localStringBuilder;
      try
      {
        Object localObject1 = paramWeiboParameters.keySet();
        localObject2 = ((Set)localObject1).iterator();
        if (!((Iterator)localObject2).hasNext())
        {
          localObject1 = ((Set)localObject1).iterator();
          if (!((Iterator)localObject1).hasNext()) {
            paramOutputStream.write(("\r\n" + END_MP_BOUNDARY).getBytes());
          }
        }
        else
        {
          localObject3 = (String)((Iterator)localObject2).next();
          if (!(paramWeiboParameters.get((String)localObject3) instanceof String)) {
            continue;
          }
          localStringBuilder = new StringBuilder(100);
          localStringBuilder.setLength(0);
          localStringBuilder.append(MP_BOUNDARY).append("\r\n");
          localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject3).append("\"\r\n\r\n");
          localStringBuilder.append(paramWeiboParameters.get((String)localObject3)).append("\r\n");
          paramOutputStream.write(localStringBuilder.toString().getBytes());
          continue;
        }
        localObject2 = (String)((Iterator)localObject1).next();
      }
      catch (IOException paramOutputStream)
      {
        throw new WeiboException(paramOutputStream);
      }
      Object localObject3 = paramWeiboParameters.get((String)localObject2);
      if ((localObject3 instanceof Bitmap))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(MP_BOUNDARY).append("\r\n");
        localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject2).append("\"; filename=\"file\"\r\n");
        localStringBuilder.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
        paramOutputStream.write(localStringBuilder.toString().getBytes());
        localObject2 = (Bitmap)localObject3;
        localObject3 = new ByteArrayOutputStream();
        ((Bitmap)localObject2).compress(Bitmap.CompressFormat.PNG, 100, (OutputStream)localObject3);
        paramOutputStream.write(((ByteArrayOutputStream)localObject3).toByteArray());
        paramOutputStream.write("\r\n".getBytes());
      }
      else if ((localObject3 instanceof ByteArrayOutputStream))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(MP_BOUNDARY).append("\r\n");
        localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject2).append("\"; filename=\"file\"\r\n");
        localStringBuilder.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
        paramOutputStream.write(localStringBuilder.toString().getBytes());
        localObject2 = (ByteArrayOutputStream)localObject3;
        paramOutputStream.write(((ByteArrayOutputStream)localObject2).toByteArray());
        paramOutputStream.write("\r\n".getBytes());
        ((ByteArrayOutputStream)localObject2).close();
      }
    }
  }
  
  private static native String calcOauthSignNative(Context paramContext, String paramString1, String paramString2);
  
  /* Error */
  public static String downloadFile(Context paramContext, String paramString1, String paramString2, String paramString3)
    throws WeiboException
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 165	java/io/File
    //   6: dup
    //   7: aload_2
    //   8: invokespecial 166	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_0
    //   12: aload_0
    //   13: invokevirtual 169	java/io/File:exists	()Z
    //   16: ifne +8 -> 24
    //   19: aload_0
    //   20: invokevirtual 172	java/io/File:mkdirs	()Z
    //   23: pop
    //   24: new 165	java/io/File
    //   27: dup
    //   28: aload_0
    //   29: aload_3
    //   30: invokespecial 175	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   33: astore 14
    //   35: aload 14
    //   37: invokevirtual 169	java/io/File:exists	()Z
    //   40: ifeq +14 -> 54
    //   43: aload 14
    //   45: invokevirtual 178	java/io/File:getPath	()Ljava/lang/String;
    //   48: astore_0
    //   49: ldc 2
    //   51: monitorexit
    //   52: aload_0
    //   53: areturn
    //   54: aload_1
    //   55: invokestatic 184	android/webkit/URLUtil:isValidUrl	(Ljava/lang/String;)Z
    //   58: ifne +9 -> 67
    //   61: ldc -70
    //   63: astore_0
    //   64: goto -15 -> 49
    //   67: invokestatic 190	com/sina/weibo/sdk/net/HttpManager:getNewHttpClient	()Lorg/apache/http/client/HttpClient;
    //   70: astore 13
    //   72: lconst_0
    //   73: lstore 5
    //   75: new 165	java/io/File
    //   78: dup
    //   79: aload_2
    //   80: new 51	java/lang/StringBuilder
    //   83: dup
    //   84: aload_3
    //   85: invokestatic 194	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   88: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: ldc -60
    //   93: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokespecial 199	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   102: astore_2
    //   103: aload_2
    //   104: invokevirtual 169	java/io/File:exists	()Z
    //   107: ifeq +309 -> 416
    //   110: aload_2
    //   111: invokevirtual 203	java/io/File:length	()J
    //   114: lstore 5
    //   116: new 205	org/apache/http/client/methods/HttpGet
    //   119: dup
    //   120: aload_1
    //   121: invokespecial 206	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   124: astore_0
    //   125: aload_0
    //   126: ldc -48
    //   128: new 51	java/lang/StringBuilder
    //   131: dup
    //   132: ldc -46
    //   134: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: lload 5
    //   139: invokevirtual 213	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   142: ldc -41
    //   144: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokevirtual 218	org/apache/http/client/methods/HttpGet:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   153: aload 13
    //   155: aload_0
    //   156: invokeinterface 224 2 0
    //   161: astore_0
    //   162: aload_0
    //   163: invokeinterface 230 1 0
    //   168: invokeinterface 236 1 0
    //   173: istore 4
    //   175: lconst_0
    //   176: lstore 11
    //   178: iload 4
    //   180: sipush 206
    //   183: if_icmpne +295 -> 478
    //   186: lload 5
    //   188: lstore 9
    //   190: aload_0
    //   191: ldc -18
    //   193: invokeinterface 242 2 0
    //   198: astore_1
    //   199: lload 9
    //   201: lstore 7
    //   203: lload 11
    //   205: lstore 5
    //   207: aload_1
    //   208: ifnull +46 -> 254
    //   211: lload 9
    //   213: lstore 7
    //   215: lload 11
    //   217: lstore 5
    //   219: aload_1
    //   220: arraylength
    //   221: ifeq +33 -> 254
    //   224: aload_1
    //   225: iconst_0
    //   226: aaload
    //   227: invokeinterface 247 1 0
    //   232: astore_1
    //   233: aload_1
    //   234: aload_1
    //   235: bipush 47
    //   237: invokevirtual 251	java/lang/String:indexOf	(I)I
    //   240: iconst_1
    //   241: iadd
    //   242: invokevirtual 255	java/lang/String:substring	(I)Ljava/lang/String;
    //   245: invokestatic 261	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   248: lstore 5
    //   250: lload 9
    //   252: lstore 7
    //   254: aload_0
    //   255: invokeinterface 265 1 0
    //   260: astore_1
    //   261: aload_0
    //   262: ldc_w 267
    //   265: invokeinterface 271 2 0
    //   270: astore_0
    //   271: aload_0
    //   272: ifnull +313 -> 585
    //   275: aload_0
    //   276: invokeinterface 247 1 0
    //   281: invokevirtual 274	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   284: ldc_w 276
    //   287: invokevirtual 279	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   290: iconst_m1
    //   291: if_icmple +294 -> 585
    //   294: new 281	java/util/zip/GZIPInputStream
    //   297: dup
    //   298: aload_1
    //   299: invokeinterface 287 1 0
    //   304: invokespecial 290	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   307: astore_0
    //   308: new 292	java/io/RandomAccessFile
    //   311: dup
    //   312: aload_2
    //   313: ldc_w 294
    //   316: invokespecial 295	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   319: astore_1
    //   320: aload_1
    //   321: lload 7
    //   323: invokevirtual 299	java/io/RandomAccessFile:seek	(J)V
    //   326: sipush 1024
    //   329: newarray <illegal type>
    //   331: astore_3
    //   332: aload_0
    //   333: aload_3
    //   334: invokevirtual 305	java/io/InputStream:read	([B)I
    //   337: istore 4
    //   339: iload 4
    //   341: iconst_m1
    //   342: if_icmpne +253 -> 595
    //   345: aload_1
    //   346: invokevirtual 306	java/io/RandomAccessFile:close	()V
    //   349: aload_0
    //   350: invokevirtual 307	java/io/InputStream:close	()V
    //   353: lload 5
    //   355: lconst_0
    //   356: lcmp
    //   357: ifeq +13 -> 370
    //   360: aload_2
    //   361: invokevirtual 203	java/io/File:length	()J
    //   364: lload 5
    //   366: lcmp
    //   367: ifge +239 -> 606
    //   370: aload_2
    //   371: invokevirtual 310	java/io/File:delete	()Z
    //   374: pop
    //   375: aload 13
    //   377: ifnull +33 -> 410
    //   380: aload 13
    //   382: invokeinterface 314 1 0
    //   387: invokeinterface 319 1 0
    //   392: aload 13
    //   394: invokeinterface 314 1 0
    //   399: ldc2_w 320
    //   402: getstatic 327	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   405: invokeinterface 331 4 0
    //   410: ldc -70
    //   412: astore_0
    //   413: goto -364 -> 49
    //   416: aload_2
    //   417: invokevirtual 334	java/io/File:createNewFile	()Z
    //   420: pop
    //   421: goto -305 -> 116
    //   424: astore_0
    //   425: aload_0
    //   426: invokevirtual 337	java/io/IOException:printStackTrace	()V
    //   429: aload_2
    //   430: invokevirtual 310	java/io/File:delete	()Z
    //   433: pop
    //   434: aload 13
    //   436: ifnull -26 -> 410
    //   439: aload 13
    //   441: invokeinterface 314 1 0
    //   446: invokeinterface 319 1 0
    //   451: aload 13
    //   453: invokeinterface 314 1 0
    //   458: ldc2_w 320
    //   461: getstatic 327	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   464: invokeinterface 331 4 0
    //   469: goto -59 -> 410
    //   472: astore_0
    //   473: ldc 2
    //   475: monitorexit
    //   476: aload_0
    //   477: athrow
    //   478: iload 4
    //   480: sipush 200
    //   483: if_icmpne +50 -> 533
    //   486: lconst_0
    //   487: lstore 9
    //   489: aload_0
    //   490: ldc_w 339
    //   493: invokeinterface 271 2 0
    //   498: astore_1
    //   499: lload 9
    //   501: lstore 7
    //   503: lload 11
    //   505: lstore 5
    //   507: aload_1
    //   508: ifnull -254 -> 254
    //   511: aload_1
    //   512: invokeinterface 247 1 0
    //   517: invokestatic 344	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   520: invokevirtual 347	java/lang/Integer:intValue	()I
    //   523: i2l
    //   524: lstore 5
    //   526: lload 9
    //   528: lstore 7
    //   530: goto -276 -> 254
    //   533: new 349	com/sina/weibo/sdk/exception/WeiboHttpException
    //   536: dup
    //   537: aload_0
    //   538: invokestatic 353	com/sina/weibo/sdk/net/HttpManager:readRsponse	(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    //   541: iload 4
    //   543: invokespecial 356	com/sina/weibo/sdk/exception/WeiboHttpException:<init>	(Ljava/lang/String;I)V
    //   546: athrow
    //   547: astore_0
    //   548: aload 13
    //   550: ifnull +33 -> 583
    //   553: aload 13
    //   555: invokeinterface 314 1 0
    //   560: invokeinterface 319 1 0
    //   565: aload 13
    //   567: invokeinterface 314 1 0
    //   572: ldc2_w 320
    //   575: getstatic 327	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   578: invokeinterface 331 4 0
    //   583: aload_0
    //   584: athrow
    //   585: aload_1
    //   586: invokeinterface 287 1 0
    //   591: astore_0
    //   592: goto -284 -> 308
    //   595: aload_1
    //   596: aload_3
    //   597: iconst_0
    //   598: iload 4
    //   600: invokevirtual 359	java/io/RandomAccessFile:write	([BII)V
    //   603: goto -271 -> 332
    //   606: aload_2
    //   607: aload 14
    //   609: invokevirtual 363	java/io/File:renameTo	(Ljava/io/File;)Z
    //   612: pop
    //   613: aload 14
    //   615: invokevirtual 178	java/io/File:getPath	()Ljava/lang/String;
    //   618: astore_1
    //   619: aload_1
    //   620: astore_0
    //   621: aload 13
    //   623: ifnull -574 -> 49
    //   626: aload 13
    //   628: invokeinterface 314 1 0
    //   633: invokeinterface 319 1 0
    //   638: aload 13
    //   640: invokeinterface 314 1 0
    //   645: ldc2_w 320
    //   648: getstatic 327	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   651: invokeinterface 331 4 0
    //   656: aload_1
    //   657: astore_0
    //   658: goto -609 -> 49
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	661	0	paramContext	Context
    //   0	661	1	paramString1	String
    //   0	661	2	paramString2	String
    //   0	661	3	paramString3	String
    //   173	426	4	i	int
    //   73	452	5	l1	long
    //   201	328	7	l2	long
    //   188	339	9	l3	long
    //   176	328	11	l4	long
    //   70	569	13	localHttpClient	HttpClient
    //   33	581	14	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   103	116	424	java/io/IOException
    //   116	175	424	java/io/IOException
    //   190	199	424	java/io/IOException
    //   219	250	424	java/io/IOException
    //   254	271	424	java/io/IOException
    //   275	308	424	java/io/IOException
    //   308	332	424	java/io/IOException
    //   332	339	424	java/io/IOException
    //   345	353	424	java/io/IOException
    //   360	370	424	java/io/IOException
    //   370	375	424	java/io/IOException
    //   416	421	424	java/io/IOException
    //   489	499	424	java/io/IOException
    //   511	526	424	java/io/IOException
    //   533	547	424	java/io/IOException
    //   585	592	424	java/io/IOException
    //   595	603	424	java/io/IOException
    //   606	619	424	java/io/IOException
    //   3	24	472	finally
    //   24	49	472	finally
    //   54	61	472	finally
    //   67	72	472	finally
    //   75	103	472	finally
    //   380	410	472	finally
    //   439	469	472	finally
    //   553	583	472	finally
    //   583	585	472	finally
    //   626	656	472	finally
    //   103	116	547	finally
    //   116	175	547	finally
    //   190	199	547	finally
    //   219	250	547	finally
    //   254	271	547	finally
    //   275	308	547	finally
    //   308	332	547	finally
    //   332	339	547	finally
    //   345	353	547	finally
    //   360	370	547	finally
    //   370	375	547	finally
    //   416	421	547	finally
    //   425	434	547	finally
    //   489	499	547	finally
    //   511	526	547	finally
    //   533	547	547	finally
    //   585	592	547	finally
    //   595	603	547	finally
    //   606	619	547	finally
  }
  
  private static String getBoundry()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 1;
    if (i >= 12) {
      return localStringBuffer.toString();
    }
    long l = System.currentTimeMillis() + i;
    if (l % 3L == 0L) {
      localStringBuffer.append((char)(int)l % '\t');
    }
    for (;;)
    {
      i += 1;
      break;
      if (l % 3L == 1L) {
        localStringBuffer.append((char)(int)(65L + l % 26L));
      } else {
        localStringBuffer.append((char)(int)(97L + l % 26L));
      }
    }
  }
  
  private static Certificate getCertificate(String paramString)
    throws CertificateException, IOException
  {
    Object localObject1 = CertificateFactory.getInstance("X.509");
    paramString = HttpManager.class.getResourceAsStream(paramString);
    try
    {
      localObject1 = ((CertificateFactory)localObject1).generateCertificate(paramString);
      return (Certificate)localObject1;
    }
    finally
    {
      if (paramString != null) {
        paramString.close();
      }
    }
  }
  
  private static HttpClient getNewHttpClient()
  {
    try
    {
      Object localObject1 = new BasicHttpParams();
      HttpProtocolParams.setVersion((HttpParams)localObject1, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset((HttpParams)localObject1, "UTF-8");
      Object localObject2 = new SchemeRegistry();
      ((SchemeRegistry)localObject2).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      ((SchemeRegistry)localObject2).register(new Scheme("https", getSSLSocketFactory(), 443));
      localObject2 = new ThreadSafeClientConnManager((HttpParams)localObject1, (SchemeRegistry)localObject2);
      HttpConnectionParams.setConnectionTimeout((HttpParams)localObject1, 25000);
      HttpConnectionParams.setSoTimeout((HttpParams)localObject1, 20000);
      localObject1 = new DefaultHttpClient((ClientConnectionManager)localObject2, (HttpParams)localObject1);
      return (HttpClient)localObject1;
    }
    catch (Exception localException) {}
    return new DefaultHttpClient();
  }
  
  private static String getOauthSign(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    if (!TextUtils.isEmpty(paramString1)) {
      localStringBuilder.append(paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localStringBuilder.append(paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      localStringBuilder.append(paramString3);
    }
    return calcOauthSignNative(paramContext, localStringBuilder.toString(), paramString4);
  }
  
  private static SSLSocketFactory getSSLSocketFactory()
  {
    if (sSSLSocketFactory == null) {}
    try
    {
      KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localKeyStore.load(null, null);
      Certificate localCertificate1 = getCertificate("cacert_cn.cer");
      Certificate localCertificate2 = getCertificate("cacert_com.cer");
      localKeyStore.setCertificateEntry("cnca", localCertificate1);
      localKeyStore.setCertificateEntry("comca", localCertificate2);
      sSSLSocketFactory = new SSLSocketFactoryEx(localKeyStore);
      LogUtil.d("HttpManager", "getSSLSocketFactory noraml !!!!!");
      return sSSLSocketFactory;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        sSSLSocketFactory = SSLSocketFactory.getSocketFactory();
        LogUtil.d("HttpManager", "getSSLSocketFactory error default !!!!!");
      }
    }
  }
  
  private static String getTimestamp()
  {
    return String.valueOf(System.currentTimeMillis() / 1000L);
  }
  
  /* Error */
  public static String openRedirectUrl4LocationUri(Context paramContext, String paramString1, String paramString2, WeiboParameters paramWeiboParameters)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 6
    //   9: aconst_null
    //   10: astore 5
    //   12: new 8	com/sina/weibo/sdk/net/HttpManager$2
    //   15: dup
    //   16: invokespecial 541	com/sina/weibo/sdk/net/HttpManager$2:<init>	()V
    //   19: astore 8
    //   21: aload 7
    //   23: astore 4
    //   25: aload 6
    //   27: astore 5
    //   29: invokestatic 190	com/sina/weibo/sdk/net/HttpManager:getNewHttpClient	()Lorg/apache/http/client/HttpClient;
    //   32: checkcast 471	org/apache/http/impl/client/DefaultHttpClient
    //   35: astore 6
    //   37: aload 6
    //   39: astore 4
    //   41: aload 6
    //   43: astore 5
    //   45: aload 6
    //   47: aload 8
    //   49: invokevirtual 545	org/apache/http/impl/client/DefaultHttpClient:setRedirectHandler	(Lorg/apache/http/client/RedirectHandler;)V
    //   52: aload 6
    //   54: astore 4
    //   56: aload 6
    //   58: astore 5
    //   60: aload_0
    //   61: aload_3
    //   62: invokestatic 549	com/sina/weibo/sdk/net/HttpManager:setHttpCommonParam	(Landroid/content/Context;Lcom/sina/weibo/sdk/net/WeiboParameters;)V
    //   65: aconst_null
    //   66: astore 7
    //   68: aload 6
    //   70: astore 4
    //   72: aload 6
    //   74: astore 5
    //   76: aload 6
    //   78: invokevirtual 553	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   81: ldc_w 555
    //   84: invokestatic 561	com/sina/weibo/sdk/net/NetStateManager:getAPN	()Lorg/apache/http/HttpHost;
    //   87: invokeinterface 567 3 0
    //   92: pop
    //   93: aload 6
    //   95: astore 4
    //   97: aload 6
    //   99: astore 5
    //   101: aload_2
    //   102: ldc 19
    //   104: invokevirtual 571	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   107: ifeq +103 -> 210
    //   110: aload 6
    //   112: astore 4
    //   114: aload 6
    //   116: astore 5
    //   118: new 205	org/apache/http/client/methods/HttpGet
    //   121: dup
    //   122: new 51	java/lang/StringBuilder
    //   125: dup
    //   126: aload_1
    //   127: invokestatic 194	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   130: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   133: ldc_w 573
    //   136: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: aload_3
    //   140: invokevirtual 576	com/sina/weibo/sdk/net/WeiboParameters:encodeUrl	()Ljava/lang/String;
    //   143: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: invokespecial 206	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   152: astore_3
    //   153: aload 6
    //   155: astore 4
    //   157: aload 6
    //   159: astore 5
    //   161: aload_3
    //   162: ldc_w 578
    //   165: aload_0
    //   166: invokestatic 584	com/sina/weibo/sdk/utils/NetworkHelper:generateUA	(Landroid/content/Context;)Ljava/lang/String;
    //   169: invokeinterface 587 3 0
    //   174: aload 6
    //   176: astore 4
    //   178: aload 6
    //   180: astore 5
    //   182: aload 6
    //   184: aload_3
    //   185: invokevirtual 588	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   188: pop
    //   189: aload 6
    //   191: astore 4
    //   193: aload 6
    //   195: astore 5
    //   197: aload 8
    //   199: invokevirtual 593	com/sina/weibo/sdk/net/CustomRedirectHandler:getRedirectUrl	()Ljava/lang/String;
    //   202: astore_0
    //   203: aload 6
    //   205: invokestatic 597	com/sina/weibo/sdk/net/HttpManager:shutdownHttpClient	(Lorg/apache/http/client/HttpClient;)V
    //   208: aload_0
    //   209: areturn
    //   210: aload 7
    //   212: astore_3
    //   213: aload 6
    //   215: astore 4
    //   217: aload 6
    //   219: astore 5
    //   221: aload_2
    //   222: ldc 22
    //   224: invokevirtual 571	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   227: ifeq -74 -> 153
    //   230: aload 6
    //   232: astore 4
    //   234: aload 6
    //   236: astore 5
    //   238: new 599	org/apache/http/client/methods/HttpPost
    //   241: dup
    //   242: aload_1
    //   243: invokespecial 600	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   246: astore_3
    //   247: goto -94 -> 153
    //   250: astore_0
    //   251: aload 5
    //   253: astore 4
    //   255: new 74	com/sina/weibo/sdk/exception/WeiboException
    //   258: dup
    //   259: aload_0
    //   260: invokespecial 132	com/sina/weibo/sdk/exception/WeiboException:<init>	(Ljava/lang/Throwable;)V
    //   263: athrow
    //   264: astore_0
    //   265: aload 4
    //   267: invokestatic 597	com/sina/weibo/sdk/net/HttpManager:shutdownHttpClient	(Lorg/apache/http/client/HttpClient;)V
    //   270: aload_0
    //   271: athrow
    //   272: astore_0
    //   273: goto -8 -> 265
    //   276: astore_0
    //   277: aload 5
    //   279: astore 4
    //   281: goto -26 -> 255
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	284	0	paramContext	Context
    //   0	284	1	paramString1	String
    //   0	284	2	paramString2	String
    //   0	284	3	paramWeiboParameters	WeiboParameters
    //   1	279	4	localObject1	Object
    //   10	268	5	localDefaultHttpClient1	DefaultHttpClient
    //   7	228	6	localDefaultHttpClient2	DefaultHttpClient
    //   4	207	7	localObject2	Object
    //   19	179	8	local2	2
    // Exception table:
    //   from	to	target	type
    //   12	21	250	java/io/IOException
    //   12	21	264	finally
    //   255	264	264	finally
    //   29	37	272	finally
    //   45	52	272	finally
    //   60	65	272	finally
    //   76	93	272	finally
    //   101	110	272	finally
    //   118	153	272	finally
    //   161	174	272	finally
    //   182	189	272	finally
    //   197	203	272	finally
    //   221	230	272	finally
    //   238	247	272	finally
    //   29	37	276	java/io/IOException
    //   45	52	276	java/io/IOException
    //   60	65	276	java/io/IOException
    //   76	93	276	java/io/IOException
    //   101	110	276	java/io/IOException
    //   118	153	276	java/io/IOException
    //   161	174	276	java/io/IOException
    //   182	189	276	java/io/IOException
    //   197	203	276	java/io/IOException
    //   221	230	276	java/io/IOException
    //   238	247	276	java/io/IOException
  }
  
  public static String openUrl(Context paramContext, String paramString1, String paramString2, WeiboParameters paramWeiboParameters)
    throws WeiboException
  {
    paramContext = readRsponse(requestHttpExecute(paramContext, paramString1, paramString2, paramWeiboParameters));
    LogUtil.d("HttpManager", "Response : " + paramContext);
    return paramContext;
  }
  
  public static String openUrl4RdirectURL(Context paramContext, String paramString1, String paramString2, WeiboParameters paramWeiboParameters)
    throws WeiboException
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      DefaultHttpClient localDefaultHttpClient = (DefaultHttpClient)getNewHttpClient();
      localObject1 = localDefaultHttpClient;
      localObject2 = localDefaultHttpClient;
      localDefaultHttpClient.setRedirectHandler(new RedirectHandler()
      {
        public URI getLocationURI(HttpResponse paramAnonymousHttpResponse, HttpContext paramAnonymousHttpContext)
          throws ProtocolException
        {
          LogUtil.d("HttpManager", "openUrl4RdirectURL getLocationURI method");
          return null;
        }
        
        public boolean isRedirectRequested(HttpResponse paramAnonymousHttpResponse, HttpContext paramAnonymousHttpContext)
        {
          LogUtil.d("HttpManager", "openUrl4RdirectURL isRedirectRequested method");
          return false;
        }
      });
      localObject1 = localDefaultHttpClient;
      localObject2 = localDefaultHttpClient;
      setHttpCommonParam(paramContext, paramWeiboParameters);
      paramContext = null;
      localObject1 = localDefaultHttpClient;
      localObject2 = localDefaultHttpClient;
      localDefaultHttpClient.getParams().setParameter("http.route.default-proxy", NetStateManager.getAPN());
      localObject1 = localDefaultHttpClient;
      localObject2 = localDefaultHttpClient;
      if (paramString2.equals("GET"))
      {
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        paramContext = paramString1 + "?" + paramWeiboParameters.encodeUrl();
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        LogUtil.d("HttpManager", "openUrl4RdirectURL GET url : " + paramContext);
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        paramContext = new HttpGet(paramContext);
      }
      int i;
      for (;;)
      {
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        paramContext = localDefaultHttpClient.execute(paramContext);
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        i = paramContext.getStatusLine().getStatusCode();
        if ((i != 301) && (i != 302)) {
          break;
        }
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        paramContext = paramContext.getFirstHeader("Location").getValue();
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        LogUtil.d("HttpManager", "RedirectURL = " + paramContext);
        shutdownHttpClient(localDefaultHttpClient);
        return paramContext;
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        if (paramString2.equals("POST"))
        {
          localObject1 = localDefaultHttpClient;
          localObject2 = localDefaultHttpClient;
          paramContext = new HttpPost(paramString1);
          localObject1 = localDefaultHttpClient;
          localObject2 = localDefaultHttpClient;
          LogUtil.d("HttpManager", "openUrl4RdirectURL POST url : " + paramString1);
        }
      }
      if (i == 200)
      {
        localObject1 = localDefaultHttpClient;
        localObject2 = localDefaultHttpClient;
        paramContext = readRsponse(paramContext);
        shutdownHttpClient(localDefaultHttpClient);
        return paramContext;
      }
      localObject1 = localDefaultHttpClient;
      localObject2 = localDefaultHttpClient;
      throw new WeiboHttpException(readRsponse(paramContext), i);
    }
    catch (IOException paramContext)
    {
      localObject2 = localObject1;
      throw new WeiboException(paramContext);
    }
    finally
    {
      shutdownHttpClient((HttpClient)localObject2);
    }
  }
  
  /* Error */
  private static String readRsponse(HttpResponse paramHttpResponse)
    throws WeiboException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +7 -> 8
    //   4: aconst_null
    //   5: astore_0
    //   6: aload_0
    //   7: areturn
    //   8: aload_0
    //   9: invokeinterface 265 1 0
    //   14: astore 4
    //   16: aconst_null
    //   17: astore_3
    //   18: aconst_null
    //   19: astore_2
    //   20: new 141	java/io/ByteArrayOutputStream
    //   23: dup
    //   24: invokespecial 142	java/io/ByteArrayOutputStream:<init>	()V
    //   27: astore 5
    //   29: aload 4
    //   31: invokeinterface 287 1 0
    //   36: astore 4
    //   38: aload 4
    //   40: astore_2
    //   41: aload 4
    //   43: astore_3
    //   44: aload_0
    //   45: ldc_w 267
    //   48: invokeinterface 271 2 0
    //   53: astore 6
    //   55: aload 4
    //   57: astore_0
    //   58: aload 6
    //   60: ifnull +48 -> 108
    //   63: aload 4
    //   65: astore_0
    //   66: aload 4
    //   68: astore_2
    //   69: aload 4
    //   71: astore_3
    //   72: aload 6
    //   74: invokeinterface 247 1 0
    //   79: invokevirtual 274	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   82: ldc_w 276
    //   85: invokevirtual 279	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   88: iconst_m1
    //   89: if_icmple +19 -> 108
    //   92: aload 4
    //   94: astore_2
    //   95: aload 4
    //   97: astore_3
    //   98: new 281	java/util/zip/GZIPInputStream
    //   101: dup
    //   102: aload 4
    //   104: invokespecial 290	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   107: astore_0
    //   108: aload_0
    //   109: astore_2
    //   110: aload_0
    //   111: astore_3
    //   112: sipush 8192
    //   115: newarray <illegal type>
    //   117: astore 4
    //   119: aload_0
    //   120: astore_2
    //   121: aload_0
    //   122: astore_3
    //   123: aload_0
    //   124: aload 4
    //   126: invokevirtual 305	java/io/InputStream:read	([B)I
    //   129: istore_1
    //   130: iload_1
    //   131: iconst_m1
    //   132: if_icmpne +83 -> 215
    //   135: aload_0
    //   136: astore_2
    //   137: aload_0
    //   138: astore_3
    //   139: new 98	java/lang/String
    //   142: dup
    //   143: aload 5
    //   145: invokevirtual 155	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   148: ldc_w 425
    //   151: invokespecial 620	java/lang/String:<init>	([BLjava/lang/String;)V
    //   154: astore 4
    //   156: aload_0
    //   157: astore_2
    //   158: aload_0
    //   159: astore_3
    //   160: ldc 31
    //   162: new 51	java/lang/StringBuilder
    //   165: dup
    //   166: ldc_w 622
    //   169: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   172: aload 4
    //   174: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: invokestatic 525	com/sina/weibo/sdk/utils/LogUtil:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   183: aload_0
    //   184: ifnull +7 -> 191
    //   187: aload_0
    //   188: invokevirtual 307	java/io/InputStream:close	()V
    //   191: aload 4
    //   193: astore_0
    //   194: aload 5
    //   196: ifnull -190 -> 6
    //   199: aload 5
    //   201: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   204: aload 4
    //   206: areturn
    //   207: astore_0
    //   208: aload_0
    //   209: invokevirtual 337	java/io/IOException:printStackTrace	()V
    //   212: aload 4
    //   214: areturn
    //   215: aload_0
    //   216: astore_2
    //   217: aload_0
    //   218: astore_3
    //   219: aload 5
    //   221: aload 4
    //   223: iconst_0
    //   224: iload_1
    //   225: invokevirtual 623	java/io/ByteArrayOutputStream:write	([BII)V
    //   228: goto -109 -> 119
    //   231: astore_0
    //   232: aload_2
    //   233: astore_3
    //   234: new 74	com/sina/weibo/sdk/exception/WeiboException
    //   237: dup
    //   238: aload_0
    //   239: invokespecial 132	com/sina/weibo/sdk/exception/WeiboException:<init>	(Ljava/lang/Throwable;)V
    //   242: athrow
    //   243: astore_0
    //   244: aload_3
    //   245: ifnull +7 -> 252
    //   248: aload_3
    //   249: invokevirtual 307	java/io/InputStream:close	()V
    //   252: aload 5
    //   254: ifnull +8 -> 262
    //   257: aload 5
    //   259: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   262: aload_0
    //   263: athrow
    //   264: astore_0
    //   265: aload_0
    //   266: invokevirtual 337	java/io/IOException:printStackTrace	()V
    //   269: goto -78 -> 191
    //   272: astore_2
    //   273: aload_2
    //   274: invokevirtual 337	java/io/IOException:printStackTrace	()V
    //   277: goto -25 -> 252
    //   280: astore_2
    //   281: aload_2
    //   282: invokevirtual 337	java/io/IOException:printStackTrace	()V
    //   285: goto -23 -> 262
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	288	0	paramHttpResponse	HttpResponse
    //   129	96	1	i	int
    //   19	214	2	localObject1	Object
    //   272	2	2	localIOException1	IOException
    //   280	2	2	localIOException2	IOException
    //   17	232	3	localObject2	Object
    //   14	208	4	localObject3	Object
    //   27	231	5	localByteArrayOutputStream	ByteArrayOutputStream
    //   53	20	6	localHeader	Header
    // Exception table:
    //   from	to	target	type
    //   199	204	207	java/io/IOException
    //   29	38	231	java/io/IOException
    //   44	55	231	java/io/IOException
    //   72	92	231	java/io/IOException
    //   98	108	231	java/io/IOException
    //   112	119	231	java/io/IOException
    //   123	130	231	java/io/IOException
    //   139	156	231	java/io/IOException
    //   160	183	231	java/io/IOException
    //   219	228	231	java/io/IOException
    //   29	38	243	finally
    //   44	55	243	finally
    //   72	92	243	finally
    //   98	108	243	finally
    //   112	119	243	finally
    //   123	130	243	finally
    //   139	156	243	finally
    //   160	183	243	finally
    //   219	228	243	finally
    //   234	243	243	finally
    //   187	191	264	java/io/IOException
    //   248	252	272	java/io/IOException
    //   257	262	280	java/io/IOException
  }
  
  /* Error */
  private static HttpResponse requestHttpExecute(Context paramContext, String paramString1, String paramString2, WeiboParameters paramWeiboParameters)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 9
    //   6: aconst_null
    //   7: astore 10
    //   9: aconst_null
    //   10: astore 11
    //   12: aconst_null
    //   13: astore 12
    //   15: aload 10
    //   17: astore 8
    //   19: aload 11
    //   21: astore 6
    //   23: invokestatic 190	com/sina/weibo/sdk/net/HttpManager:getNewHttpClient	()Lorg/apache/http/client/HttpClient;
    //   26: astore 5
    //   28: aload 10
    //   30: astore 8
    //   32: aload 5
    //   34: astore 9
    //   36: aload 11
    //   38: astore 6
    //   40: aload 5
    //   42: astore 7
    //   44: aload 5
    //   46: invokeinterface 624 1 0
    //   51: ldc_w 555
    //   54: invokestatic 561	com/sina/weibo/sdk/net/NetStateManager:getAPN	()Lorg/apache/http/HttpHost;
    //   57: invokeinterface 567 3 0
    //   62: pop
    //   63: aconst_null
    //   64: astore 13
    //   66: aload 10
    //   68: astore 8
    //   70: aload 5
    //   72: astore 9
    //   74: aload 11
    //   76: astore 6
    //   78: aload 5
    //   80: astore 7
    //   82: aload_0
    //   83: aload_3
    //   84: invokestatic 549	com/sina/weibo/sdk/net/HttpManager:setHttpCommonParam	(Landroid/content/Context;Lcom/sina/weibo/sdk/net/WeiboParameters;)V
    //   87: aload 10
    //   89: astore 8
    //   91: aload 5
    //   93: astore 9
    //   95: aload 11
    //   97: astore 6
    //   99: aload 5
    //   101: astore 7
    //   103: aload_2
    //   104: ldc 19
    //   106: invokevirtual 571	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   109: ifeq +243 -> 352
    //   112: aload 10
    //   114: astore 8
    //   116: aload 5
    //   118: astore 9
    //   120: aload 11
    //   122: astore 6
    //   124: aload 5
    //   126: astore 7
    //   128: new 51	java/lang/StringBuilder
    //   131: dup
    //   132: aload_1
    //   133: invokestatic 194	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   136: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: ldc_w 573
    //   142: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_3
    //   146: invokevirtual 576	com/sina/weibo/sdk/net/WeiboParameters:encodeUrl	()Ljava/lang/String;
    //   149: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: astore_0
    //   156: aload 10
    //   158: astore 8
    //   160: aload 5
    //   162: astore 9
    //   164: aload 11
    //   166: astore 6
    //   168: aload 5
    //   170: astore 7
    //   172: new 205	org/apache/http/client/methods/HttpGet
    //   175: dup
    //   176: aload_0
    //   177: invokespecial 206	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   180: astore_3
    //   181: aload 10
    //   183: astore 8
    //   185: aload 5
    //   187: astore 9
    //   189: aload 11
    //   191: astore 6
    //   193: aload 5
    //   195: astore 7
    //   197: ldc 31
    //   199: new 51	java/lang/StringBuilder
    //   202: dup
    //   203: ldc_w 626
    //   206: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   209: aload_0
    //   210: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 525	com/sina/weibo/sdk/utils/LogUtil:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   219: aload 12
    //   221: astore_0
    //   222: aload_0
    //   223: astore 8
    //   225: aload 5
    //   227: astore 9
    //   229: aload_0
    //   230: astore 6
    //   232: aload 5
    //   234: astore 7
    //   236: aload 5
    //   238: aload_3
    //   239: invokeinterface 224 2 0
    //   244: astore_1
    //   245: aload_0
    //   246: astore 8
    //   248: aload 5
    //   250: astore 9
    //   252: aload_0
    //   253: astore 6
    //   255: aload 5
    //   257: astore 7
    //   259: aload_1
    //   260: invokeinterface 230 1 0
    //   265: invokeinterface 236 1 0
    //   270: istore 4
    //   272: iload 4
    //   274: sipush 200
    //   277: if_icmpeq +414 -> 691
    //   280: aload_0
    //   281: astore 8
    //   283: aload 5
    //   285: astore 9
    //   287: aload_0
    //   288: astore 6
    //   290: aload 5
    //   292: astore 7
    //   294: new 349	com/sina/weibo/sdk/exception/WeiboHttpException
    //   297: dup
    //   298: aload_1
    //   299: invokestatic 353	com/sina/weibo/sdk/net/HttpManager:readRsponse	(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    //   302: iload 4
    //   304: invokespecial 356	com/sina/weibo/sdk/exception/WeiboHttpException:<init>	(Ljava/lang/String;I)V
    //   307: athrow
    //   308: astore_0
    //   309: aload 9
    //   311: astore 5
    //   313: aload 8
    //   315: astore 6
    //   317: aload 5
    //   319: astore 7
    //   321: new 74	com/sina/weibo/sdk/exception/WeiboException
    //   324: dup
    //   325: aload_0
    //   326: invokespecial 132	com/sina/weibo/sdk/exception/WeiboException:<init>	(Ljava/lang/Throwable;)V
    //   329: athrow
    //   330: astore_0
    //   331: aload 7
    //   333: astore 5
    //   335: aload 6
    //   337: ifnull +8 -> 345
    //   340: aload 6
    //   342: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   345: aload 5
    //   347: invokestatic 597	com/sina/weibo/sdk/net/HttpManager:shutdownHttpClient	(Lorg/apache/http/client/HttpClient;)V
    //   350: aload_0
    //   351: athrow
    //   352: aload 10
    //   354: astore 8
    //   356: aload 5
    //   358: astore 9
    //   360: aload 11
    //   362: astore 6
    //   364: aload 5
    //   366: astore 7
    //   368: aload_2
    //   369: ldc 22
    //   371: invokevirtual 571	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   374: ifeq +254 -> 628
    //   377: aload 10
    //   379: astore 8
    //   381: aload 5
    //   383: astore 9
    //   385: aload 11
    //   387: astore 6
    //   389: aload 5
    //   391: astore 7
    //   393: ldc 31
    //   395: new 51	java/lang/StringBuilder
    //   398: dup
    //   399: ldc_w 628
    //   402: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   405: aload_1
    //   406: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   412: invokestatic 525	com/sina/weibo/sdk/utils/LogUtil:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   415: aload 10
    //   417: astore 8
    //   419: aload 5
    //   421: astore 9
    //   423: aload 11
    //   425: astore 6
    //   427: aload 5
    //   429: astore 7
    //   431: new 599	org/apache/http/client/methods/HttpPost
    //   434: dup
    //   435: aload_1
    //   436: invokespecial 600	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   439: astore_2
    //   440: aload_2
    //   441: astore_1
    //   442: aload 10
    //   444: astore 8
    //   446: aload 5
    //   448: astore 9
    //   450: aload 11
    //   452: astore 6
    //   454: aload 5
    //   456: astore 7
    //   458: new 141	java/io/ByteArrayOutputStream
    //   461: dup
    //   462: invokespecial 142	java/io/ByteArrayOutputStream:<init>	()V
    //   465: astore_0
    //   466: aload_3
    //   467: invokevirtual 631	com/sina/weibo/sdk/net/WeiboParameters:hasBinaryData	()Z
    //   470: ifeq +54 -> 524
    //   473: aload_2
    //   474: ldc_w 633
    //   477: new 51	java/lang/StringBuilder
    //   480: dup
    //   481: ldc_w 635
    //   484: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   487: getstatic 49	com/sina/weibo/sdk/net/HttpManager:BOUNDARY	Ljava/lang/String;
    //   490: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   493: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   496: invokevirtual 636	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   499: aload_0
    //   500: aload_3
    //   501: invokestatic 638	com/sina/weibo/sdk/net/HttpManager:buildParams	(Ljava/io/OutputStream;Lcom/sina/weibo/sdk/net/WeiboParameters;)V
    //   504: aload_2
    //   505: new 640	org/apache/http/entity/ByteArrayEntity
    //   508: dup
    //   509: aload_0
    //   510: invokevirtual 155	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   513: invokespecial 642	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   516: invokevirtual 646	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   519: aload_1
    //   520: astore_3
    //   521: goto -299 -> 222
    //   524: aload_3
    //   525: ldc_w 648
    //   528: invokevirtual 116	com/sina/weibo/sdk/net/WeiboParameters:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   531: astore 6
    //   533: aload 6
    //   535: ifnull +71 -> 606
    //   538: aload 6
    //   540: instanceof 98
    //   543: ifeq +63 -> 606
    //   546: aload_3
    //   547: ldc_w 648
    //   550: invokevirtual 651	com/sina/weibo/sdk/net/WeiboParameters:remove	(Ljava/lang/String;)V
    //   553: aload_2
    //   554: ldc_w 633
    //   557: aload 6
    //   559: checkcast 98	java/lang/String
    //   562: invokevirtual 636	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   565: aload_3
    //   566: invokevirtual 576	com/sina/weibo/sdk/net/WeiboParameters:encodeUrl	()Ljava/lang/String;
    //   569: astore_3
    //   570: ldc 31
    //   572: new 51	java/lang/StringBuilder
    //   575: dup
    //   576: ldc_w 653
    //   579: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   582: aload_3
    //   583: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   589: invokestatic 525	com/sina/weibo/sdk/utils/LogUtil:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   592: aload_0
    //   593: aload_3
    //   594: ldc_w 425
    //   597: invokevirtual 656	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   600: invokevirtual 657	java/io/ByteArrayOutputStream:write	([B)V
    //   603: goto -99 -> 504
    //   606: aload_2
    //   607: ldc_w 633
    //   610: ldc_w 659
    //   613: invokevirtual 636	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   616: goto -51 -> 565
    //   619: astore_1
    //   620: aload_0
    //   621: astore 6
    //   623: aload_1
    //   624: astore_0
    //   625: goto -290 -> 335
    //   628: aload 12
    //   630: astore_0
    //   631: aload 13
    //   633: astore_3
    //   634: aload 10
    //   636: astore 8
    //   638: aload 5
    //   640: astore 9
    //   642: aload 11
    //   644: astore 6
    //   646: aload 5
    //   648: astore 7
    //   650: aload_2
    //   651: ldc_w 661
    //   654: invokevirtual 571	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   657: ifeq -435 -> 222
    //   660: aload 10
    //   662: astore 8
    //   664: aload 5
    //   666: astore 9
    //   668: aload 11
    //   670: astore 6
    //   672: aload 5
    //   674: astore 7
    //   676: new 663	org/apache/http/client/methods/HttpDelete
    //   679: dup
    //   680: aload_1
    //   681: invokespecial 664	org/apache/http/client/methods/HttpDelete:<init>	(Ljava/lang/String;)V
    //   684: astore_3
    //   685: aload 12
    //   687: astore_0
    //   688: goto -466 -> 222
    //   691: aload_0
    //   692: ifnull +7 -> 699
    //   695: aload_0
    //   696: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   699: aload 5
    //   701: invokestatic 597	com/sina/weibo/sdk/net/HttpManager:shutdownHttpClient	(Lorg/apache/http/client/HttpClient;)V
    //   704: aload_1
    //   705: areturn
    //   706: astore_1
    //   707: goto -362 -> 345
    //   710: astore_0
    //   711: goto -12 -> 699
    //   714: astore_1
    //   715: aload_0
    //   716: astore 6
    //   718: aload_1
    //   719: astore_0
    //   720: goto -403 -> 317
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	723	0	paramContext	Context
    //   0	723	1	paramString1	String
    //   0	723	2	paramString2	String
    //   0	723	3	paramWeiboParameters	WeiboParameters
    //   270	33	4	i	int
    //   26	674	5	localObject1	Object
    //   21	696	6	localObject2	Object
    //   1	674	7	localObject3	Object
    //   17	646	8	localObject4	Object
    //   4	663	9	localObject5	Object
    //   7	654	10	localObject6	Object
    //   10	659	11	localObject7	Object
    //   13	673	12	localObject8	Object
    //   64	568	13	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   23	28	308	java/io/IOException
    //   44	63	308	java/io/IOException
    //   82	87	308	java/io/IOException
    //   103	112	308	java/io/IOException
    //   128	156	308	java/io/IOException
    //   172	181	308	java/io/IOException
    //   197	219	308	java/io/IOException
    //   236	245	308	java/io/IOException
    //   259	272	308	java/io/IOException
    //   294	308	308	java/io/IOException
    //   368	377	308	java/io/IOException
    //   393	415	308	java/io/IOException
    //   431	440	308	java/io/IOException
    //   458	466	308	java/io/IOException
    //   650	660	308	java/io/IOException
    //   676	685	308	java/io/IOException
    //   23	28	330	finally
    //   44	63	330	finally
    //   82	87	330	finally
    //   103	112	330	finally
    //   128	156	330	finally
    //   172	181	330	finally
    //   197	219	330	finally
    //   236	245	330	finally
    //   259	272	330	finally
    //   294	308	330	finally
    //   321	330	330	finally
    //   368	377	330	finally
    //   393	415	330	finally
    //   431	440	330	finally
    //   458	466	330	finally
    //   650	660	330	finally
    //   676	685	330	finally
    //   466	504	619	finally
    //   504	519	619	finally
    //   524	533	619	finally
    //   538	565	619	finally
    //   565	603	619	finally
    //   606	616	619	finally
    //   340	345	706	java/io/IOException
    //   695	699	710	java/io/IOException
    //   466	504	714	java/io/IOException
    //   504	519	714	java/io/IOException
    //   524	533	714	java/io/IOException
    //   538	565	714	java/io/IOException
    //   565	603	714	java/io/IOException
    //   606	616	714	java/io/IOException
  }
  
  private static void setHttpCommonParam(Context paramContext, WeiboParameters paramWeiboParameters)
  {
    Object localObject2 = "";
    if (!TextUtils.isEmpty(paramWeiboParameters.getAppKey()))
    {
      localObject1 = Utility.getAid(paramContext, paramWeiboParameters.getAppKey());
      localObject2 = localObject1;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        paramWeiboParameters.put("aid", (String)localObject1);
        localObject2 = localObject1;
      }
    }
    String str2 = getTimestamp();
    paramWeiboParameters.put("oauth_timestamp", str2);
    String str1 = "";
    Object localObject1 = paramWeiboParameters.get("access_token");
    Object localObject4 = paramWeiboParameters.get("refresh_token");
    Object localObject3 = paramWeiboParameters.get("phone");
    if ((localObject1 != null) && ((localObject1 instanceof String))) {
      localObject1 = (String)localObject1;
    }
    for (;;)
    {
      paramWeiboParameters.put("oauth_sign", getOauthSign(paramContext, (String)localObject2, (String)localObject1, paramWeiboParameters.getAppKey(), str2));
      return;
      if ((localObject4 != null) && ((localObject4 instanceof String)))
      {
        localObject1 = (String)localObject4;
      }
      else
      {
        localObject1 = str1;
        if (localObject3 != null)
        {
          localObject1 = str1;
          if ((localObject3 instanceof String)) {
            localObject1 = (String)localObject3;
          }
        }
      }
    }
  }
  
  private static void shutdownHttpClient(HttpClient paramHttpClient)
  {
    if (paramHttpClient != null) {}
    try
    {
      paramHttpClient.getConnectionManager().closeExpiredConnections();
      return;
    }
    catch (Exception paramHttpClient) {}
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/net/HttpManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */