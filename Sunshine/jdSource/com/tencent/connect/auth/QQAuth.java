package com.tencent.connect.auth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import android.widget.Toast;
import com.tencent.connect.a.a;
import com.tencent.open.a.f;
import com.tencent.open.utils.ApkExternalInfoTool;
import com.tencent.open.utils.Global;
import com.tencent.tauth.IUiListener;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public class QQAuth
{
  private AuthAgent a;
  private QQToken b;
  
  private QQAuth(String paramString, Context paramContext)
  {
    f.c("openSDK_LOG", "new QQAuth() --start");
    this.b = new QQToken(paramString);
    this.a = new AuthAgent(this.b);
    a.c(paramContext, this.b);
    f.c("openSDK_LOG", "new QQAuth() --end");
  }
  
  private int a(Activity paramActivity, Fragment paramFragment, String paramString1, IUiListener paramIUiListener, String paramString2)
  {
    paramString2 = paramActivity.getApplicationContext().getPackageName();
    Iterator localIterator = paramActivity.getPackageManager().getInstalledApplications(128).iterator();
    ApplicationInfo localApplicationInfo;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localApplicationInfo = (ApplicationInfo)localIterator.next();
    } while (!paramString2.equals(localApplicationInfo.packageName));
    for (paramString2 = localApplicationInfo.sourceDir;; paramString2 = null)
    {
      if (paramString2 != null) {
        try
        {
          paramString2 = ApkExternalInfoTool.readChannelId(new File(paramString2));
          if (!TextUtils.isEmpty(paramString2))
          {
            f.b("openSDK_LOG", "-->login channelId: " + paramString2);
            int i = loginWithOEM(paramActivity, paramString1, paramIUiListener, paramString2, paramString2, "");
            return i;
          }
        }
        catch (IOException paramString2)
        {
          f.b("openSDK_LOG", "-->login get channel id exception." + paramString2.getMessage());
          paramString2.printStackTrace();
        }
      }
      f.b("openSDK_LOG", "-->login channelId is null ");
      com.tencent.connect.common.BaseApi.isOEM = false;
      return this.a.doLogin(paramActivity, paramString1, paramIUiListener, false, paramFragment);
    }
  }
  
  public static QQAuth createInstance(String paramString, Context paramContext)
  {
    Global.setContext(paramContext.getApplicationContext());
    f.c("openSDK_LOG", "QQAuth -- createInstance() --start");
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      localPackageManager.getActivityInfo(new ComponentName(paramContext.getPackageName(), "com.tencent.tauth.AuthActivity"), 0);
      localPackageManager.getActivityInfo(new ComponentName(paramContext.getPackageName(), "com.tencent.connect.common.AssistActivity"), 0);
      paramString = new QQAuth(paramString, paramContext);
      f.c("openSDK_LOG", "QQAuth -- createInstance()  --end");
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      f.b("openSDK_LOG", "createInstance() error --end", paramString);
      Toast.makeText(paramContext.getApplicationContext(), "请参照文档在Androidmanifest.xml加上AuthActivity和AssitActivity的定义 ", 1).show();
    }
    return null;
  }
  
  public void checkLogin(IUiListener paramIUiListener)
  {
    this.a.b(paramIUiListener);
  }
  
  public QQToken getQQToken()
  {
    return this.b;
  }
  
  public boolean isSessionValid()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("isSessionValid(), result = ");
    if (this.b.isSessionValid()) {}
    for (String str = "true";; str = "false")
    {
      f.a("openSDK_LOG", str + "");
      return this.b.isSessionValid();
    }
  }
  
  public int login(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    f.c("openSDK_LOG", "login()");
    return login(paramActivity, paramString, paramIUiListener, "");
  }
  
  public int login(Activity paramActivity, String paramString1, IUiListener paramIUiListener, String paramString2)
  {
    f.c("openSDK_LOG", "-->login activity: " + paramActivity);
    return a(paramActivity, null, paramString1, paramIUiListener, paramString2);
  }
  
  public int login(Fragment paramFragment, String paramString1, IUiListener paramIUiListener, String paramString2)
  {
    FragmentActivity localFragmentActivity = paramFragment.getActivity();
    f.c("openSDK_LOG", "-->login activity: " + localFragmentActivity);
    return a(localFragmentActivity, paramFragment, paramString1, paramIUiListener, paramString2);
  }
  
  @Deprecated
  public int loginWithOEM(Activity paramActivity, String paramString1, IUiListener paramIUiListener, String paramString2, String paramString3, String paramString4)
  {
    f.c("openSDK_LOG", "loginWithOEM");
    com.tencent.connect.common.BaseApi.isOEM = true;
    String str = paramString2;
    if (paramString2.equals("")) {
      str = "null";
    }
    paramString2 = paramString3;
    if (paramString3.equals("")) {
      paramString2 = "null";
    }
    paramString3 = paramString4;
    if (paramString4.equals("")) {
      paramString3 = "null";
    }
    com.tencent.connect.common.BaseApi.installChannel = paramString2;
    com.tencent.connect.common.BaseApi.registerChannel = str;
    com.tencent.connect.common.BaseApi.businessId = paramString3;
    return this.a.doLogin(paramActivity, paramString1, paramIUiListener);
  }
  
  public void logout(Context paramContext)
  {
    f.c("openSDK_LOG", "logout() --start");
    CookieSyncManager.createInstance(paramContext);
    setAccessToken(null, null);
    setOpenId(paramContext, null);
    f.c("openSDK_LOG", "logout() --end");
  }
  
  public boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    f.c("openSDK_LOG", "onActivityResult() ,resultCode = " + paramInt2 + "");
    return true;
  }
  
  public int reAuth(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    f.c("openSDK_LOG", "reAuth()");
    return this.a.doLogin(paramActivity, paramString, paramIUiListener, true, null);
  }
  
  public void reportDAU()
  {
    this.a.a(null);
  }
  
  public void setAccessToken(String paramString1, String paramString2)
  {
    f.a("openSDK_LOG", "setAccessToken(), validTimeInSecond = " + paramString2 + "");
    this.b.setAccessToken(paramString1, paramString2);
  }
  
  public void setOpenId(Context paramContext, String paramString)
  {
    f.a("openSDK_LOG", "setOpenId() --start");
    this.b.setOpenId(paramString);
    a.d(paramContext, this.b);
    f.a("openSDK_LOG", "setOpenId() --end");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/connect/auth/QQAuth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */