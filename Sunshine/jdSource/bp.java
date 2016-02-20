import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.vertify.activity.buy.BuyAddAddress;

public final class bp
  extends Handler
{
  public bp(BuyAddAddress paramBuyAddAddress) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    }
    do
    {
      return;
      BuyAddAddress.a(this.a, true);
      BuyAddAddress.h(this.a).setVisibility(0);
      BuyAddAddress.i(this.a).dismiss();
    } while (!BuyAddAddress.a(this.a, str, "地址添加失败,请重试", "地址添加成功"));
    HQCHApplication.instance.initToast("地址添加成功", 0);
    this.a.setResult(1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */