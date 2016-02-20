import android.app.Activity;
import android.os.Bundle;
import cn.apppark.vertify.activity.share.QzoneShareAct;
import com.tencent.tauth.Tencent;

public final class pu
  implements Runnable
{
  public pu(QzoneShareAct paramQzoneShareAct, Activity paramActivity, Bundle paramBundle) {}
  
  public final void run()
  {
    this.c.a.shareToQzone(this.a, this.b, new pv(this));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */