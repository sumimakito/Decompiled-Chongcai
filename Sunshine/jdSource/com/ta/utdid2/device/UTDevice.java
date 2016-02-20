package com.ta.utdid2.device;

import android.content.Context;
import com.ta.utdid2.android.utils.StringUtils;

public class UTDevice
{
  public static String getUtdid(Context paramContext)
  {
    paramContext = DeviceInfo.getDevice(paramContext);
    if ((paramContext == null) || (StringUtils.isEmpty(paramContext.getUtdid()))) {
      return "ffffffffffffffffffffffff";
    }
    return paramContext.getUtdid();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/ta/utdid2/device/UTDevice.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */