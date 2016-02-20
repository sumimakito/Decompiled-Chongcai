package cn.apppark.vertify.network.request;

import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Proxy.Type;
import java.util.ArrayList;
import org.ksoap2.HeaderProperty;
import org.ksoap2.serialization.MarshalFloat;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapSerializationEnvelope;

public class WebServiceRequest
{
  public static String NO_DATA = "000";
  public static String WEB_ERROR = "404";
  
  public static String Ksoap2ForString(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    String str3 = WEB_ERROR;
    if (HQCHApplication.DEBUG)
    {
      System.out.println(" ");
      System.out.println("【方法名:" + paramString1);
      System.out.println("nameSpace:" + paramString4);
      System.out.println("地址:" + paramString5);
    }
    str2 = str3;
    str1 = str3;
    for (;;)
    {
      try
      {
        paramString4 = new SoapObject(paramString4, paramString1);
        if (paramString2 != null)
        {
          str2 = str3;
          str1 = str3;
          paramString4.addProperty(paramString2, paramString3);
        }
        str2 = str3;
        str1 = str3;
        if (HQCHApplication.DEBUG)
        {
          str2 = str3;
          str1 = str3;
          System.out.println("传递参数----" + paramString3);
        }
        str2 = str3;
        str1 = str3;
        paramString3 = new SoapSerializationEnvelope(110);
        str2 = str3;
        str1 = str3;
        paramString3.setOutputSoapObject(paramString4);
        str2 = str3;
        str1 = str3;
        new MarshalFloat().register(paramString3);
        str2 = str3;
        str1 = str3;
        if (isNet())
        {
          str2 = str3;
          str1 = str3;
          paramString2 = new MyTransportSE(paramString5, 10000);
          str2 = str3;
          str1 = str3;
          paramString2.debug = false;
          str2 = str3;
          str1 = str3;
          paramString4 = new ArrayList();
          str2 = str3;
          str1 = str3;
          paramString4.add(new HeaderProperty("imsi", YYGYContants.IMEI));
          str2 = str3;
          str1 = str3;
          paramString4.add(new HeaderProperty("imei", YYGYContants.IMEI));
          str2 = str3;
          str1 = str3;
          paramString4.add(new HeaderProperty("appId", "10185912"));
          str2 = str3;
          str1 = str3;
          paramString4.add(new HeaderProperty("appVersion", YYGYContants.VERSION_CODE));
          str2 = str3;
          str1 = str3;
          paramString4.add(new HeaderProperty("deviceType", "1"));
          str2 = str3;
          str1 = str3;
          paramString2.call(paramString1, paramString3, paramString4);
          paramString2 = str3;
          str2 = str3;
          str1 = str3;
          if (paramString3.getResponse() != null)
          {
            str2 = str3;
            str1 = str3;
            paramString3 = (SoapObject)paramString3.bodyIn;
            paramString2 = str3;
            str2 = str3;
            str1 = str3;
            if (paramString3.getProperty(0) != null)
            {
              str2 = str3;
              str1 = str3;
              paramString2 = paramString3.getProperty(0).toString();
            }
          }
          str2 = paramString2;
          str1 = paramString2;
          if (HQCHApplication.DEBUG)
          {
            str2 = paramString2;
            str1 = paramString2;
            System.out.println("   ");
            str2 = paramString2;
            str1 = paramString2;
            System.out.println("【返回结果---" + paramString1);
            str2 = paramString2;
            str1 = paramString2;
            System.out.println("【" + paramString2 + "】");
          }
          paramString1 = paramString2;
          if (!paramBoolean) {
            if (!paramString2.startsWith("{"))
            {
              paramString1 = paramString2;
              if (!paramString2.startsWith("[")) {
                continue;
              }
            }
          }
        }
      }
      catch (Exception paramString1)
      {
        str1 = str2;
        paramString1.printStackTrace();
        str1 = str2;
        paramString2 = WEB_ERROR;
        paramString1 = paramString2;
        if (paramBoolean) {
          continue;
        }
        if (!paramString2.startsWith("{"))
        {
          paramString1 = paramString2;
          if (!paramString2.startsWith("[")) {
            continue;
          }
        }
      }
      finally
      {
        if ((paramBoolean) || ((!str1.startsWith("{")) && (!str1.startsWith("[")))) {
          continue;
        }
        try
        {
          paramString2 = ((JsonObject)new JsonParser().parse(str1)).get("retFlag").getAsString();
          if ((paramString2 != null) && (!"0".equals(paramString2))) {
            "2".equals(paramString2);
          }
        }
        catch (Exception paramString2)
        {
          paramString2.printStackTrace();
          continue;
        }
        throw paramString1;
        paramString1 = paramString2;
        continue;
        paramString1 = paramString2;
        continue;
      }
      try
      {
        paramString1 = ((JsonObject)new JsonParser().parse(paramString2)).get("retFlag").getAsString();
        if ((paramString1 == null) || ((!"0".equals(paramString1)) && (!"2".equals(paramString1)))) {
          continue;
        }
        paramString1 = "000";
        return paramString1;
      }
      catch (Exception paramString1)
      {
        try
        {
          paramString1 = ((JsonObject)new JsonParser().parse(paramString2)).get("retFlag").getAsString();
          if ((paramString1 == null) || ((!"0".equals(paramString1)) && (!"2".equals(paramString1)))) {
            continue;
          }
          paramString1 = "000";
          return paramString1;
        }
        catch (Exception paramString1)
        {
          paramString1.printStackTrace();
          return paramString2;
        }
        paramString1 = paramString1;
        paramString1.printStackTrace();
        return paramString2;
      }
      str2 = str3;
      str1 = str3;
      paramString2 = new MyTransportSE(new java.net.Proxy(Proxy.Type.HTTP, new InetSocketAddress(android.net.Proxy.getDefaultHost(), android.net.Proxy.getDefaultPort())), paramString5);
    }
  }
  
  public static boolean isNet()
  {
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/request/WebServiceRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */