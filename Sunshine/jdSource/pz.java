import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import cn.apppark.vertify.activity.share.SinaShareAct;

public final class pz
  extends Handler
{
  private pz(SinaShareAct paramSinaShareAct) {}
  
  public final void handleMessage(Message paramMessage)
  {
    SinaShareAct.d(this.a).setVisibility(8);
    switch (paramMessage.what)
    {
    case 0: 
    default: 
      return;
    case 1: 
      this.a.setResult(1);
      this.a.finish();
      return;
    case -1: 
      this.a.setResult(-1);
      this.a.finish();
      return;
    }
    this.a.setResult(-1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */