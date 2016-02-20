import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.BuyLoginVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.vertify.activity.persion.SmsLogin;

public final class pm
  extends Handler
{
  public pm(SmsLogin paramSmsLogin) {}
  
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
      SmsLogin.b(this.a).dismiss();
    } while (!SmsLogin.a(this.a, str, "登陆失败,请重试"));
    SmsLogin.a(this.a, (BuyLoginVo)JsonParserBuy.parseJson2Vo(str, BuyLoginVo.class));
    SmsLogin.c(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */