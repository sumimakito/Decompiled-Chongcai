import android.app.Instrumentation;
import cn.apppark.ckj10185912.Main;

public final class a
  extends Thread
{
  public a(Main paramMain) {}
  
  public final void run()
  {
    try
    {
      new Instrumentation().sendKeyDownUpSync(82);
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */