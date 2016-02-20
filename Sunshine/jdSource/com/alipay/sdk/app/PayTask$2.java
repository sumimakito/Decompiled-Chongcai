package com.alipay.sdk.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Handler;
import com.alipay.sdk.util.FileDownloader;
import com.alipay.sdk.widget.Loading;

class PayTask$2
  implements DialogInterface.OnCancelListener
{
  PayTask$2(PayTask paramPayTask, Loading paramLoading) {}
  
  public void onCancel(DialogInterface arg1)
  {
    this.a.c();
    PayTask.b(this.b).c();
    PayTask.a(this.b).unregisterReceiver(PayTask.c(this.b));
    PayTask.e(this.b).removeCallbacks(PayTask.d(this.b));
    synchronized (PayTask.a)
    {
      Result.a(Result.b());
    }
    try
    {
      PayTask.a.notify();
      return;
      localObject = finally;
      throw ((Throwable)localObject);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/PayTask$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */