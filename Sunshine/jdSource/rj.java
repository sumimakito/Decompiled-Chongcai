import cn.apppark.mcd.widget.PullDownListView.OnFootRefreshListener;
import cn.apppark.vertify.activity.soft.SoftList;

public final class rj
  implements PullDownListView.OnFootRefreshListener
{
  public rj(SoftList paramSoftList) {}
  
  public final void onFootRefresh()
  {
    SoftList.a(this.a, SoftList.a(this.a), 5, "subjectApp");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */