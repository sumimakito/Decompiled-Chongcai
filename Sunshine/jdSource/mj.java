import android.os.Handler;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfAnimaItemVo;
import cn.apppark.vertify.activity.free.self.SelfAnimaView;
import java.util.ArrayList;

public final class mj
  implements Runnable
{
  public mj(SelfAnimaView paramSelfAnimaView) {}
  
  public final void run()
  {
    while (!SelfAnimaView.b(this.a)) {
      try
      {
        Thread.sleep(FunctionPublic.str2int(SelfAnimaView.c(this.a).getStyle_playDuration()) / SelfAnimaView.d(this.a).size());
        if (SelfAnimaView.e(this.a) != null) {
          SelfAnimaView.e(this.a).sendEmptyMessage(1);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */