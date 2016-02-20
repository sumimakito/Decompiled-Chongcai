import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import cn.apppark.mcd.vo.buy.BuyRegVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.MyEditText2;
import cn.apppark.vertify.activity.persion.SmsRegNew;
import cn.apppark.vertify.base.ClientPersionInfo;

public final class pn
  extends Handler
{
  public pn(SmsRegNew paramSmsRegNew) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
    case 3: 
    case 2: 
    case 12: 
      do
      {
        return;
        SmsRegNew.a(this.a).dismiss();
        this.a.checkPhoneStateResult(str, SmsRegNew.b(this.a).getText().toString());
        return;
        SmsRegNew.c(this.a).dismiss();
        this.a.checkSmsCodeResult(str, 1, SmsRegNew.b(this.a).getText().toString());
        return;
        SmsRegNew.d(this.a).dismiss();
        SmsRegNew.a(this.a, (BuyRegVo)JsonParserBuy.parseJson2Vo(str, BuyRegVo.class));
        if (SmsRegNew.a(this.a, str, this.a.getText(2131230782).toString(), this.a.getText(2131230783).toString()))
        {
          if (SmsRegNew.e(this.a) != null)
          {
            SmsRegNew.f(this.a).updateUserId(SmsRegNew.e(this.a).getId());
            SmsRegNew.g(this.a).updatePhone(SmsRegNew.b(this.a).getText().toString());
            SmsRegNew.i(this.a).updateUserNikeName(SmsRegNew.h(this.a).getText().toString());
            SmsRegNew.j(this.a).updateUserSex(SmsRegNew.e(this.a).getSex());
            SmsRegNew.k(this.a).updateUserEmail(SmsRegNew.e(this.a).getEmail());
            SmsRegNew.l(this.a).updateUserHeadFace(null);
          }
          this.a.setResult(1);
          this.a.finish();
          return;
        }
      } while ((SmsRegNew.e(this.a) == null) || (!"2".equals(SmsRegNew.e(this.a).getRetFlag())));
      this.a.setResult(-1);
      this.a.finish();
      return;
    case 1: 
      SmsRegNew.m(this.a).dismiss();
      this.a.checkPicResult(str);
      return;
    }
    SmsRegNew.n(this.a).setText("(" + this.a.waitSecond + "秒)");
    if (this.a.waitSecond <= 0)
    {
      SmsRegNew.n(this.a).setText("获取验证码");
      SmsRegNew.n(this.a).setBackgroundResource(2130837788);
      SmsRegNew.n(this.a).setClickable(true);
      return;
    }
    SmsRegNew.n(this.a).setBackgroundResource(2130837789);
    SmsRegNew.n(this.a).setClickable(false);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */