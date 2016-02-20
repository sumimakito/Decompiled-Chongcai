import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.vertify.activity.persion.FindPass;

public final class ny
  extends Handler
{
  public ny(FindPass paramFindPass) {}
  
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
      FindPass.a(this.a, true);
      FindPass.a(this.a).dismiss();
    } while (!FindPass.a(this.a, str, "提交失败,请重试", "提交成功"));
    FindPass.b(this.a).setVisibility(0);
    FindPass.c(this.a).setVisibility(8);
    FindPass.d(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ny.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */