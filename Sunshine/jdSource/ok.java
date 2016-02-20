import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.persion.PersionCollection;

final class ok
  implements IReloadDataProgress
{
  ok(oh paramoh) {}
  
  public final void reloadData()
  {
    PersionCollection.k(this.a.a).show(2131230756, true, true, "255");
    PersionCollection.a(this.a.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ok.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */