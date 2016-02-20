import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.persion.PersionCollection;

final class om
  implements IReloadDataProgress
{
  om(oh paramoh) {}
  
  public final void reloadData()
  {
    PersionCollection.k(this.a.a).show(2131230756, true, true, "255");
    PersionCollection.b(this.a.a, 1, 3);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/om.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */