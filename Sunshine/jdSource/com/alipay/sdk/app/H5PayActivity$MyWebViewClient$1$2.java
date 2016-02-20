package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

class H5PayActivity$MyWebViewClient$1$2
  implements DialogInterface.OnClickListener
{
  H5PayActivity$MyWebViewClient$1$2(H5PayActivity.MyWebViewClient.1 param1) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.cancel();
    H5PayActivity.a(this.a.b.a, false);
    Result.a(Result.b());
    this.a.b.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/H5PayActivity$MyWebViewClient$1$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */