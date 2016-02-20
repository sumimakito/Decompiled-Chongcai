package com.tencent.tauth;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.connect.auth.AuthDialog;
import com.tencent.connect.auth.AuthMap;
import com.tencent.connect.auth.AuthMap.Auth;
import com.tencent.connect.common.AssistActivity;
import com.tencent.connect.common.BaseApi;
import com.tencent.open.a.f;
import com.tencent.open.utils.SystemUtils;
import com.tencent.open.utils.TemporaryStorage;
import com.tencent.open.utils.Util;
import org.json.JSONObject;

public class AuthActivity
  extends Activity
{
  private static final String ACTION_ADD_TO_QQFAVORITES = "addToQQFavorites";
  public static final String ACTION_KEY = "action";
  private static final String ACTION_SEND_TO_MY_COMPUTER = "sendToMyComputer";
  public static final String ACTION_SHARE_PRIZE = "sharePrize";
  private static final String ACTION_SHARE_TO_QQ = "shareToQQ";
  private static final String ACTION_SHARE_TO_QZONE = "shareToQzone";
  private static final String ACTION_SHARE_TO_TROOP_BAR = "shareToTroopBar";
  private static final String SHARE_PRIZE_ACTIVITY_ID = "activityid";
  private static final String TAG = "openSDK_LOG.AuthActivity";
  private static int mShareQzoneBackTime = 0;
  
  private void execAuthCallback(Bundle paramBundle, String paramString)
  {
    if ((paramBundle == null) || (paramString == null))
    {
      finish();
      return;
    }
    AuthMap localAuthMap = AuthMap.getInstance();
    String str = paramBundle.getString("serial");
    AuthMap.Auth localAuth = localAuthMap.get(str);
    if (localAuth != null)
    {
      if (paramString.indexOf("://cancel") == -1) {
        break label77;
      }
      localAuth.listener.onCancel();
      localAuth.dialog.dismiss();
    }
    for (;;)
    {
      localAuthMap.remove(str);
      finish();
      return;
      label77:
      paramString = paramBundle.getString("access_token");
      if (paramString != null) {
        paramBundle.putString("access_token", localAuthMap.decode(paramString, localAuth.key));
      }
      paramBundle = Util.encodeUrl(paramBundle);
      paramBundle = Util.decodeUrlToJson(new JSONObject(), paramBundle);
      paramString = paramBundle.optString("cb");
      if (!"".equals(paramString))
      {
        localAuth.dialog.callJs(paramString, paramBundle.toString());
      }
      else
      {
        localAuth.listener.onComplete(paramBundle);
        localAuth.dialog.dismiss();
      }
    }
  }
  
  private void handleActionUri(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.toString() == null) || (paramUri.toString().equals("")))
    {
      finish();
      return;
    }
    Object localObject2 = paramUri.toString();
    paramUri = Util.decodeUrl(((String)localObject2).substring(((String)localObject2).indexOf("#") + 1));
    if (paramUri == null)
    {
      finish();
      return;
    }
    Object localObject1 = paramUri.getString("action");
    f.b("openSDK_LOG.AuthActivity", "-->handleActionUri, action: " + (String)localObject1);
    if (localObject1 == null)
    {
      execAuthCallback(paramUri, (String)localObject2);
      return;
    }
    if ((((String)localObject1).equals("shareToQQ")) || (((String)localObject1).equals("shareToQzone")) || (((String)localObject1).equals("sendToMyComputer")) || (((String)localObject1).equals("shareToTroopBar")))
    {
      if ((((String)localObject1).equals("shareToQzone")) && (SystemUtils.getAppVersionName(this, "com.tencent.mobileqq") != null) && (SystemUtils.compareQQVersion(this, "5.2.0") < 0))
      {
        mShareQzoneBackTime += 1;
        if (mShareQzoneBackTime == 2)
        {
          mShareQzoneBackTime = 0;
          finish();
          return;
        }
      }
      localObject1 = new Intent(this, AssistActivity.class);
      ((Intent)localObject1).putExtras(paramUri);
      ((Intent)localObject1).setFlags(603979776);
      AssistActivity.hackAuthActivity = true;
      startActivity((Intent)localObject1);
      finish();
      return;
    }
    if (((String)localObject1).equals("addToQQFavorites"))
    {
      localObject2 = getIntent();
      ((Intent)localObject2).putExtras(paramUri);
      ((Intent)localObject2).putExtra("key_action", "action_share");
      paramUri = TemporaryStorage.get((String)localObject1);
      if (paramUri != null) {
        BaseApi.handleDataToListener((Intent)localObject2, (IUiListener)paramUri);
      }
      finish();
      return;
    }
    if (((String)localObject1).equals("sharePrize"))
    {
      localObject2 = getPackageManager().getLaunchIntentForPackage(getPackageName());
      localObject1 = paramUri.getString("response");
      paramUri = "";
      try
      {
        localObject1 = Util.parseJson((String)localObject1).getString("activityid");
        paramUri = (Uri)localObject1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          f.e("openSDK_LOG.AuthActivity", "sharePrize parseJson has exception.");
        }
      }
      if (!TextUtils.isEmpty(paramUri))
      {
        ((Intent)localObject2).putExtra("sharePrize", true);
        localObject1 = new Bundle();
        ((Bundle)localObject1).putString("activityid", paramUri);
        ((Intent)localObject2).putExtras((Bundle)localObject1);
      }
      startActivity((Intent)localObject2);
      finish();
      return;
    }
    execAuthCallback(paramUri, (String)localObject2);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getIntent() == null) {
      return;
    }
    paramBundle = null;
    try
    {
      Uri localUri = getIntent().getData();
      paramBundle = localUri;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        f.e("openSDK_LOG.AuthActivity", "-->onCreate, getIntent().getData() has exception! " + localException.getMessage());
      }
    }
    f.b("openSDK_LOG.AuthActivity", "-->onCreate, uri: " + paramBundle);
    handleActionUri(paramBundle);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/tauth/AuthActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */