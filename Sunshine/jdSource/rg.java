import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.soft.SoftDetail;

final class rg
  implements IReloadDataProgress
{
  rg(rf paramrf) {}
  
  public final void reloadData()
  {
    SoftDetail.f(this.a.a).show(2131230756, true, true, "255");
    SoftDetail.a(this.a.a, 1, "detail");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */