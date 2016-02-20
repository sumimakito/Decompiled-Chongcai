import cn.apppark.mcd.widget.PullDownListView.OnFootRefreshListener;
import cn.apppark.vertify.activity.soft.Soft;

public final class qs
  implements PullDownListView.OnFootRefreshListener
{
  public qs(Soft paramSoft) {}
  
  public final void onFootRefresh()
  {
    Soft.a(this.a, Soft.f(this.a), 4, "downTop", false, "");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */