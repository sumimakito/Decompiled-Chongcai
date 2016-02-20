import cn.apppark.mcd.widget.PullDownListView3.OnFootRefreshListener3;
import cn.apppark.vertify.activity.free.dyn.DynSubComment;

public final class kh
  implements PullDownListView3.OnFootRefreshListener3
{
  public kh(DynSubComment paramDynSubComment) {}
  
  public final void onFootRefresh()
  {
    DynSubComment.a(this.a, DynSubComment.e(this.a), 1, "commentList");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */