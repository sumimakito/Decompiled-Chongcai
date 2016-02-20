import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.tieba.TMain;

public final class sj
  implements IReloadDataProgress
{
  public sj(TMain paramTMain) {}
  
  public final void reloadData()
  {
    TMain.k(this.a).show(2131230756, true, true, "255");
    TMain.a(this.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */