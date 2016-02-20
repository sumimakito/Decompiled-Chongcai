package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.k;
import org.json.JSONObject;

public class StatMid
{
  private static StatLogger a = ;
  private static DeviceInfo b = null;
  
  static DeviceInfo a(Context paramContext)
  {
    try
    {
      Object localObject = a.a(paramContext);
      DeviceInfo localDeviceInfo1 = a(((a)localObject).d("__MTA_DEVICE_INFO__", null));
      a.d("get device info from internal storage:" + localDeviceInfo1);
      DeviceInfo localDeviceInfo2 = a(((a)localObject).f("__MTA_DEVICE_INFO__", null));
      a.d("get device info from setting.system:" + localDeviceInfo2);
      localObject = a(((a)localObject).b("__MTA_DEVICE_INFO__", null));
      a.d("get device info from SharedPreference:" + localObject);
      b = a((DeviceInfo)localObject, localDeviceInfo2, localDeviceInfo1);
      if (b == null) {
        b = new DeviceInfo();
      }
      paramContext = n.a(paramContext).b(paramContext);
      if (paramContext != null)
      {
        b.d(paramContext.getImei());
        b.e(paramContext.getMac());
        b.b(paramContext.getUserType());
      }
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        a.e(paramContext);
      }
    }
    finally {}
    paramContext = b;
    return paramContext;
  }
  
  static DeviceInfo a(DeviceInfo paramDeviceInfo1, DeviceInfo paramDeviceInfo2)
  {
    if ((paramDeviceInfo1 != null) && (paramDeviceInfo2 != null)) {
      if (paramDeviceInfo1.a(paramDeviceInfo2) < 0) {}
    }
    while (paramDeviceInfo1 != null)
    {
      return paramDeviceInfo1;
      return paramDeviceInfo2;
    }
    if (paramDeviceInfo2 != null) {
      return paramDeviceInfo2;
    }
    return null;
  }
  
  static DeviceInfo a(DeviceInfo paramDeviceInfo1, DeviceInfo paramDeviceInfo2, DeviceInfo paramDeviceInfo3)
  {
    return a(a(paramDeviceInfo1, paramDeviceInfo2), a(paramDeviceInfo2, paramDeviceInfo3));
  }
  
  private static DeviceInfo a(String paramString)
  {
    if (paramString != null) {
      return DeviceInfo.a(k.d(paramString));
    }
    return null;
  }
  
  public static DeviceInfo getDeviceInfo(Context paramContext)
  {
    if (paramContext == null)
    {
      a.error("Context for StatConfig.getDeviceInfo is null.");
      return null;
    }
    if (b == null) {
      a(paramContext);
    }
    return b;
  }
  
  public static String getMid(Context paramContext)
  {
    if (b == null) {
      getDeviceInfo(paramContext);
    }
    return b.getMid();
  }
  
  public static void updateDeviceInfo(Context paramContext, String paramString)
  {
    try
    {
      getDeviceInfo(paramContext);
      b.c(paramString);
      b.a(b.a() + 1);
      b.a(System.currentTimeMillis());
      paramString = b.c().toString();
      a.d("save DeviceInfo:" + paramString);
      paramString = k.c(paramString).replace("\n", "");
      paramContext = a.a(paramContext);
      paramContext.c("__MTA_DEVICE_INFO__", paramString);
      paramContext.e("__MTA_DEVICE_INFO__", paramString);
      paramContext.a("__MTA_DEVICE_INFO__", paramString);
      return;
    }
    catch (Throwable paramContext)
    {
      a.e(paramContext);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/StatMid.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */