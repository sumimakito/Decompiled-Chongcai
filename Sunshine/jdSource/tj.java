import cn.apppark.mcd.widget.PullDownListView4.OnFootRefreshListener4;
import cn.apppark.vertify.activity.tieba.TTopicDetail;

public final class tj
  implements PullDownListView4.OnFootRefreshListener4
{
  public tj(TTopicDetail paramTTopicDetail) {}
  
  public final void onFootRefresh()
  {
    TTopicDetail.a(this.a, TTopicDetail.a(this.a), 4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */