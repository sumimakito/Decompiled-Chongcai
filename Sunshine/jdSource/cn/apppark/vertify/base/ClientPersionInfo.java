package cn.apppark.vertify.base;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class ClientPersionInfo
{
  private String iniName = "buy_ini";
  private Context mContext;
  
  public ClientPersionInfo(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public void LoginOff()
  {
    updateUserId(null);
    updatePhone(null);
    updateUserEmail(null);
    updateUserNikeName(null);
    updateNikeNameRight(null);
    updatePhoneState(-1);
    updateLastPushMsgTime(null);
    updateUserSex(null);
    updateUserHeadFace(null);
    updateUserSign(null);
  }
  
  public String getLastMsgTime(String paramString)
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_LastMsgTime" + paramString, null);
  }
  
  public String getLastPushMsgTime()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_LastPushMsgTime", null);
  }
  
  public String getNikeNameRight()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_NikeNameRight", null);
  }
  
  public String getPhone()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_UserPhone", null);
  }
  
  public int getPhoneState()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getInt("_PhoneState", -1);
  }
  
  public String getUserEmail()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_UserEmail", null);
  }
  
  public String getUserHeadFace()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_HeadFace", null);
  }
  
  public String getUserId()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_UserId", null);
  }
  
  public String getUserNikeName()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_NikeName", null);
  }
  
  public String getUserSex()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_sex", null);
  }
  
  public String getUserSign()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_sign", null);
  }
  
  public String receiveMsg()
  {
    return this.mContext.getSharedPreferences(this.iniName, 0).getString("_receiveMsg", "1");
  }
  
  public void updateLastMsgTime(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_LastMsgTime" + paramString1, paramString2);
    localEditor.commit();
  }
  
  public void updateLastPushMsgTime(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_LastPushMsgTime", paramString);
    localEditor.commit();
  }
  
  public void updateNikeNameRight(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_NikeNameRight", paramString);
    localEditor.commit();
  }
  
  public void updatePhone(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_UserPhone", paramString);
    localEditor.commit();
  }
  
  public void updatePhoneState(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putInt("_PhoneState", paramInt);
    localEditor.commit();
  }
  
  public void updateReceiveMsg(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_receiveMsg", paramString);
    localEditor.commit();
  }
  
  public void updateUserEmail(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_UserEmail", paramString);
    localEditor.commit();
  }
  
  public void updateUserHeadFace(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_HeadFace", paramString);
    localEditor.commit();
  }
  
  public void updateUserId(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_UserId", paramString);
    localEditor.commit();
  }
  
  public void updateUserNikeName(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_NikeName", paramString);
    localEditor.commit();
  }
  
  public void updateUserSex(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_sex", paramString);
    localEditor.commit();
  }
  
  public void updateUserSign(String paramString)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences(this.iniName, 0).edit();
    localEditor.putString("_sign", paramString);
    localEditor.commit();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/base/ClientPersionInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */