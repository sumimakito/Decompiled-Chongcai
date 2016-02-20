import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import cn.apppark.mcd.widget.MyEditText2;
import cn.apppark.vertify.activity.persion.SmsVertifyPhone;

public final class po
  extends Handler
{
  public po(SmsVertifyPhone paramSmsVertifyPhone) {}
  
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
        SmsVertifyPhone.a(this.a).dismiss();
        this.a.checkPhoneStateResult(str, SmsVertifyPhone.b(this.a).getText().toString());
        return;
        SmsVertifyPhone.c(this.a).dismiss();
        this.a.checkSmsCodeResult(str, 1, SmsVertifyPhone.b(this.a).getText().toString());
        return;
        SmsVertifyPhone.d(this.a).dismiss();
      } while (!SmsVertifyPhone.a(this.a, str, "提交失败,请重试"));
      this.a.setResult(1);
      this.a.finish();
      return;
    case 1: 
      SmsVertifyPhone.e(this.a).dismiss();
      this.a.checkPicResult(str);
      return;
    }
    SmsVertifyPhone.f(this.a).setText("(" + this.a.waitSecond + "秒)");
    if (this.a.waitSecond <= 0)
    {
      SmsVertifyPhone.f(this.a).setText("获取验证码");
      SmsVertifyPhone.f(this.a).setBackgroundResource(2130837788);
      SmsVertifyPhone.f(this.a).setClickable(true);
      return;
    }
    SmsVertifyPhone.f(this.a).setBackgroundResource(2130837789);
    SmsVertifyPhone.f(this.a).setClickable(false);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/po.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */