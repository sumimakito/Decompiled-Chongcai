import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.tieba.TCommentList;

final class rz
  implements IReloadDataProgress
{
  rz(rw paramrw) {}
  
  public final void reloadData()
  {
    TCommentList.l(this.a.a).show(2131230756);
    TCommentList.b(this.a.a, 3);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */