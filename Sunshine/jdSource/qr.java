import cn.apppark.mcd.widget.PullDownListView.OnRefreshListener;
import cn.apppark.vertify.activity.soft.Soft;

public final class qr
  implements PullDownListView.OnRefreshListener
{
  public qr(Soft paramSoft) {}
  
  public final void onRefresh()
  {
    Soft.b(this.a, 1);
    Soft.a(this.a, Soft.f(this.a), 5, "downTop", false, "");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */