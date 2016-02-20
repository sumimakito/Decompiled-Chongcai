import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import cn.apppark.vertify.activity.buy.BuyProductStandard;

public final class fl
  extends Handler
{
  public fl(BuyProductStandard paramBuyProductStandard) {}
  
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
      BuyProductStandard.d(this.a).dismiss();
    } while (!BuyProductStandard.a(this.a, str, "加入购物车失败", "加入购物车成功"));
    this.a.setResult(Integer.parseInt(BuyProductStandard.e(this.a).getText().toString()));
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */