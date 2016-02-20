import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyProductCollection;

final class ey
  implements IReloadDataProgress
{
  ey(ex paramex) {}
  
  public final void reloadData()
  {
    BuyProductCollection.e(this.a.a).show(2131230756, true, true, "255");
    BuyProductCollection.a(this.a.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */