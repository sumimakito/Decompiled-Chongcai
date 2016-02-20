package com.tencent.mm.sdk.plugin;

import android.content.Context;

public class MMPluginUtil
{
  public static IMMPluginAPI queryPluginMgr(Context paramContext)
  {
    return new MMPluginAPIImpl(paramContext);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/plugin/MMPluginUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */