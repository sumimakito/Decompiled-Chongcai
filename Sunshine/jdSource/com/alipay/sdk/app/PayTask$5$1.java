package com.alipay.sdk.app;

import android.app.Activity;
import android.app.Dialog;

class PayTask$5$1
  implements Runnable
{
  PayTask$5$1(PayTask.5 param5) {}
  
  public void run()
  {
    if (PayTask.h(this.a.a) != null) {
      PayTask.h(this.a.a).dismiss();
    }
    PayTask.a(this.a.a, true);
    PayTask.a(this.a.a).unregisterReceiver(PayTask.c(this.a.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/PayTask$5$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */