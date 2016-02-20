import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.activity.persion.SetInfo;

public final class pi
  extends Thread
{
  private pi(SetInfo paramSetInfo) {}
  
  public final void run()
  {
    PublicUtil.deleteFiles(YYGYContants.baseImgCachePath);
    SetInfo.b(this.a).sendEmptyMessage(5);
    this.a.a = 0.0D;
    Message localMessage = SetInfo.b(this.a).obtainMessage(6);
    SetInfo.b(this.a).sendMessage(localMessage);
    super.run();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */