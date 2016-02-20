import cn.apppark.mcd.widget.PullDownListViewAutoLoad.OnFootRefreshListener;
import cn.apppark.vertify.activity.free.dyn.SProductBase;

public final class ld
  implements PullDownListViewAutoLoad.OnFootRefreshListener
{
  public ld(SProductBase paramSProductBase) {}
  
  public final void onFootRefresh()
  {
    SProductBase.a(this.a, SProductBase.b(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */