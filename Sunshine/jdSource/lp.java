import cn.apppark.vertify.activity.free.dyn.STogetherBase;

public final class lp
  implements Runnable
{
  public lp(STogetherBase paramSTogetherBase) {}
  
  public final void run()
  {
    while (!STogetherBase.p(this.a)) {
      try
      {
        Thread.sleep(4000L);
        if (STogetherBase.e(this.a) != null) {
          STogetherBase.e(this.a).sendEmptyMessage(3);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */