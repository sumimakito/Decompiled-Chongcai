import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.vertify.activity.free.dyn.DynMsgSubmit5001;

public final class ic
  extends Handler
{
  private ic(DynMsgSubmit5001 paramDynMsgSubmit5001) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    }
    do
    {
      return;
      DynMsgSubmit5001.a(this.a, true);
      this.a.c.dismiss();
    } while (!YYGYContants.checkResult(str, 2131230784, 2131230785));
    DynMsgSubmit5001.f(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */