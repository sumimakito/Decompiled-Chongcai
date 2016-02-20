import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import cn.apppark.vertify.activity.persion.UpdateInfo;
import cn.apppark.vertify.base.ClientPersionInfo;

public final class pq
  extends Handler
{
  public pq(UpdateInfo paramUpdateInfo) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    UpdateInfo.c(this.a).dismiss();
    switch (paramMessage.what)
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return;
            } while (!UpdateInfo.a(this.a, str, "密码修改失败", "密码修改成功"));
            this.a.finish();
            return;
            UpdateInfo.d(this.a).dismiss();
          } while (!UpdateInfo.b(this.a, str, "昵称修改失败,请重试", "昵称修改成功"));
          this.a.a.updateUserNikeName(UpdateInfo.e(this.a).getText().toString());
          this.a.setResult(1);
          this.a.finish();
          return;
          UpdateInfo.f(this.a).dismiss();
        } while (!UpdateInfo.c(this.a, str, "邮箱修改失败,请重试", "邮箱修改成功"));
        this.a.a.updateUserEmail(UpdateInfo.g(this.a).getText().toString());
        this.a.finish();
        return;
        UpdateInfo.h(this.a).dismiss();
      } while (!UpdateInfo.d(this.a, str, "性别修改失败,请重试", "性别修改成功"));
      this.a.a.updateUserSex(UpdateInfo.i(this.a));
      this.a.finish();
      return;
      UpdateInfo.j(this.a).dismiss();
    } while (!UpdateInfo.e(this.a, str, "个性签名修改失败,请重试", "个性签名修改成功"));
    this.a.a.updateUserSign(UpdateInfo.a(this.a).getText().toString());
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */