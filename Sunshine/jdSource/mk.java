import android.os.Handler;
import android.os.Message;
import cn.apppark.vertify.activity.free.self.SelfAnimaView;

public final class mk
  extends Handler
{
  public mk(SelfAnimaView paramSelfAnimaView) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      this.a.animationContinue();
      return;
    }
    this.a.animationEnd();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */