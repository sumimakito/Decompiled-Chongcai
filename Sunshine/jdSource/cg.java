import cn.apppark.mcd.widget.PullDownListView.OnFootRefreshListener;
import cn.apppark.vertify.activity.buy.BuyCollectionMsgList;

public final class cg
  implements PullDownListView.OnFootRefreshListener
{
  public cg(BuyCollectionMsgList paramBuyCollectionMsgList) {}
  
  public final void onFootRefresh()
  {
    BuyCollectionMsgList.a(this.a, BuyCollectionMsgList.b(this.a), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */