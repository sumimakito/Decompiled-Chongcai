import cn.apppark.vertify.activity.tieba.TMain;

public final class se
  implements Runnable
{
  public se(TMain paramTMain) {}
  
  public final void run()
  {
    while (TMain.a(this.a))
    {
      TMain.a(this.a, 4);
      try
      {
        Thread.sleep(30000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/se.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */