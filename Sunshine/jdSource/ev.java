import cn.apppark.mcd.widget.PullDownListView4.OnFootRefreshListener4;
import cn.apppark.vertify.activity.buy.BuyProductCollection;

public final class ev
  implements PullDownListView4.OnFootRefreshListener4
{
  public ev(BuyProductCollection paramBuyProductCollection) {}
  
  public final void onFootRefresh()
  {
    BuyProductCollection.a(this.a, BuyProductCollection.a(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */