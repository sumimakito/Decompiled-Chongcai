package com.alipay.sdk.auth;

import android.webkit.WebView;

class AuthActivity$10
  implements Runnable
{
  AuthActivity$10(AuthActivity paramAuthActivity, String paramString) {}
  
  public void run()
  {
    try
    {
      AuthActivity.d(this.b).loadUrl("javascript:" + this.a);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/auth/AuthActivity$10.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */