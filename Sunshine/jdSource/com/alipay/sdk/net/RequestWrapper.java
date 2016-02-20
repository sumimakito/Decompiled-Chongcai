package com.alipay.sdk.net;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.data.Envelope;
import com.alipay.sdk.data.FrameUtils;
import com.alipay.sdk.data.InteractionData;
import com.alipay.sdk.data.MspConfig;
import com.alipay.sdk.data.Request;
import com.alipay.sdk.data.Response;
import com.alipay.sdk.encrypt.Base64;
import com.alipay.sdk.encrypt.MD5;
import com.alipay.sdk.encrypt.TriDes;
import com.alipay.sdk.exception.AppErrorException;
import com.alipay.sdk.exception.FailOperatingException;
import com.alipay.sdk.exception.NetErrorException;
import com.alipay.sdk.exception.UnZipException;
import com.alipay.sdk.protocol.FrameData;
import com.alipay.sdk.protocol.FrameFactoryManager;
import com.alipay.sdk.sys.GlobalContext;
import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestWrapper
{
  private int a = 0;
  private InteractionData b;
  
  public RequestWrapper() {}
  
  public RequestWrapper(InteractionData paramInteractionData)
  {
    this.b = paramInteractionData;
  }
  
  private String a(Context paramContext, String paramString1, String paramString2, InteractionData paramInteractionData, Response paramResponse)
    throws NetErrorException
  {
    try
    {
      paramContext = RequestUtils.a(paramContext, paramString1, paramString2, paramInteractionData);
      paramString1 = paramContext.getStatusLine();
      paramResponse.a(paramString1.getStatusCode());
      paramResponse.a(paramString1.getReasonPhrase());
      FrameUtils.a(this.b, paramContext);
      paramContext = RequestUtils.a(paramContext);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      throw new NetErrorException();
    }
    finally
    {
      RequestUtils.a();
    }
  }
  
  /* Error */
  private static String a(String paramString)
  {
    // Byte code:
    //   0: new 69	java/io/FileInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 71	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aload_2
    //   10: astore_0
    //   11: new 73	java/io/BufferedReader
    //   14: dup
    //   15: new 75	java/io/InputStreamReader
    //   18: dup
    //   19: aload_2
    //   20: invokespecial 78	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   23: invokespecial 81	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   26: astore_3
    //   27: aload_2
    //   28: astore_0
    //   29: sipush 2048
    //   32: newarray <illegal type>
    //   34: astore 4
    //   36: aload_2
    //   37: astore_0
    //   38: new 83	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   45: astore 5
    //   47: aload_2
    //   48: astore_0
    //   49: aload_3
    //   50: aload 4
    //   52: invokevirtual 88	java/io/BufferedReader:read	([C)I
    //   55: istore_1
    //   56: iload_1
    //   57: ifle +35 -> 92
    //   60: aload_2
    //   61: astore_0
    //   62: aload 5
    //   64: aload 4
    //   66: iconst_0
    //   67: iload_1
    //   68: invokevirtual 92	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: goto -25 -> 47
    //   75: astore_3
    //   76: aload_2
    //   77: astore_0
    //   78: aload_3
    //   79: invokevirtual 95	java/lang/Exception:printStackTrace	()V
    //   82: aload_2
    //   83: ifnull +7 -> 90
    //   86: aload_2
    //   87: invokevirtual 100	java/io/InputStream:close	()V
    //   90: aconst_null
    //   91: areturn
    //   92: aload_2
    //   93: astore_0
    //   94: aload_3
    //   95: invokevirtual 101	java/io/BufferedReader:close	()V
    //   98: aload_2
    //   99: astore_0
    //   100: aload 5
    //   102: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: astore_3
    //   106: aload_2
    //   107: invokevirtual 100	java/io/InputStream:close	()V
    //   110: aload_3
    //   111: areturn
    //   112: astore_0
    //   113: aload_0
    //   114: invokevirtual 105	java/io/IOException:printStackTrace	()V
    //   117: aload_3
    //   118: areturn
    //   119: astore_0
    //   120: aload_0
    //   121: invokevirtual 105	java/io/IOException:printStackTrace	()V
    //   124: aconst_null
    //   125: areturn
    //   126: astore_2
    //   127: aconst_null
    //   128: astore_0
    //   129: aload_0
    //   130: ifnull +7 -> 137
    //   133: aload_0
    //   134: invokevirtual 100	java/io/InputStream:close	()V
    //   137: aload_2
    //   138: athrow
    //   139: astore_0
    //   140: aload_0
    //   141: invokevirtual 105	java/io/IOException:printStackTrace	()V
    //   144: goto -7 -> 137
    //   147: astore_2
    //   148: goto -19 -> 129
    //   151: astore_3
    //   152: aconst_null
    //   153: astore_2
    //   154: goto -78 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	paramString	String
    //   55	13	1	i	int
    //   8	99	2	localFileInputStream	java.io.FileInputStream
    //   126	12	2	localObject1	Object
    //   147	1	2	localObject2	Object
    //   153	1	2	localObject3	Object
    //   26	24	3	localBufferedReader	java.io.BufferedReader
    //   75	20	3	localException1	Exception
    //   105	13	3	str	String
    //   151	1	3	localException2	Exception
    //   34	31	4	arrayOfChar	char[]
    //   45	56	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   11	27	75	java/lang/Exception
    //   29	36	75	java/lang/Exception
    //   38	47	75	java/lang/Exception
    //   49	56	75	java/lang/Exception
    //   62	72	75	java/lang/Exception
    //   94	98	75	java/lang/Exception
    //   100	106	75	java/lang/Exception
    //   106	110	112	java/io/IOException
    //   86	90	119	java/io/IOException
    //   0	9	126	finally
    //   133	137	139	java/io/IOException
    //   11	27	147	finally
    //   29	36	147	finally
    //   38	47	147	finally
    //   49	56	147	finally
    //   62	72	147	finally
    //   78	82	147	finally
    //   94	98	147	finally
    //   100	106	147	finally
    //   0	9	151	java/lang/Exception
  }
  
  private JSONObject a(Context paramContext, Request paramRequest, Response paramResponse)
    throws NetErrorException, FailOperatingException, AppErrorException
  {
    String str = GlobalContext.f();
    try
    {
      localObject = a(paramContext, paramRequest.a(), paramRequest.a(str).toString(), paramRequest.b(), paramResponse);
      paramResponse.a(Calendar.getInstance().getTimeInMillis());
      if (paramRequest.c())
      {
        localObject = a((String)localObject, paramResponse);
        if ((paramResponse.c() == 1000) && (this.a < 3))
        {
          this.a += 1;
          return a(paramContext, paramRequest, paramResponse);
        }
        if (paramResponse.c() != 0) {
          throw new FailOperatingException(paramResponse.d());
        }
      }
    }
    catch (NetErrorException paramContext)
    {
      throw paramContext;
      this.a = 0;
      paramContext = ((JSONObject)localObject).optString("res_data");
      if (TextUtils.isEmpty(paramContext)) {
        throw new AppErrorException(getClass(), "response data is empty");
      }
    }
    catch (FailOperatingException paramContext)
    {
      throw paramContext;
      paramContext = TriDes.b(str, paramContext);
      new StringBuilder("respData:").append(paramContext).toString();
      paramContext = new JSONObject(paramContext);
      return paramContext;
    }
    catch (AppErrorException paramContext)
    {
      Object localObject;
      throw paramContext;
      paramContext = a((String)localObject, paramResponse);
      new StringBuilder("respData:").append(paramContext.toString()).toString();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      throw new NetErrorException();
    }
  }
  
  private JSONObject a(Context paramContext, Request paramRequest, Response paramResponse, String paramString1, String paramString2)
    throws JSONException, AppErrorException, NetErrorException, FailOperatingException
  {
    paramString2 = a(paramString2, paramResponse);
    if ((paramResponse.c() == 1000) && (this.a < 3))
    {
      this.a += 1;
      return a(paramContext, paramRequest, paramResponse);
    }
    if (paramResponse.c() != 0) {
      throw new FailOperatingException(paramResponse.d());
    }
    this.a = 0;
    paramContext = paramString2.optString("res_data");
    if (TextUtils.isEmpty(paramContext)) {
      throw new AppErrorException(getClass(), "response data is empty");
    }
    paramContext = TriDes.b(paramString1, paramContext);
    new StringBuilder("respData:").append(paramContext).toString();
    return new JSONObject(paramContext);
  }
  
  private static JSONObject a(Response paramResponse, String paramString)
    throws JSONException, AppErrorException
  {
    paramResponse = a(paramString, paramResponse);
    new StringBuilder("respData:").append(paramResponse.toString()).toString();
    return paramResponse;
  }
  
  private static JSONObject a(String paramString, Response paramResponse)
    throws JSONException, AppErrorException
  {
    paramString = new JSONObject(paramString).optJSONObject("data");
    if (paramString != null)
    {
      paramResponse.a(paramString.optInt("code", 503));
      paramResponse.a(paramString.optString("error_msg", ""));
      paramString = paramString.optJSONObject("params");
      if (paramString != null)
      {
        if (paramResponse.c() == 1000)
        {
          localObject = paramString.optString("public_key");
          if (!TextUtils.isEmpty((CharSequence)localObject)) {
            GlobalContext.a().c().a((String)localObject);
          }
        }
        Object localObject = new Envelope();
        ((Envelope)localObject).d(paramString.optString("next_api_name"));
        ((Envelope)localObject).e(paramString.optString("next_api_version"));
        ((Envelope)localObject).c(paramString.optString("next_namespace"));
        ((Envelope)localObject).b(paramString.optString("next_request_url"));
        paramResponse.a((Envelope)localObject);
        return paramString;
      }
      paramResponse.c();
    }
    for (;;)
    {
      return null;
      paramResponse.a(503);
      paramResponse.a("");
    }
  }
  
  private static void a(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.optString("public_key");
    if (!TextUtils.isEmpty(paramJSONObject)) {
      GlobalContext.a().c().a(paramJSONObject);
    }
  }
  
  public final FrameData a(Context paramContext, Request paramRequest, boolean paramBoolean)
    throws NetErrorException, FailOperatingException, AppErrorException, UnZipException
  {
    Response localResponse = new Response();
    paramContext = a(paramContext, paramRequest, localResponse);
    Object localObject;
    if (paramContext.optBoolean("gzip"))
    {
      localObject = paramContext.optJSONObject("form");
      if ((localObject != null) && (((JSONObject)localObject).has("quickpay"))) {
        localObject = Base64.a(((JSONObject)localObject).optString("quickpay"));
      }
    }
    for (;;)
    {
      try
      {
        localObject = FrameUtils.a((byte[])localObject);
        if (TextUtils.equals(MD5.a((byte[])localObject), paramContext.optString("md5")))
        {
          paramContext.put("form", new JSONObject(new String((byte[])localObject, "utf-8")));
          new StringBuilder("responsestring decoded ").append(paramContext).toString();
          paramRequest = new FrameData(paramRequest, localResponse);
          paramRequest.a(paramContext);
          if (!paramBoolean) {
            break;
          }
          return paramRequest;
        }
        throw new UnZipException("client md5  not equal server md5");
      }
      catch (UnsupportedEncodingException paramContext)
      {
        throw new UnZipException("unzip byte array unsupport encoding");
      }
      catch (UnZipException paramContext)
      {
        throw paramContext;
      }
      catch (JSONException paramContext)
      {
        throw new UnZipException("unzip string not jsonObject");
      }
      localResponse.b();
    }
    return FrameFactoryManager.a(paramRequest);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/net/RequestWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */