package cn.apppark.vertify.base;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class ClientInitInfoHelpler
{
  private String mClientFlag;
  private Context mContext;
  
  static
  {
    System.loadLibrary("yygycheck");
  }
  
  public ClientInitInfoHelpler(Context paramContext, String paramString)
  {
    this.mContext = paramContext;
    if (paramString == null) {
      throw new NullPointerException("clientFlag cannot be null");
    }
    this.mClientFlag = paramString;
  }
  
  public static native String encryptByMD5(String paramString1, String paramString2);
  
  public static native float getScaleDipFloat(int paramInt);
  
  public static native float getScaleFloat(int paramInt);
  
  public String getCurrentFlag()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_CurrentFlag", "1");
  }
  
  public int getInitFlag()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getInt(this.mClientFlag + "_init", 0);
  }
  
  public boolean getIsDebug()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getBoolean("_isDebug", false);
  }
  
  public String getIsShowAD()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_isShowAD", "0");
  }
  
  public String getIsShowDeclare()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_isshowdeclare", "1");
  }
  
  public String getIsShowMore()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_isShowMore", "0");
  }
  
  public String getIsShowWall()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_isShowWall", "0");
  }
  
  public String getIsVip()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_vip", "0");
  }
  
  public String getLastCopyTime()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_lastCopyTime", null);
  }
  
  public int getLogFlag()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getInt(this.mClientFlag + "_log", 0);
  }
  
  public String getMcd2AppsTimeStamp()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString("yygy_apps_update_time", "2016-02-20 10:31:004");
  }
  
  public boolean getNeedSMS()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getBoolean(this.mClientFlag + "_needSMS", false);
  }
  
  public String getRecentTimeStamp()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_timeStamp", "2016-02-20 10:31:004");
  }
  
  public int getShowHelp()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getInt(this.mClientFlag + "_showHelp", 0);
  }
  
  public String getShowWaterMarker()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_showwatermarker", "1");
  }
  
  public int getSoftCount()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getInt(this.mClientFlag + "_softCount", 0);
  }
  
  public int getVipFlag()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getInt(this.mClientFlag + "_vipflag", 0);
  }
  
  public String getWeiboShareContent()
  {
    return this.mContext.getSharedPreferences("client_ini", 0).getString(this.mClientFlag + "_weibosharecontent", null);
  }
  
  public final void resetInitFlag()
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putInt(this.mClientFlag + "_init", 0);
    localEditor.commit();
  }
  
  public void resetTimeStamp()
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_timeStamp", "2016-02-20 10:31:004");
    localEditor.commit();
  }
  
  public void setIsDebug(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putBoolean("_isDebug", paramBoolean);
    localEditor.commit();
  }
  
  public void setTimeStamp(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_timeStamp", paramString);
    localEditor.commit();
  }
  
  public final void updateCurrentFlag(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_CurrentFlag", paramString);
    localEditor.commit();
  }
  
  public final void updateInitFlag()
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putInt(this.mClientFlag + "_init", 1);
    localEditor.commit();
  }
  
  public final void updateIsShowAD(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_isShowAD", paramString);
    localEditor.commit();
  }
  
  public final void updateIsShowDeclare(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_isshowdeclare", paramString);
    localEditor.commit();
  }
  
  public final void updateIsShowMore(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_isShowMore", paramString);
    localEditor.commit();
  }
  
  public final void updateIsShowWall(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_isShowWall", paramString);
    localEditor.commit();
  }
  
  public final void updateIsVip(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_vip", paramString);
    localEditor.commit();
  }
  
  public void updateLastCopyTime(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_lastCopyTime", paramString);
    localEditor.commit();
  }
  
  public final void updateLogFlag()
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putInt(this.mClientFlag + "_log", 1);
    localEditor.commit();
  }
  
  public final void updateNeedSMS(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putBoolean(this.mClientFlag + "_needSMS", paramBoolean);
    localEditor.commit();
  }
  
  public final void updateShowHelp()
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putInt(this.mClientFlag + "_showHelp", 1);
    localEditor.commit();
  }
  
  public final void updateShowWaterMarker(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_showwatermarker", paramString);
    localEditor.commit();
  }
  
  public final void updateSoftCount(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putInt(this.mClientFlag + "_softCount", paramInt);
    localEditor.commit();
  }
  
  public void updateTimeStamp(String paramString)
  {
    setTimeStamp(paramString);
  }
  
  public final void updateVipFlag()
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putInt(this.mClientFlag + "_vipflag", 1);
    localEditor.commit();
  }
  
  public final void updateWeiboShareContent(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("client_ini", 0).edit();
    localEditor.putString(this.mClientFlag + "_weibosharecontent", paramString);
    localEditor.commit();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/base/ClientInitInfoHelpler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */