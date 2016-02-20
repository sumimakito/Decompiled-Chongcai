import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.BuyLoginVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.vertify.activity.persion.Login;

public final class nz
  extends Handler
{
  public nz(Login paramLogin) {}
  
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
      Login.a(this.a, true);
      Login.a(this.a).dismiss();
    } while (!Login.a(this.a, str, "登陆失败,请重试"));
    Login.a(this.a, (BuyLoginVo)JsonParserBuy.parseJson2Vo(str, BuyLoginVo.class));
    Login.b(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */