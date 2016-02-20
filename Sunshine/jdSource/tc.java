import cn.apppark.mcd.widget.PullDownListView4.OnFootRefreshListener4;
import cn.apppark.vertify.activity.tieba.TMytopicAndComment;

public final class tc
  implements PullDownListView4.OnFootRefreshListener4
{
  public tc(TMytopicAndComment paramTMytopicAndComment) {}
  
  public final void onFootRefresh()
  {
    TMytopicAndComment.a(this.a, TMytopicAndComment.d(this.a), 2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */