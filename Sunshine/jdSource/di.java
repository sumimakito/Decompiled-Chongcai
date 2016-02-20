import cn.apppark.mcd.widget.PullDownListView.OnFootRefreshListener;
import cn.apppark.vertify.activity.buy.BuyMyOrderList;

public final class di
  implements PullDownListView.OnFootRefreshListener
{
  public di(BuyMyOrderList paramBuyMyOrderList) {}
  
  public final void onFootRefresh()
  {
    BuyMyOrderList.a(this.a, BuyMyOrderList.b(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/di.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */