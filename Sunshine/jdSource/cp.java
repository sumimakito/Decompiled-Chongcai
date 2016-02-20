import cn.apppark.mcd.widget.PullDownListView3.OnRefreshListener3;
import cn.apppark.vertify.activity.buy.BuyMsgCommentList;

public final class cp
  implements PullDownListView3.OnRefreshListener3
{
  public cp(BuyMsgCommentList paramBuyMsgCommentList) {}
  
  public final void onRefresh()
  {
    BuyMsgCommentList.a(this.a, 1);
    BuyMsgCommentList.a(this.a, BuyMsgCommentList.b(this.a), 3, "replyList");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */