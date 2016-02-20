import cn.apppark.mcd.widget.PullDownListView4.OnFootRefreshListener4;
import cn.apppark.vertify.activity.tieba.TMytopicAndComment;

public final class ta
  implements PullDownListView4.OnFootRefreshListener4
{
  public ta(TMytopicAndComment paramTMytopicAndComment) {}
  
  public final void onFootRefresh()
  {
    TMytopicAndComment.a(this.a, TMytopicAndComment.a(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */