package com.alipay.sdk.app;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;

class H5AuthActivity$1
  implements DownloadListener
{
  H5AuthActivity$1(H5AuthActivity paramH5AuthActivity) {}
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    paramString1 = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
    this.a.startActivity(paramString1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/H5AuthActivity$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */