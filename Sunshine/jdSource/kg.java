import cn.apppark.mcd.widget.PullDownListView3.OnRefreshListener3;
import cn.apppark.vertify.activity.free.dyn.DynSubComment;

public final class kg
  implements PullDownListView3.OnRefreshListener3
{
  public kg(DynSubComment paramDynSubComment) {}
  
  public final void onRefresh()
  {
    DynSubComment.a(this.a, 1);
    DynSubComment.a(this.a, DynSubComment.e(this.a), 3, "commentList");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */