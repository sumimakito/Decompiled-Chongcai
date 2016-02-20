import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.soft.SoftList;

final class rm
  implements IReloadDataProgress
{
  rm(rl paramrl) {}
  
  public final void reloadData()
  {
    SoftList.e(this.a.a).show(2131230756, true, true, "255");
    SoftList.a(this.a.a, 1, 5, "subjectApp");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */