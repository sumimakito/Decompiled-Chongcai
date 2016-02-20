import cn.apppark.mcd.widget.PullDownListView2.OnFootRefreshListener2;
import cn.apppark.vertify.activity.soft.Soft;

public final class qq
  implements PullDownListView2.OnFootRefreshListener2
{
  public qq(Soft paramSoft) {}
  
  public final void onFootRefresh()
  {
    Soft.a(this.a, Soft.k(this.a), 1, "recommend", false, "");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */