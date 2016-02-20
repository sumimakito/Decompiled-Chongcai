package com.tencent.mm.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.sdk.plugin.IMMPluginAPI;
import com.tencent.mm.sdk.plugin.MMPluginUtil;

public final class MMAppMgr
{
  public static void activate(boolean paramBoolean) {}
  
  public static IMMPluginAPI getPluginMgr(Context paramContext)
  {
    return MMPluginUtil.queryPluginMgr(paramContext);
  }
  
  public static SharedPreferences getSharedPreferences(Context paramContext, int paramInt)
  {
    return new MMSharedPreferences(paramContext);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/MMAppMgr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */