package com.alipay.sdk.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class PayTask$6$2
  implements DialogInterface.OnClickListener
{
  PayTask$6$2(PayTask.6 param6) {}
  
  public void onClick(DialogInterface arg1, int paramInt)
  {
    PayTask.a(this.a.a).unregisterReceiver(PayTask.c(this.a.a));
    PayTask.a(this.a.a, false);
    Result.a(Result.b());
    try
    {
      synchronized (PayTask.a)
      {
        PayTask.a.notify();
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/PayTask$6$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */