package com.alipay.sdk.app;

import com.alipay.sdk.util.FileDownloader;
import com.alipay.sdk.widget.SystemDefaultDialog;

class PayTask$4
  implements Runnable
{
  PayTask$4(PayTask paramPayTask) {}
  
  public void run()
  {
    if (PayTask.b(this.a) != null) {
      PayTask.b(this.a).c();
    }
    SystemDefaultDialog.a(PayTask.a(this.a), "提示", "下载安装包失败，是否重试？", "重试", new PayTask.4.1(this), "取消", new PayTask.4.2(this));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/PayTask$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */