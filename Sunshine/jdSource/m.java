import android.os.Process;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.PublicUtil;

public final class m
  implements Runnable
{
  public final void run()
  {
    PublicUtil.a(HQCHApplication.getInstance().getResourceDir());
    try
    {
      Thread.sleep(3000L);
      System.exit(0);
      Process.killProcess(Process.myPid());
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */