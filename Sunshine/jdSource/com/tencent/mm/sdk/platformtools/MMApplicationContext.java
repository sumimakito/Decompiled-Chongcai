package com.tencent.mm.sdk.platformtools;

import android.content.Context;

public final class MMApplicationContext
{
  private static Context R = null;
  private static String aE = "com.tencent.mm";
  
  public static Context getContext()
  {
    return R;
  }
  
  public static String getDefaultPreferencePath()
  {
    return aE + "_preferences";
  }
  
  public static String getPackageName()
  {
    return aE;
  }
  
  public static void setContext(Context paramContext)
  {
    R = paramContext;
    aE = paramContext.getPackageName();
    Log.d("MicroMsg.MMApplicationContext", "setup application context for package: " + aE);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/MMApplicationContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */