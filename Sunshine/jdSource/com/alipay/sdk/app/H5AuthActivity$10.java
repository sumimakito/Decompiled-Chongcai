package com.alipay.sdk.app;

import android.webkit.WebView;

class H5AuthActivity$10
  implements Runnable
{
  H5AuthActivity$10(H5AuthActivity paramH5AuthActivity, String paramString) {}
  
  public void run()
  {
    try
    {
      H5AuthActivity.d(this.b).loadUrl("javascript:" + this.a);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/H5AuthActivity$10.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */