import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.vertify.activity.free.dyn.SProductBase;

public final class lc
  implements Runnable
{
  public lc(SProductBase paramSProductBase) {}
  
  public final void run()
  {
    if (SProductBase.q(this.a) != null) {
      SProductBase.q(this.a).fullScroll(33);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */