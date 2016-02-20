import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyMyOrderList;

final class dn
  implements IReloadDataProgress
{
  dn(dm paramdm) {}
  
  public final void reloadData()
  {
    BuyMyOrderList.i(this.a.a).show(2131230756, true, true, "255");
    BuyMyOrderList.a(this.a.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */