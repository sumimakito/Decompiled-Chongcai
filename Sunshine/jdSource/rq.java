import cn.apppark.mcd.widget.PullDownListView4.OnFootRefreshListener4;
import cn.apppark.vertify.activity.tieba.TCommentList;

public final class rq
  implements PullDownListView4.OnFootRefreshListener4
{
  public rq(TCommentList paramTCommentList) {}
  
  public final void onFootRefresh()
  {
    TCommentList.a(this.a, TCommentList.a(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */