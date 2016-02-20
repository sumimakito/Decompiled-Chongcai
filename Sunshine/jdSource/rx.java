import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.tieba.TCommentList;

final class rx
  implements IReloadDataProgress
{
  rx(rw paramrw) {}
  
  public final void reloadData()
  {
    TCommentList.l(this.a.a).show(2131230756, true, true, "255");
    TCommentList.a(this.a.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */