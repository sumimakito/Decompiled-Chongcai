import android.os.Handler;
import cn.apppark.vertify.activity.persion.SmsBaseAct;

public final class pj
  implements Runnable
{
  public pj(SmsBaseAct paramSmsBaseAct) {}
  
  public final void run()
  {
    while (this.a.waitSecond > 0) {
      try
      {
        Thread.sleep(1000L);
        this.a.mHandler.sendEmptyMessage(4);
        SmsBaseAct localSmsBaseAct = this.a;
        localSmsBaseAct.waitSecond -= 1;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */