package com.alipay.sdk.app;

import android.os.Handler;
import com.alipay.sdk.util.FileDownloader.IDownloadProgress;
import com.alipay.sdk.widget.Loading;

class PayTask$3
  implements FileDownloader.IDownloadProgress
{
  PayTask$3(PayTask paramPayTask, Loading paramLoading) {}
  
  public final void a()
  {
    this.a.c();
    PayTask.e(this.b).removeCallbacks(PayTask.d(this.b));
    PayTask.f(this.b);
  }
  
  public final void b() {}
  
  public final void c()
  {
    this.a.c();
    PayTask.e(this.b).post(PayTask.d(this.b));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/PayTask$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */