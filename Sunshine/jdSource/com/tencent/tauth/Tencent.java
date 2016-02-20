package com.tencent.tauth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.tencent.connect.auth.QQAuth;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.share.QQShare;
import com.tencent.connect.share.QzoneShare;
import com.tencent.open.SocialApi;
import com.tencent.open.a.f;
import com.tencent.open.utils.Global;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.HttpUtils.HttpStatusException;
import com.tencent.open.utils.HttpUtils.NetworkUnavailableException;
import com.tencent.open.utils.SystemUtils;
import com.tencent.open.utils.TemporaryStorage;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class Tencent
{
  private static Tencent sInstance;
  private final QQAuth mQQAuth;
  
  private Tencent(String paramString, Context paramContext)
  {
    Global.setContext(paramContext.getApplicationContext());
    this.mQQAuth = QQAuth.createInstance(paramString, paramContext);
  }
  
  private static boolean checkManifestConfig(Context paramContext, String paramString)
  {
    try
    {
      ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), "com.tencent.tauth.AuthActivity");
      paramContext.getPackageManager().getActivityInfo(localComponentName, 0);
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      try
      {
        paramString = new ComponentName(paramContext.getPackageName(), "com.tencent.connect.common.AssistActivity");
        paramContext.getPackageManager().getActivityInfo(paramString, 0);
        return true;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        f.e("AndroidManifest.xml 没有检测到com.tencent.connect.common.AssistActivity", "没有在AndroidManifest.xml中检测到com.tencent.connect.common.AssistActivity,请加上com.tencent.connect.common.AssistActivity,详细信息请查看官网文档." + "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"portrait\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>");
      }
      paramContext = paramContext;
      paramContext = "没有在AndroidManifest.xml中检测到com.tencent.tauth.AuthActivity,请加上com.tencent.open.AuthActivity,并配置<data android:scheme=\"tencent" + paramString + "\" />,详细信息请查看官网文档.";
      f.e("AndroidManifest.xml 没有检测到com.tencent.tauth.AuthActivity", paramContext + "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.connect.util.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n     <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent" + paramString + "\" />\n" + "</intent-filter>\n" + "</activity>");
      return false;
    }
  }
  
  public static Tencent createInstance(String paramString, Context paramContext)
  {
    for (;;)
    {
      try
      {
        f.a("openSDK_LOG", "createInstance()  -- start");
        if (sInstance == null)
        {
          sInstance = new Tencent(paramString, paramContext);
          boolean bool = checkManifestConfig(paramContext, paramString);
          if (!bool)
          {
            paramString = null;
            return paramString;
          }
        }
        else
        {
          if (paramString.equals(sInstance.getAppId())) {
            continue;
          }
          sInstance.logout(paramContext);
          sInstance = new Tencent(paramString, paramContext);
          continue;
        }
        f.a("openSDK_LOG", "createInstance()  -- end");
      }
      finally {}
      paramString = sInstance;
    }
  }
  
  public static void handleResultData(Intent paramIntent, IUiListener paramIUiListener)
  {
    BaseApi.handleDataToListener(paramIntent, paramIUiListener);
  }
  
  public int ask(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    new SocialApi(this.mQQAuth.getQQToken()).ask(paramActivity, paramBundle, paramIUiListener);
    return 0;
  }
  
  public void checkLogin(IUiListener paramIUiListener)
  {
    this.mQQAuth.checkLogin(paramIUiListener);
  }
  
  public String getAccessToken()
  {
    return this.mQQAuth.getQQToken().getAccessToken();
  }
  
  public String getAppId()
  {
    return this.mQQAuth.getQQToken().getAppId();
  }
  
  public long getExpiresIn()
  {
    return this.mQQAuth.getQQToken().getExpireTimeInSecond();
  }
  
  public String getOpenId()
  {
    return this.mQQAuth.getQQToken().getOpenId();
  }
  
  public QQToken getQQToken()
  {
    return this.mQQAuth.getQQToken();
  }
  
  public int gift(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    new SocialApi(this.mQQAuth.getQQToken()).gift(paramActivity, paramBundle, paramIUiListener);
    return 0;
  }
  
  @Deprecated
  public void handleLoginData(Intent paramIntent, IUiListener paramIUiListener)
  {
    BaseApi.handleDataToListener(paramIntent, paramIUiListener);
  }
  
  public int invite(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    new SocialApi(this.mQQAuth.getQQToken()).invite(paramActivity, paramBundle, paramIUiListener);
    return 0;
  }
  
  public boolean isReady()
  {
    return (isSessionValid()) && (getOpenId() != null);
  }
  
  public boolean isSessionValid()
  {
    return this.mQQAuth.isSessionValid();
  }
  
  public boolean isSupportSSOLogin(Activity paramActivity)
  {
    if (SystemUtils.getAppVersionName(paramActivity, "com.tencent.mobileqq") == null) {
      return false;
    }
    return SystemUtils.checkMobileQQ(paramActivity);
  }
  
  public int login(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    return this.mQQAuth.login(paramActivity, paramString, paramIUiListener);
  }
  
  public int login(Fragment paramFragment, String paramString, IUiListener paramIUiListener)
  {
    return this.mQQAuth.login(paramFragment, paramString, paramIUiListener, "");
  }
  
  public int loginServerSide(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    return this.mQQAuth.login(paramActivity, paramString + ",server_side", paramIUiListener);
  }
  
  public int loginServerSide(Fragment paramFragment, String paramString, IUiListener paramIUiListener)
  {
    return this.mQQAuth.login(paramFragment, paramString + ",server_side", paramIUiListener, "");
  }
  
  public int loginWithOEM(Activity paramActivity, String paramString1, IUiListener paramIUiListener, String paramString2, String paramString3, String paramString4)
  {
    return this.mQQAuth.loginWithOEM(paramActivity, paramString1, paramIUiListener, paramString2, paramString3, paramString4);
  }
  
  public void logout(Context paramContext)
  {
    this.mQQAuth.getQQToken().setAccessToken(null, "0");
    this.mQQAuth.getQQToken().setOpenId(null);
  }
  
  public boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    return false;
  }
  
  public int reAuth(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    return this.mQQAuth.reAuth(paramActivity, paramString, paramIUiListener);
  }
  
  public void releaseResource()
  {
    TemporaryStorage.remove("shareToQQ");
    TemporaryStorage.remove("shareToQzone");
    TemporaryStorage.remove("sendToMyComputer");
    TemporaryStorage.remove("addToQQFavorites");
    TemporaryStorage.remove("shareToTroopBar");
  }
  
  public void reportDAU()
  {
    this.mQQAuth.reportDAU();
  }
  
  public JSONObject request(String paramString1, Bundle paramBundle, String paramString2)
    throws IOException, JSONException, HttpUtils.NetworkUnavailableException, HttpUtils.HttpStatusException
  {
    return HttpUtils.request(this.mQQAuth.getQQToken(), Global.getContext(), paramString1, paramBundle, paramString2);
  }
  
  public void requestAsync(String paramString1, Bundle paramBundle, String paramString2, IRequestListener paramIRequestListener, Object paramObject)
  {
    HttpUtils.requestAsync(this.mQQAuth.getQQToken(), Global.getContext(), paramString1, paramBundle, paramString2, paramIRequestListener);
  }
  
  public void setAccessToken(String paramString1, String paramString2)
  {
    f.a("openSDK_LOG", "setAccessToken(), expiresIn = " + paramString2 + "");
    this.mQQAuth.setAccessToken(paramString1, paramString2);
  }
  
  public void setOpenId(String paramString)
  {
    f.a("openSDK_LOG", "setOpenId() --start");
    this.mQQAuth.setOpenId(Global.getContext(), paramString);
    f.a("openSDK_LOG", "setOpenId() --end");
  }
  
  public void shareToQQ(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    new QQShare(paramActivity, this.mQQAuth.getQQToken()).shareToQQ(paramActivity, paramBundle, paramIUiListener);
  }
  
  public void shareToQzone(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    new QzoneShare(paramActivity, this.mQQAuth.getQQToken()).shareToQzone(paramActivity, paramBundle, paramIUiListener);
  }
  
  public int story(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    new SocialApi(this.mQQAuth.getQQToken()).story(paramActivity, paramBundle, paramIUiListener);
    return 0;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/tauth/Tencent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */