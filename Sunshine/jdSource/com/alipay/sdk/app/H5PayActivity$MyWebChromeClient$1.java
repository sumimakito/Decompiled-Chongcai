package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsResult;

class H5PayActivity$MyWebChromeClient$1
  implements DialogInterface.OnClickListener
{
  H5PayActivity$MyWebChromeClient$1(H5PayActivity.MyWebChromeClient paramMyWebChromeClient, JsResult paramJsResult) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.cancel();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/H5PayActivity$MyWebChromeClient$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */