import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.vertify.activity.buy.BuyProCommentSub;

public final class eu
  extends Handler
{
  private eu(BuyProCommentSub paramBuyProCommentSub) {}
  
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
      BuyProCommentSub.a(this.a).dismiss();
    } while (!BuyProCommentSub.a(this.a, str, "提交失败,请重试", "提交成功"));
    this.a.setResult(1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/eu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */