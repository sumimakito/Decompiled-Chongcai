import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.widget.DialogProgress;
import cn.apppark.vertify.network.VersionUpdateManager;

public final class wl
  extends Handler
{
  public wl(VersionUpdateManager paramVersionUpdateManager) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      VersionUpdateManager.b(this.a).setProgress(VersionUpdateManager.a(this.a));
      return;
    case 2: 
      VersionUpdateManager.b(this.a).dismiss();
      VersionUpdateManager.c(this.a);
      return;
    }
    VersionUpdateManager.b(this.a).dismiss();
    HQCHApplication.instance.initToast(2131230742, 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */