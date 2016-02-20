import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.ElasticScrollView.OnRefreshListener;
import cn.apppark.vertify.activity.free.dyn.STogetherDetail;

public final class ls
  implements ElasticScrollView.OnRefreshListener
{
  public ls(STogetherDetail paramSTogetherDetail) {}
  
  public final void onRefresh()
  {
    this.a.scroll.autoHeadRefresh();
    STogetherDetail.a(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */