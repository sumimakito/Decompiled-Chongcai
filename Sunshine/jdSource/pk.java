import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import cn.apppark.mcd.widget.MyEditText2;
import cn.apppark.vertify.activity.persion.SmsFindPass;

public final class pk
  extends Handler
{
  public pk(SmsFindPass paramSmsFindPass) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    case 3: 
      SmsFindPass.a(this.a).dismiss();
      this.a.checkPhoneStateResult(str, SmsFindPass.b(this.a).getText().toString());
      return;
    case 2: 
      SmsFindPass.c(this.a).dismiss();
      this.a.checkSmsCodeResult(str, 1, SmsFindPass.b(this.a).getText().toString());
      return;
    case 12: 
      SmsFindPass.d(this.a).dismiss();
      SmsFindPass.a(this.a, str, "提交失败,请重试", "密码重置成功");
      this.a.finish();
      return;
    case 1: 
      SmsFindPass.e(this.a).dismiss();
      this.a.checkPicResult(str);
      return;
    }
    SmsFindPass.f(this.a).setText("(" + this.a.waitSecond + "秒)");
    if (this.a.waitSecond <= 0)
    {
      SmsFindPass.f(this.a).setText("获取验证码");
      SmsFindPass.f(this.a).setBackgroundResource(2130837788);
      SmsFindPass.f(this.a).setClickable(true);
      return;
    }
    SmsFindPass.f(this.a).setBackgroundResource(2130837789);
    SmsFindPass.f(this.a).setClickable(false);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */