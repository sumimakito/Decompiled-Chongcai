package com.alipay.sdk.data;

import android.text.TextUtils;
import com.alipay.sdk.cons.GlobalConstants;
import com.alipay.sdk.sys.GlobalContext;
import com.alipay.sdk.tid.TidInfo;
import com.alipay.sdk.util.DeviceInfo;
import com.alipay.sdk.util.JsonUtils;
import com.alipay.sdk.util.Utils;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public class FrameUtils
{
  private static final String a = "Msp-Param";
  
  public static Request a()
  {
    Envelope localEnvelope = new Envelope();
    localEnvelope.b(GlobalConstants.b);
    localEnvelope.c("com.alipay.mobilecashier");
    localEnvelope.d("/device/findAccount");
    localEnvelope.e("3.0.0");
    GlobalContext localGlobalContext = GlobalContext.a();
    TidInfo localTidInfo = TidInfo.c();
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(localTidInfo.a())) {
          continue;
        }
        localJSONObject.put("tid", localTidInfo.a());
        localJSONObject.put("utdid", localGlobalContext.g());
        localJSONObject.put("app_key", "2014052600006128");
        localJSONObject.put("new_client_key", localTidInfo.b());
        localJSONObject.put("imei", DeviceInfo.a(localGlobalContext.b()).b());
        localJSONObject.put("imsi", DeviceInfo.a(localGlobalContext.b()).a());
      }
      catch (JSONException localJSONException)
      {
        continue;
      }
      return new Request(localEnvelope, localJSONObject);
      localTidInfo.b(localTidInfo.b());
    }
  }
  
  public static Request a(InteractionData paramInteractionData, String paramString, JSONObject paramJSONObject)
  {
    Object localObject1 = GlobalContext.a();
    Object localObject2 = TidInfo.c();
    paramJSONObject = JsonUtils.a(null, paramJSONObject);
    try
    {
      paramJSONObject.put("tid", ((TidInfo)localObject2).a());
      paramJSONObject.put("user_agent", ((GlobalContext)localObject1).c().a((TidInfo)localObject2));
      paramJSONObject.put("has_alipay", Utils.b(((GlobalContext)localObject1).b()));
      paramJSONObject.put("has_msp_app", Utils.a(((GlobalContext)localObject1).b()));
      paramJSONObject.put("external_info", paramString);
      paramJSONObject.put("app_key", "2014052600006128");
      paramJSONObject.put("utdid", ((GlobalContext)localObject1).g());
      paramJSONObject.put("new_client_key", ((TidInfo)localObject2).b());
      localObject1 = new Envelope();
      ((Envelope)localObject1).b(GlobalConstants.b);
      ((Envelope)localObject1).c("com.alipay.mobilecashier");
      ((Envelope)localObject1).d("/cashier/main");
      ((Envelope)localObject1).e("4.0.2");
      if (paramJSONObject != null)
      {
        localRequest = new Request((Envelope)localObject1, paramJSONObject);
        localRequest.a(true);
        if ((localRequest != null) && (!TextUtils.isEmpty(paramString)))
        {
          String[] arrayOfString = paramString.split("&");
          if (arrayOfString.length != 0)
          {
            int j = arrayOfString.length;
            int i = 0;
            Object localObject3 = null;
            localObject2 = null;
            Object localObject4 = null;
            Object localObject5 = null;
            if (i < j)
            {
              String str = arrayOfString[i];
              paramString = (String)localObject5;
              if (TextUtils.isEmpty((CharSequence)localObject5))
              {
                if (!str.contains("biz_type")) {
                  paramString = null;
                }
              }
              else
              {
                label256:
                paramJSONObject = (JSONObject)localObject4;
                if (TextUtils.isEmpty((CharSequence)localObject4))
                {
                  if (str.contains("biz_no")) {
                    break label369;
                  }
                  paramJSONObject = null;
                }
                label279:
                localObject1 = localObject2;
                if (TextUtils.isEmpty((CharSequence)localObject2))
                {
                  if ((str.contains("trade_no")) && (!str.startsWith("out_trade_no"))) {
                    break label378;
                  }
                  localObject1 = null;
                }
                label314:
                localObject2 = localObject3;
                if (TextUtils.isEmpty((CharSequence)localObject3)) {
                  if (str.contains("app_userid")) {
                    break label388;
                  }
                }
              }
              label369:
              label378:
              label388:
              for (localObject2 = null;; localObject2 = d(str))
              {
                i += 1;
                localObject3 = localObject2;
                localObject5 = paramString;
                localObject4 = paramJSONObject;
                localObject2 = localObject1;
                break;
                paramString = d(str);
                break label256;
                paramJSONObject = d(str);
                break label279;
                localObject1 = d(str);
                break label314;
              }
            }
            paramString = new StringBuilder();
            if (!TextUtils.isEmpty((CharSequence)localObject5)) {
              paramString.append("biz_type=" + (String)localObject5 + ";");
            }
            if (!TextUtils.isEmpty((CharSequence)localObject4)) {
              paramString.append("biz_no=" + (String)localObject4 + ";");
            }
            if (!TextUtils.isEmpty((CharSequence)localObject2)) {
              paramString.append("trade_no=" + (String)localObject2 + ";");
            }
            if (!TextUtils.isEmpty((CharSequence)localObject3)) {
              paramString.append("app_userid=" + (String)localObject3 + ";");
            }
            if (paramString.length() != 0)
            {
              paramJSONObject = paramString.toString();
              paramString = paramJSONObject;
              if (paramJSONObject.endsWith(";")) {
                paramString = paramJSONObject.substring(0, paramJSONObject.length() - 1);
              }
              paramInteractionData.a(new Header[] { new BasicHeader("Msp-Param", paramString) });
              localRequest.a(paramInteractionData);
            }
          }
        }
        return localRequest;
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        continue;
        Request localRequest = null;
      }
    }
  }
  
  private static Request a(JSONObject paramJSONObject, boolean paramBoolean)
  {
    Envelope localEnvelope = new Envelope();
    localEnvelope.b(GlobalConstants.b);
    localEnvelope.c("com.alipay.mobilecashier");
    localEnvelope.d("/cashier/main");
    localEnvelope.e("4.0.2");
    Request localRequest = null;
    if (paramJSONObject != null)
    {
      localRequest = new Request(localEnvelope, paramJSONObject);
      localRequest.a(paramBoolean);
    }
    return localRequest;
  }
  
  private static String a(String paramString)
  {
    if (!paramString.contains("biz_type")) {
      return null;
    }
    return d(paramString);
  }
  
  private static void a(InteractionData paramInteractionData, Request paramRequest, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    label76:
    label101:
    label136:
    label192:
    label202:
    label212:
    do
    {
      String[] arrayOfString;
      do
      {
        return;
        arrayOfString = paramString.split("&");
      } while (arrayOfString.length == 0);
      int j = arrayOfString.length;
      int i = 0;
      Object localObject4 = null;
      Object localObject3 = null;
      Object localObject5 = null;
      Object localObject6 = null;
      if (i < j)
      {
        String str = arrayOfString[i];
        paramString = (String)localObject6;
        Object localObject2;
        if (TextUtils.isEmpty((CharSequence)localObject6))
        {
          if (!str.contains("biz_type")) {
            paramString = null;
          }
        }
        else
        {
          localObject1 = localObject5;
          if (TextUtils.isEmpty((CharSequence)localObject5))
          {
            if (str.contains("biz_no")) {
              break label192;
            }
            localObject1 = null;
          }
          localObject2 = localObject3;
          if (TextUtils.isEmpty((CharSequence)localObject3))
          {
            if ((str.contains("trade_no")) && (!str.startsWith("out_trade_no"))) {
              break label202;
            }
            localObject2 = null;
          }
          localObject3 = localObject4;
          if (TextUtils.isEmpty((CharSequence)localObject4)) {
            if (str.contains("app_userid")) {
              break label212;
            }
          }
        }
        for (localObject3 = null;; localObject3 = d(str))
        {
          i += 1;
          localObject4 = localObject3;
          localObject6 = paramString;
          localObject5 = localObject1;
          localObject3 = localObject2;
          break;
          paramString = d(str);
          break label76;
          localObject1 = d(str);
          break label101;
          localObject2 = d(str);
          break label136;
        }
      }
      paramString = new StringBuilder();
      if (!TextUtils.isEmpty((CharSequence)localObject6)) {
        paramString.append("biz_type=" + (String)localObject6 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject5)) {
        paramString.append("biz_no=" + (String)localObject5 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject3)) {
        paramString.append("trade_no=" + (String)localObject3 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject4)) {
        paramString.append("app_userid=" + (String)localObject4 + ";");
      }
    } while (paramString.length() == 0);
    Object localObject1 = paramString.toString();
    paramString = (String)localObject1;
    if (((String)localObject1).endsWith(";")) {
      paramString = ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
    }
    paramInteractionData.a(new Header[] { new BasicHeader("Msp-Param", paramString) });
    paramRequest.a(paramInteractionData);
  }
  
  public static void a(InteractionData paramInteractionData, HttpResponse paramHttpResponse)
  {
    paramHttpResponse = paramHttpResponse.getHeaders("Msp-Param");
    if ((paramInteractionData != null) && (paramHttpResponse.length > 0)) {
      paramInteractionData.a(paramHttpResponse);
    }
  }
  
  /* Error */
  public static byte[] a(byte[] paramArrayOfByte)
    throws com.alipay.sdk.exception.UnZipException
  {
    // Byte code:
    //   0: new 237	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 240	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore_0
    //   9: new 242	java/util/zip/GZIPInputStream
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 245	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_2
    //   18: sipush 4096
    //   21: newarray <illegal type>
    //   23: astore 4
    //   25: new 247	java/io/ByteArrayOutputStream
    //   28: dup
    //   29: invokespecial 248	java/io/ByteArrayOutputStream:<init>	()V
    //   32: astore_3
    //   33: aload_2
    //   34: aload 4
    //   36: iconst_0
    //   37: aload 4
    //   39: arraylength
    //   40: invokevirtual 252	java/util/zip/GZIPInputStream:read	([BII)I
    //   43: istore_1
    //   44: iload_1
    //   45: iconst_m1
    //   46: if_icmpeq +30 -> 76
    //   49: aload_3
    //   50: aload 4
    //   52: iconst_0
    //   53: iload_1
    //   54: invokevirtual 256	java/io/ByteArrayOutputStream:write	([BII)V
    //   57: goto -24 -> 33
    //   60: astore_0
    //   61: aload_0
    //   62: invokevirtual 259	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   65: new 231	com/alipay/sdk/exception/UnZipException
    //   68: dup
    //   69: ldc_w 261
    //   72: invokespecial 262	com/alipay/sdk/exception/UnZipException:<init>	(Ljava/lang/String;)V
    //   75: athrow
    //   76: aload_3
    //   77: invokevirtual 266	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   80: astore 4
    //   82: aload_3
    //   83: invokevirtual 269	java/io/ByteArrayOutputStream:flush	()V
    //   86: aload_3
    //   87: invokevirtual 272	java/io/ByteArrayOutputStream:close	()V
    //   90: aload_2
    //   91: invokevirtual 273	java/util/zip/GZIPInputStream:close	()V
    //   94: aload_0
    //   95: invokevirtual 274	java/io/ByteArrayInputStream:close	()V
    //   98: aload 4
    //   100: areturn
    //   101: astore_0
    //   102: aload_0
    //   103: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   106: new 231	com/alipay/sdk/exception/UnZipException
    //   109: dup
    //   110: ldc_w 277
    //   113: invokespecial 262	com/alipay/sdk/exception/UnZipException:<init>	(Ljava/lang/String;)V
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	paramArrayOfByte	byte[]
    //   43	11	1	i	int
    //   17	74	2	localGZIPInputStream	java.util.zip.GZIPInputStream
    //   32	55	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   23	76	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   0	33	60	java/io/UnsupportedEncodingException
    //   33	44	60	java/io/UnsupportedEncodingException
    //   49	57	60	java/io/UnsupportedEncodingException
    //   76	98	60	java/io/UnsupportedEncodingException
    //   0	33	101	java/io/IOException
    //   33	44	101	java/io/IOException
    //   49	57	101	java/io/IOException
    //   76	98	101	java/io/IOException
  }
  
  private static String b(String paramString)
  {
    if (!paramString.contains("biz_no")) {
      return null;
    }
    return d(paramString);
  }
  
  private static String c(String paramString)
  {
    if ((!paramString.contains("trade_no")) || (paramString.startsWith("out_trade_no"))) {
      return null;
    }
    return d(paramString);
  }
  
  private static String d(String paramString)
  {
    Object localObject = paramString.split("=");
    paramString = null;
    if (localObject.length > 1)
    {
      localObject = localObject[1];
      paramString = (String)localObject;
      if (((String)localObject).contains("\"")) {
        paramString = ((String)localObject).replaceAll("\"", "");
      }
    }
    return paramString;
  }
  
  private static String e(String paramString)
  {
    if (!paramString.contains("app_userid")) {
      return null;
    }
    return d(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/data/FrameUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */