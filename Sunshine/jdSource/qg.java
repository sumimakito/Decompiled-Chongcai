import cn.apppark.mcd.widget.PullDownListView.OnRefreshListener;
import cn.apppark.vertify.activity.soft.Soft;

public final class qg
  implements PullDownListView.OnRefreshListener
{
  public qg(Soft paramSoft) {}
  
  public final void onRefresh()
  {
    Soft.c(this.a, 1);
    Soft.a(this.a, Soft.i(this.a), 8, "need", false, "");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */