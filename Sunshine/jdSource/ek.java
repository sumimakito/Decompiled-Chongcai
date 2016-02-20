import cn.apppark.mcd.widget.PullDownListView.OnRefreshListener;
import cn.apppark.vertify.activity.buy.BuyProCommentList;

public final class ek
  implements PullDownListView.OnRefreshListener
{
  public ek(BuyProCommentList paramBuyProCommentList) {}
  
  public final void onRefresh()
  {
    BuyProCommentList.a(this.a, 0, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */