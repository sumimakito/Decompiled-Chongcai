import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.tieba.TTopicDetail;

final class ts
  implements IReloadDataProgress
{
  ts(tr paramtr) {}
  
  public final void reloadData()
  {
    TTopicDetail.e(this.a.a).show(2131230756);
    TTopicDetail.b(this.a.a, 5);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ts.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */