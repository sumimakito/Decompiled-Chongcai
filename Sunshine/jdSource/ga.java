import cn.apppark.mcd.widget.PullDownListView.OnRefreshListener;
import cn.apppark.vertify.activity.buy.BuyViewHistory;

public final class ga
  implements PullDownListView.OnRefreshListener
{
  public ga(BuyViewHistory paramBuyViewHistory) {}
  
  public final void onRefresh()
  {
    BuyViewHistory.a(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ga.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */