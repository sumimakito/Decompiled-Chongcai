import android.os.MessageQueue.IdleHandler;
import android.widget.PopupWindow;
import cn.apppark.mcd.widget.Mp4VideoView;
import cn.apppark.vertify.activity.free.self.Mp4PlayerActivity;

public final class lw
  implements MessageQueue.IdleHandler
{
  public lw(Mp4PlayerActivity paramMp4PlayerActivity) {}
  
  public final boolean queueIdle()
  {
    if ((Mp4PlayerActivity.a(this.a) != null) && (Mp4PlayerActivity.b(this.a).isShown()))
    {
      Mp4PlayerActivity.a(this.a).showAtLocation(Mp4PlayerActivity.b(this.a), 80, 0, 0);
      Mp4PlayerActivity.a(this.a).update(0, 0, Mp4PlayerActivity.a(), Mp4PlayerActivity.b());
    }
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */