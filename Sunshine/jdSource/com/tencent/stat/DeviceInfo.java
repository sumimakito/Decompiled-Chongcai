package com.tencent.stat;

import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.k;
import org.json.JSONException;
import org.json.JSONObject;

public class DeviceInfo
{
  public static final int NEW_USER = 0;
  public static final int OLD_USER = 1;
  public static final String TAG_ANDROID_ID = "aid";
  public static final String TAG_FLAG = "__MTA_DEVICE_INFO__";
  public static final String TAG_IMEI = "ui";
  public static final String TAG_MAC = "mc";
  public static final String TAG_MID = "mid";
  public static final String TAG_TIMESTAMPS = "ts";
  public static final String TAG_VERSION = "ver";
  public static final int UPGRADE_USER = 2;
  private static StatLogger h = ;
  private String a = null;
  private String b = null;
  private String c = null;
  private String d = "0";
  private int e;
  private int f = 0;
  private long g = 0L;
  
  DeviceInfo() {}
  
  DeviceInfo(String paramString1, String paramString2, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.e = paramInt;
  }
  
  static DeviceInfo a(String paramString)
  {
    DeviceInfo localDeviceInfo = new DeviceInfo();
    try
    {
      paramString = new JSONObject(paramString);
      if (!paramString.isNull("ui")) {
        localDeviceInfo.d(paramString.getString("ui"));
      }
      if (!paramString.isNull("mc")) {
        localDeviceInfo.e(paramString.getString("mc"));
      }
      if (!paramString.isNull("mid")) {
        localDeviceInfo.c(paramString.getString("mid"));
      }
      if (!paramString.isNull("aid")) {
        localDeviceInfo.b(paramString.getString("aid"));
      }
      if (!paramString.isNull("ts")) {
        localDeviceInfo.a(paramString.getLong("ts"));
      }
      if (!paramString.isNull("ver")) {
        localDeviceInfo.a(paramString.getInt("ver"));
      }
      return localDeviceInfo;
    }
    catch (JSONException paramString)
    {
      h.e(paramString);
    }
    return localDeviceInfo;
  }
  
  int a()
  {
    return this.f;
  }
  
  int a(DeviceInfo paramDeviceInfo)
  {
    if (paramDeviceInfo == null) {}
    long l1;
    long l2;
    do
    {
      int i;
      int j;
      do
      {
        return 1;
        String str1 = getMid();
        String str2 = paramDeviceInfo.getMid();
        if ((str1 != null) && (str2 != null) && (str1.equals(str2))) {
          return 0;
        }
        i = a();
        j = paramDeviceInfo.a();
      } while (i > j);
      if (i != j) {
        break;
      }
      l1 = b();
      l2 = paramDeviceInfo.b();
    } while (l1 > l2);
    if (l1 == l2) {
      return 0;
    }
    return -1;
    return -1;
  }
  
  void a(int paramInt)
  {
    this.f = paramInt;
  }
  
  void a(long paramLong)
  {
    this.g = paramLong;
  }
  
  long b()
  {
    return this.g;
  }
  
  void b(int paramInt)
  {
    this.e = paramInt;
  }
  
  void b(String paramString)
  {
    this.c = paramString;
  }
  
  JSONObject c()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      k.a(localJSONObject, "ui", this.a);
      k.a(localJSONObject, "mc", this.b);
      k.a(localJSONObject, "mid", this.d);
      k.a(localJSONObject, "aid", this.c);
      localJSONObject.put("ts", this.g);
      localJSONObject.put("ver", this.f);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      h.e(localJSONException);
    }
    return localJSONObject;
  }
  
  void c(String paramString)
  {
    this.d = paramString;
  }
  
  void d(String paramString)
  {
    this.a = paramString;
  }
  
  void e(String paramString)
  {
    this.b = paramString;
  }
  
  public String getImei()
  {
    return this.a;
  }
  
  public String getMac()
  {
    return this.b;
  }
  
  public String getMid()
  {
    return this.d;
  }
  
  public int getUserType()
  {
    return this.e;
  }
  
  public String toString()
  {
    return c().toString();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/DeviceInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */