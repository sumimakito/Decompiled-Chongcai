package com.alipay.sdk.widget;

import android.app.ProgressDialog;
import android.content.DialogInterface.OnCancelListener;

class Loading$1
  implements Runnable
{
  Loading$1(Loading paramLoading, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener, CharSequence paramCharSequence) {}
  
  public void run()
  {
    if (Loading.a(this.d) == null) {
      Loading.a(this.d, new ProgressDialog(Loading.b(this.d)));
    }
    Loading.a(this.d).setCancelable(this.a);
    Loading.a(this.d).setOnCancelListener(this.b);
    Loading.a(this.d).setMessage(this.c);
    try
    {
      Loading.a(this.d).show();
      return;
    }
    catch (Exception localException)
    {
      Loading.a(this.d, null);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/widget/Loading$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */