package cn.apppark.vertify.network.request;

import cn.apppark.ckj10185912.HQCHApplication;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;

public class MyHttpRequest
{
  public static String NO_DATA = "000";
  public static String WEB_ERROR = "404";
  
  /* Error */
  public static String doPost(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 27	java/net/URL
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 30	java/net/URL:<init>	(Ljava/lang/String;)V
    //   8: invokevirtual 34	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   11: checkcast 36	java/net/HttpURLConnection
    //   14: astore_3
    //   15: aload_3
    //   16: ldc 38
    //   18: invokevirtual 41	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   21: aload_3
    //   22: ldc 43
    //   24: ldc 45
    //   26: invokevirtual 49	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   29: aload_3
    //   30: iconst_1
    //   31: invokevirtual 53	java/net/HttpURLConnection:setDoInput	(Z)V
    //   34: aload_3
    //   35: iconst_1
    //   36: invokevirtual 56	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   39: new 58	java/lang/StringBuffer
    //   42: dup
    //   43: invokespecial 59	java/lang/StringBuffer:<init>	()V
    //   46: astore 4
    //   48: aload 4
    //   50: aload_1
    //   51: invokevirtual 63	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   54: pop
    //   55: aload_3
    //   56: ldc 65
    //   58: aload 4
    //   60: invokevirtual 69	java/lang/StringBuffer:length	()I
    //   63: invokestatic 75	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   66: invokevirtual 49	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   69: new 77	java/io/OutputStreamWriter
    //   72: dup
    //   73: aload_3
    //   74: invokevirtual 81	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   77: ldc 83
    //   79: invokespecial 86	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   82: astore_1
    //   83: aload_1
    //   84: aload 4
    //   86: invokevirtual 90	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   89: invokevirtual 93	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   92: aload_1
    //   93: invokevirtual 96	java/io/OutputStreamWriter:flush	()V
    //   96: aload_1
    //   97: invokevirtual 99	java/io/OutputStreamWriter:close	()V
    //   100: aload_3
    //   101: invokevirtual 102	java/net/HttpURLConnection:connect	()V
    //   104: new 104	java/io/BufferedInputStream
    //   107: dup
    //   108: aload_3
    //   109: invokevirtual 108	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   112: invokespecial 111	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   115: astore 4
    //   117: sipush 1024
    //   120: newarray <illegal type>
    //   122: astore 5
    //   124: ldc 113
    //   126: astore_1
    //   127: aload 4
    //   129: aload 5
    //   131: invokevirtual 117	java/io/BufferedInputStream:read	([B)I
    //   134: istore_2
    //   135: aload_1
    //   136: astore_3
    //   137: iload_2
    //   138: ifle +51 -> 189
    //   141: new 119	java/lang/StringBuilder
    //   144: dup
    //   145: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   148: aload_1
    //   149: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: new 71	java/lang/String
    //   155: dup
    //   156: aload 5
    //   158: iconst_0
    //   159: iload_2
    //   160: invokespecial 126	java/lang/String:<init>	([BII)V
    //   163: ldc 83
    //   165: invokestatic 131	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   168: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: astore_3
    //   175: aload_3
    //   176: astore_1
    //   177: goto -50 -> 127
    //   180: astore_3
    //   181: aconst_null
    //   182: astore_1
    //   183: aload_3
    //   184: invokevirtual 135	java/lang/Exception:printStackTrace	()V
    //   187: aload_1
    //   188: astore_3
    //   189: getstatic 141	cn/apppark/ckj10185912/HQCHApplication:DEBUG	Z
    //   192: ifeq +47 -> 239
    //   195: getstatic 147	java/lang/System:out	Ljava/io/PrintStream;
    //   198: new 119	java/lang/StringBuilder
    //   201: dup
    //   202: ldc -107
    //   204: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: aload_0
    //   208: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: invokevirtual 155	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   217: getstatic 147	java/lang/System:out	Ljava/io/PrintStream;
    //   220: new 119	java/lang/StringBuilder
    //   223: dup
    //   224: ldc -99
    //   226: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   229: aload_3
    //   230: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   236: invokevirtual 155	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   239: aload_3
    //   240: areturn
    //   241: astore_3
    //   242: goto -59 -> 183
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	245	0	paramString1	String
    //   0	245	1	paramString2	String
    //   134	26	2	i	int
    //   14	162	3	localObject1	Object
    //   180	4	3	localException1	Exception
    //   188	52	3	str	String
    //   241	1	3	localException2	Exception
    //   46	82	4	localObject2	Object
    //   122	35	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   0	124	180	java/lang/Exception
    //   127	135	241	java/lang/Exception
    //   141	175	241	java/lang/Exception
  }
  
  public static String doPostFile(String paramString, Map<String, String> paramMap, Map<String, File> paramMap1)
  {
    String str;
    HttpURLConnection localHttpURLConnection;
    Object localObject;
    try
    {
      str = UUID.randomUUID().toString();
      localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
      localHttpURLConnection.setReadTimeout(5000);
      localHttpURLConnection.setDoInput(true);
      localHttpURLConnection.setDoOutput(true);
      localHttpURLConnection.setUseCaches(false);
      localHttpURLConnection.setRequestMethod("POST");
      localHttpURLConnection.setRequestProperty("connection", "keep-alive");
      localHttpURLConnection.setRequestProperty("Charsert", "UTF-8");
      localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data" + ";boundary=" + str);
      if (HQCHApplication.DEBUG) {
        System.out.println("---actionUrl---" + paramString);
      }
      paramString = new StringBuilder();
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        localObject = (Map.Entry)paramMap.next();
        paramString.append("--");
        paramString.append(str);
        paramString.append("\r\n");
        paramString.append("Content-Disposition: form-data; name=\"" + (String)((Map.Entry)localObject).getKey() + "\"" + "\r\n");
        paramString.append("Content-Type: text/plain; charset=" + "UTF-8" + "\r\n");
        paramString.append("Content-Transfer-Encoding: 8bit" + "\r\n");
        paramString.append("\r\n");
        paramString.append((String)((Map.Entry)localObject).getValue());
        paramString.append("\r\n");
        if (HQCHApplication.DEBUG) {
          System.out.println("---" + (String)((Map.Entry)localObject).getKey() + "---" + (String)((Map.Entry)localObject).getValue());
        }
      }
      paramMap = new DataOutputStream(localHttpURLConnection.getOutputStream());
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      return WEB_ERROR;
    }
    paramMap.write(paramString.toString().getBytes());
    if (paramMap1 != null)
    {
      paramString = paramMap1.entrySet().iterator();
      while (paramString.hasNext())
      {
        paramMap1 = (Map.Entry)paramString.next();
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("--");
        ((StringBuilder)localObject).append(str);
        ((StringBuilder)localObject).append("\r\n");
        ((StringBuilder)localObject).append("Content-Disposition: form-data; name=\"file\"; filename=\"" + (String)paramMap1.getKey() + "\"" + "\r\n");
        ((StringBuilder)localObject).append("Content-Type: application/octet-stream; charset=" + "UTF-8" + "\r\n");
        ((StringBuilder)localObject).append("\r\n");
        paramMap.write(((StringBuilder)localObject).toString().getBytes());
        paramMap1 = new FileInputStream((File)paramMap1.getValue());
        localObject = new byte['Ѐ'];
        for (;;)
        {
          i = paramMap1.read((byte[])localObject);
          if (i == -1) {
            break;
          }
          paramMap.write((byte[])localObject, 0, i);
        }
        paramMap1.close();
        paramMap.write("\r\n".getBytes());
      }
    }
    paramMap.write(("--" + str + "--" + "\r\n").getBytes());
    paramMap.flush();
    int i = localHttpURLConnection.getResponseCode();
    paramString = localHttpURLConnection.getInputStream();
    if (i == 200)
    {
      paramMap1 = new StringBuilder();
      for (;;)
      {
        i = paramString.read();
        if (i == -1) {
          break;
        }
        paramMap1.append((char)i);
      }
    }
    for (paramString = paramMap1.toString();; paramString = null)
    {
      paramMap.close();
      localHttpURLConnection.disconnect();
      paramString = new String(paramString.getBytes("ISO-8859-1"), "utf-8");
      return paramString;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/request/MyHttpRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */