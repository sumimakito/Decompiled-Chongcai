package com.alipay.sdk.app;

import com.alipay.sdk.util.Utils;
import com.alipay.sdk.widget.SystemDefaultDialog;

class PayTask$6
  implements Runnable
{
  PayTask$6(PayTask paramPayTask) {}
  
  public void run()
  {
    if (Utils.b(PayTask.a(this.a), PayTask.i(this.a)))
    {
      Utils.a(PayTask.a(this.a), PayTask.i(this.a));
      PayTask.a(this.a, SystemDefaultDialog.a(PayTask.a(this.a), "提示", "是否取消安装？", "重新安装", new PayTask.6.1(this), "取消", new PayTask.6.2(this)));
      return;
    }
    synchronized (PayTask.a)
    {
      Result.a(Result.c());
    }
    try
    {
      PayTask.a.notify();
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/PayTask$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */