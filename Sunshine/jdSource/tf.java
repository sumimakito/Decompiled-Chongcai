import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.tieba.TMytopicAndComment;

final class tf
  implements IReloadDataProgress
{
  tf(te paramte) {}
  
  public final void reloadData()
  {
    TMytopicAndComment.m(this.a.a).show(2131230756, true, true, "255");
    TMytopicAndComment.a(this.a.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */