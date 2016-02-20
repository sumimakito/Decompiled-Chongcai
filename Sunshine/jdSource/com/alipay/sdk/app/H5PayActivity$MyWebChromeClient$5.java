package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;

class H5PayActivity$MyWebChromeClient$5
  implements DialogInterface.OnClickListener
{
  H5PayActivity$MyWebChromeClient$5(H5PayActivity.MyWebChromeClient paramMyWebChromeClient, JsPromptResult paramJsPromptResult) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.cancel();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/H5PayActivity$MyWebChromeClient$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */