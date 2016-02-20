package com.alipay.sdk.net;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.data.InteractionData;
import com.alipay.sdk.exception.NetErrorException;
import org.apache.http.HttpResponse;

public class RequestUtils
{
  private static MspClient a;
  
  /* Error */
  public static String a(HttpResponse paramHttpResponse)
    throws NetErrorException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface 22 1 0
    //   6: astore_2
    //   7: aload_2
    //   8: invokeinterface 28 1 0
    //   13: istore_1
    //   14: aload_0
    //   15: invokeinterface 32 1 0
    //   20: astore 4
    //   22: aconst_null
    //   23: astore_0
    //   24: aload 4
    //   26: invokeinterface 38 1 0
    //   31: astore_3
    //   32: aload_3
    //   33: astore_0
    //   34: aload_2
    //   35: invokeinterface 28 1 0
    //   40: sipush 200
    //   43: if_icmpne +7 -> 50
    //   46: aload_3
    //   47: ifnonnull +61 -> 108
    //   50: aload_3
    //   51: astore_0
    //   52: new 14	com/alipay/sdk/exception/NetErrorException
    //   55: dup
    //   56: new 40	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   63: iload_1
    //   64: invokevirtual 45	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   67: ldc 47
    //   69: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: aload_2
    //   73: invokeinterface 54 1 0
    //   78: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokespecial 60	com/alipay/sdk/exception/NetErrorException:<init>	(Ljava/lang/String;)V
    //   87: athrow
    //   88: astore_2
    //   89: aload_0
    //   90: astore_3
    //   91: new 14	com/alipay/sdk/exception/NetErrorException
    //   94: dup
    //   95: invokespecial 61	com/alipay/sdk/exception/NetErrorException:<init>	()V
    //   98: athrow
    //   99: astore_0
    //   100: aload_3
    //   101: astore_2
    //   102: aload_2
    //   103: invokevirtual 66	java/io/InputStream:close	()V
    //   106: aload_0
    //   107: athrow
    //   108: aload_3
    //   109: astore_0
    //   110: aload 4
    //   112: invokeinterface 70 1 0
    //   117: astore 5
    //   119: aload_3
    //   120: astore_2
    //   121: aload 5
    //   123: ifnull +33 -> 156
    //   126: aload_3
    //   127: astore_0
    //   128: aload_3
    //   129: astore_2
    //   130: aload 5
    //   132: invokeinterface 75 1 0
    //   137: ldc 77
    //   139: invokevirtual 83	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   142: ifeq +14 -> 156
    //   145: aload_3
    //   146: astore_0
    //   147: new 85	java/util/zip/GZIPInputStream
    //   150: dup
    //   151: aload_3
    //   152: invokespecial 88	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   155: astore_2
    //   156: aload_2
    //   157: astore_0
    //   158: aload_2
    //   159: astore_3
    //   160: aload 4
    //   162: invokeinterface 92 1 0
    //   167: l2i
    //   168: istore_1
    //   169: iload_1
    //   170: ifge +143 -> 313
    //   173: sipush 4096
    //   176: istore_1
    //   177: aload_2
    //   178: astore_0
    //   179: aload_2
    //   180: astore_3
    //   181: aload 4
    //   183: invokestatic 98	org/apache/http/util/EntityUtils:getContentCharSet	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   186: astore 5
    //   188: aload 5
    //   190: astore 4
    //   192: aload 5
    //   194: ifnonnull +7 -> 201
    //   197: ldc 100
    //   199: astore 4
    //   201: aload_2
    //   202: astore_0
    //   203: aload_2
    //   204: astore_3
    //   205: new 102	java/io/InputStreamReader
    //   208: dup
    //   209: aload_2
    //   210: aload 4
    //   212: invokespecial 105	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   215: astore 4
    //   217: aload_2
    //   218: astore_0
    //   219: aload_2
    //   220: astore_3
    //   221: new 107	org/apache/http/util/CharArrayBuffer
    //   224: dup
    //   225: iload_1
    //   226: invokespecial 110	org/apache/http/util/CharArrayBuffer:<init>	(I)V
    //   229: astore 5
    //   231: aload_2
    //   232: astore_0
    //   233: aload_2
    //   234: astore_3
    //   235: sipush 1024
    //   238: newarray <illegal type>
    //   240: astore 6
    //   242: aload_2
    //   243: astore_0
    //   244: aload_2
    //   245: astore_3
    //   246: aload 4
    //   248: aload 6
    //   250: invokevirtual 116	java/io/Reader:read	([C)I
    //   253: istore_1
    //   254: iload_1
    //   255: iconst_m1
    //   256: if_icmpeq +19 -> 275
    //   259: aload_2
    //   260: astore_0
    //   261: aload_2
    //   262: astore_3
    //   263: aload 5
    //   265: aload 6
    //   267: iconst_0
    //   268: iload_1
    //   269: invokevirtual 119	org/apache/http/util/CharArrayBuffer:append	([CII)V
    //   272: goto -30 -> 242
    //   275: aload_2
    //   276: astore_0
    //   277: aload_2
    //   278: astore_3
    //   279: aload 5
    //   281: invokevirtual 120	org/apache/http/util/CharArrayBuffer:toString	()Ljava/lang/String;
    //   284: astore 4
    //   286: aload_2
    //   287: invokevirtual 66	java/io/InputStream:close	()V
    //   290: aload 4
    //   292: areturn
    //   293: astore_0
    //   294: aload 4
    //   296: areturn
    //   297: astore_2
    //   298: goto -192 -> 106
    //   301: astore_0
    //   302: aconst_null
    //   303: astore_2
    //   304: goto -202 -> 102
    //   307: astore_0
    //   308: aload_3
    //   309: astore_2
    //   310: goto -208 -> 102
    //   313: goto -136 -> 177
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	316	0	paramHttpResponse	HttpResponse
    //   13	256	1	i	int
    //   6	67	2	localStatusLine	org.apache.http.StatusLine
    //   88	1	2	localException1	Exception
    //   101	186	2	localObject1	Object
    //   297	1	2	localException2	Exception
    //   303	7	2	localObject2	Object
    //   31	278	3	localObject3	Object
    //   20	275	4	localObject4	Object
    //   117	163	5	localObject5	Object
    //   240	26	6	arrayOfChar	char[]
    // Exception table:
    //   from	to	target	type
    //   24	32	88	java/lang/Exception
    //   34	46	88	java/lang/Exception
    //   52	88	88	java/lang/Exception
    //   110	119	88	java/lang/Exception
    //   130	145	88	java/lang/Exception
    //   147	156	88	java/lang/Exception
    //   160	169	88	java/lang/Exception
    //   181	188	88	java/lang/Exception
    //   205	217	88	java/lang/Exception
    //   221	231	88	java/lang/Exception
    //   235	242	88	java/lang/Exception
    //   246	254	88	java/lang/Exception
    //   263	272	88	java/lang/Exception
    //   279	286	88	java/lang/Exception
    //   91	99	99	finally
    //   160	169	99	finally
    //   181	188	99	finally
    //   205	217	99	finally
    //   221	231	99	finally
    //   235	242	99	finally
    //   246	254	99	finally
    //   263	272	99	finally
    //   279	286	99	finally
    //   286	290	293	java/lang/Exception
    //   102	106	297	java/lang/Exception
    //   24	32	301	finally
    //   34	46	307	finally
    //   52	88	307	finally
    //   110	119	307	finally
    //   130	145	307	finally
    //   147	156	307	finally
  }
  
  public static HttpResponse a(Context paramContext, String paramString1, String paramString2, InteractionData paramInteractionData)
    throws NetErrorException
  {
    if (a == null) {
      a = new MspClient(paramContext, paramString1);
    }
    while (paramInteractionData != null)
    {
      return a.a(paramString2, paramInteractionData);
      if (!TextUtils.equals(paramString1, a.a())) {
        a.a(paramString1);
      }
    }
    return a.b(paramString2);
  }
  
  public static void a()
  {
    a = null;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/net/RequestUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */