import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.activity.persion.SetInfo;

public final class ph
  extends Thread
{
  private ph(SetInfo paramSetInfo) {}
  
  public final void run()
  {
    this.a.a = PublicUtil.calculateFileSize(YYGYContants.baseImgCachePath);
    Message localMessage = SetInfo.b(this.a).obtainMessage(6);
    SetInfo.b(this.a).sendMessage(localMessage);
    super.run();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */