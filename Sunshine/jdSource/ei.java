import cn.apppark.mcd.widget.PullDownListView.OnRefreshListener;
import cn.apppark.vertify.activity.buy.BuyProCommentList;

public final class ei
  implements PullDownListView.OnRefreshListener
{
  public ei(BuyProCommentList paramBuyProCommentList) {}
  
  public final void onRefresh()
  {
    BuyProCommentList.a(this.a, 1, 2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ei.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */