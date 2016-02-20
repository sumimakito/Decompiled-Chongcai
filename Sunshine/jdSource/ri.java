import cn.apppark.mcd.widget.PullDownListView.OnRefreshListener;
import cn.apppark.vertify.activity.soft.SoftList;

public final class ri
  implements PullDownListView.OnRefreshListener
{
  public ri(SoftList paramSoftList) {}
  
  public final void onRefresh()
  {
    SoftList.a(this.a, 1);
    SoftList.a(this.a, SoftList.a(this.a), 6, "subjectApp");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */