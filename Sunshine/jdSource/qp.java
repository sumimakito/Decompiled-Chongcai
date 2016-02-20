import cn.apppark.mcd.widget.PullDownListView2.OnRefreshListener2;
import cn.apppark.vertify.activity.soft.Soft;

public final class qp
  implements PullDownListView2.OnRefreshListener2
{
  public qp(Soft paramSoft) {}
  
  public final void onRefresh()
  {
    Soft.a(this.a, 1);
    Soft.a(this.a, Soft.k(this.a), 2, "recommend", false, "");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */