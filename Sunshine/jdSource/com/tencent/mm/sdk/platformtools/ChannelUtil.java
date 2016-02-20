package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Build.VERSION;
import java.util.Map;

public final class ChannelUtil
{
  public static final int FLAG_NULL = 0;
  public static final int FLAG_UPDATE_EXTERNAL = 1;
  public static final int FLAG_UPDATE_NOTIP = 2;
  public static int buildRev;
  public static int channelId = 0;
  public static boolean fullVersionInfo = false;
  public static String marketURL;
  public static String profileDeviceType = Build.VERSION.SDK_INT;
  public static int updateMode = 0;
  
  static
  {
    buildRev = 0;
    marketURL = "market://details?id=" + MMApplicationContext.getPackageName();
  }
  
  public static String formatVersion(Context paramContext, int paramInt)
  {
    str2 = (paramInt >> 24 & 0xF) + "." + (paramInt >> 16 & 0xFF);
    int i = 0xFFFF & paramInt;
    str1 = str2;
    paramInt = i;
    if (paramContext != null) {
      paramInt = i;
    }
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 128);
      str1 = str2;
      paramInt = i;
      if (paramContext != null)
      {
        paramInt = i;
        i = paramContext.versionCode;
        paramInt = i;
        str1 = paramContext.versionName;
        paramInt = i;
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        str1 = str2;
      }
    }
    paramContext = str1;
    if (fullVersionInfo)
    {
      paramContext = str1 + " r" + paramInt + "(build." + buildRev + ")";
      Log.d("MicroMsg.SDK.ChannelUtil", "full version: " + paramContext);
    }
    return paramContext;
  }
  
  public static void loadProfile(Context paramContext)
  {
    try
    {
      paramContext = KVConfig.parseIni(Util.convertStreamToString(paramContext.getAssets().open("profile.ini")));
      String str = Util.nullAsNil((String)paramContext.get("PROFILE_DEVICE_TYPE"));
      profileDeviceType = str;
      if (str.length() <= 0) {
        profileDeviceType = Build.VERSION.SDK_INT;
      }
      updateMode = Integer.parseInt((String)paramContext.get("UPDATE_MODE"));
      buildRev = Integer.parseInt((String)paramContext.get("BUILD_REVISION"));
      android.util.Log.w("MicroMsg.SDK.ChannelUtil", "profileDeviceType=" + profileDeviceType);
      android.util.Log.w("MicroMsg.SDK.ChannelUtil", "updateMode=" + updateMode);
      paramContext = (String)paramContext.get("MARKET_URL");
      if ((paramContext != null) && (paramContext.trim().length() != 0) && (Uri.parse(paramContext) != null)) {
        marketURL = paramContext;
      }
      android.util.Log.w("MicroMsg.SDK.ChannelUtil", "marketURL=" + marketURL);
      return;
    }
    catch (Exception paramContext)
    {
      android.util.Log.e("MicroMsg.SDK.ChannelUtil", "setup profile from profile.ini failed");
      paramContext.printStackTrace();
    }
  }
  
  public static void setupChannelId(Context paramContext)
  {
    try
    {
      channelId = Integer.parseInt((String)KVConfig.parseIni(Util.convertStreamToString(paramContext.getAssets().open("channel.ini"))).get("CHANNEL"));
      return;
    }
    catch (Exception paramContext)
    {
      Log.e("MicroMsg.SDK.ChannelUtil", "setup channel id from channel.ini failed");
      paramContext.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/ChannelUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */