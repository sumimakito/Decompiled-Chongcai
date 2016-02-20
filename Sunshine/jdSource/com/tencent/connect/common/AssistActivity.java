package com.tencent.connect.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import com.tencent.open.utils.TemporaryStorage;
import com.tencent.open.utils.Util;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONObject;

public class AssistActivity
  extends Activity
{
  private static final String RESTART_FLAG = "RESTART_FLAG";
  private static final String TAG = "AssistActivity";
  public static boolean hackAuthActivity = false;
  public static boolean hackShareSend;
  public static boolean isQQMobileShare = false;
  private static BaseApi sApiObject;
  private BaseApi mAPiObject;
  
  static
  {
    hackShareSend = false;
  }
  
  public static Intent getAssistActivityIntent(Context paramContext)
  {
    return new Intent(paramContext, AssistActivity.class);
  }
  
  private void openBrowser(Bundle paramBundle)
  {
    String str2 = paramBundle.getString("viaShareType");
    Object localObject = paramBundle.getString("callbackAction");
    String str4 = paramBundle.getString("url");
    String str3 = paramBundle.getString("openId");
    String str5 = paramBundle.getString("appId");
    paramBundle = "";
    String str1 = "";
    if ("shareToQQ".equals(localObject))
    {
      paramBundle = "ANDROIDQQ.SHARETOQQ.XX";
      str1 = "10";
      if (Util.openBrowser(this, str4)) {
        break label160;
      }
      localObject = (IUiListener)TemporaryStorage.get((String)localObject);
      if (localObject != null) {
        ((IUiListener)localObject).onError(new UiError(-6, "打开浏览器失败!", null));
      }
      d.a().a(str3, str5, paramBundle, str1, "3", "1", str2, "0", "2", "0");
      finish();
    }
    for (;;)
    {
      getIntent().removeExtra("shareH5");
      return;
      if (!"shareToQzone".equals(localObject)) {
        break;
      }
      paramBundle = "ANDROIDQQ.SHARETOQZ.XX";
      str1 = "11";
      break;
      label160:
      d.a().a(str3, str5, paramBundle, str1, "3", "0", str2, "0", "2", "0");
    }
  }
  
  public static void setApiObject(BaseApi paramBaseApi)
  {
    sApiObject = paramBaseApi;
  }
  
  public static void setResultDataForLogin(Activity paramActivity, Intent paramIntent)
  {
    if (paramActivity == null) {}
    for (;;)
    {
      return;
      if (paramIntent == null)
      {
        paramActivity.setResult(10101, paramIntent);
        return;
      }
      try
      {
        String str = paramIntent.getStringExtra("key_response");
        f.b("AssistActivity", "AssistActivity--setResultDataForLogin-- " + str);
        if (!TextUtils.isEmpty(str))
        {
          Object localObject = new JSONObject(str);
          str = ((JSONObject)localObject).optString("openid");
          localObject = ((JSONObject)localObject).optString("access_token");
          if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty((CharSequence)localObject)))
          {
            paramActivity.setResult(10101, paramIntent);
            return;
          }
        }
      }
      catch (Exception paramActivity)
      {
        paramActivity.printStackTrace();
        return;
      }
    }
    paramActivity.setResult(12345, paramIntent);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    f.b("AssistActivity", "AssistActivity--onActivityResult--" + paramInt2 + " data=" + paramIntent);
    f.b("AssistActivity", "--requestCode: " + paramInt1 + " | resultCode: " + paramInt2 + " | data: " + paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 0)
    {
      if (!isFinishing()) {
        finish();
      }
      return;
    }
    if (paramIntent != null) {
      paramIntent.putExtra("key_action", "action_login");
    }
    if (this.mAPiObject != null)
    {
      f.b("AssistActivity", "AssistActivity--onActivityResult-- mAPiObject != null");
      this.mAPiObject.onActivityResult(this, paramInt1, paramInt2, paramIntent);
    }
    for (;;)
    {
      finish();
      return;
      f.b("AssistActivity", "AssistActivity--onActivityResult-- mAPiObject == null");
      setResultDataForLogin(this, paramIntent);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool = false;
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    f.b("AssistActivity", "AssistActivity--onCreate--");
    if (sApiObject == null) {
      return;
    }
    this.mAPiObject = sApiObject;
    sApiObject = null;
    Intent localIntent = this.mAPiObject.getActivityIntent();
    if (localIntent == null) {}
    Bundle localBundle;
    for (int i = 0;; i = localIntent.getIntExtra("key_request_code", 0))
    {
      localBundle = getIntent().getBundleExtra("h5_share_data");
      if (paramBundle != null) {
        bool = paramBundle.getBoolean("RESTART_FLAG");
      }
      if (bool) {
        break;
      }
      if (localBundle != null) {
        break label106;
      }
      startActivityForResult(localIntent, i);
      return;
    }
    label106:
    openBrowser(localBundle);
  }
  
  protected void onDestroy()
  {
    f.b("AssistActivity", "-->onDestroy");
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    Object localObject = TemporaryStorage.get(paramIntent.getStringExtra("action"));
    StringBuilder localStringBuilder = new StringBuilder().append("AssistActivity--onNewIntent--");
    String str;
    if (localObject == null)
    {
      str = "mAPiObject = null";
      f.b("AssistActivity", str);
      paramIntent.putExtra("key_action", "action_share");
      if (localObject == null) {
        break label94;
      }
      BaseApi.handleDataToListener(paramIntent, (IUiListener)localObject);
    }
    for (;;)
    {
      if (!isFinishing()) {
        finish();
      }
      return;
      str = "mAPiObject != null";
      break;
      label94:
      setResult(-1, paramIntent);
    }
  }
  
  protected void onPause()
  {
    f.b("AssistActivity", "-->onPause");
    super.onPause();
  }
  
  protected void onResume()
  {
    f.b("AssistActivity", "-->onResume");
    super.onResume();
    Intent localIntent = getIntent();
    if (localIntent.getBooleanExtra("is_login", false)) {}
    do
    {
      return;
      if (!localIntent.getBooleanExtra("is_qq_mobile_share", false))
      {
        if ((!hackShareSend) && (!isFinishing())) {
          finish();
        }
        hackShareSend = false;
      }
    } while (!hackAuthActivity);
    hackAuthActivity = false;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    f.b("AssistActivity", "AssistActivity--onSaveInstanceState--");
    paramBundle.putBoolean("RESTART_FLAG", true);
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStart()
  {
    f.b("AssistActivity", "-->onStart");
    super.onStart();
  }
  
  protected void onStop()
  {
    f.b("AssistActivity", "-->onStop");
    super.onStop();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/connect/common/AssistActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */