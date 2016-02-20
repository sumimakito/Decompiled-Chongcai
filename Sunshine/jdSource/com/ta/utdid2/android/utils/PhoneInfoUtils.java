package com.ta.utdid2.android.utils;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.Random;

public class PhoneInfoUtils
{
  public static String getImei(Context paramContext)
  {
    localObject2 = null;
    localObject1 = localObject2;
    if (paramContext != null) {}
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      localObject1 = localObject2;
      if (paramContext != null) {
        localObject1 = paramContext.getDeviceId();
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        localObject1 = localObject2;
      }
    }
    paramContext = (Context)localObject1;
    if (StringUtils.isEmpty((String)localObject1)) {
      paramContext = getUniqueID();
    }
    return paramContext;
  }
  
  public static String getImsi(Context paramContext)
  {
    localObject2 = null;
    localObject1 = localObject2;
    if (paramContext != null) {}
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      localObject1 = localObject2;
      if (paramContext != null) {
        localObject1 = paramContext.getSubscriberId();
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        localObject1 = localObject2;
      }
    }
    paramContext = (Context)localObject1;
    if (StringUtils.isEmpty((String)localObject1)) {
      paramContext = getUniqueID();
    }
    return paramContext;
  }
  
  public static final String getUniqueID()
  {
    int i = (int)(System.currentTimeMillis() / 1000L);
    int j = (int)System.nanoTime();
    int k = new Random().nextInt();
    int m = new Random().nextInt();
    byte[] arrayOfByte1 = IntUtils.getBytes(i);
    byte[] arrayOfByte2 = IntUtils.getBytes(j);
    byte[] arrayOfByte3 = IntUtils.getBytes(k);
    byte[] arrayOfByte4 = IntUtils.getBytes(m);
    byte[] arrayOfByte5 = new byte[16];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte5, 0, 4);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte5, 4, 4);
    System.arraycopy(arrayOfByte3, 0, arrayOfByte5, 8, 4);
    System.arraycopy(arrayOfByte4, 0, arrayOfByte5, 12, 4);
    return Base64.encodeToString(arrayOfByte5, 2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/ta/utdid2/android/utils/PhoneInfoUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */