import cn.apppark.mcd.widget.PullDownListView.OnRefreshListener;
import cn.apppark.vertify.activity.buy.BuyProCommentList2;

public final class ep
  implements PullDownListView.OnRefreshListener
{
  public ep(BuyProCommentList2 paramBuyProCommentList2) {}
  
  public final void onRefresh()
  {
    BuyProCommentList2.a(this.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */