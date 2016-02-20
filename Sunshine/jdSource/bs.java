import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyAddressList;

final class bs
  implements IReloadDataProgress
{
  bs(br parambr) {}
  
  public final void reloadData()
  {
    BuyAddressList.h(this.a.a).show(2131230756, true, true, "255");
    BuyAddressList.a(this.a.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */