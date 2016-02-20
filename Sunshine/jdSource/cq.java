import cn.apppark.mcd.widget.PullDownListView3.OnFootRefreshListener3;
import cn.apppark.vertify.activity.buy.BuyMsgCommentList;

public final class cq
  implements PullDownListView3.OnFootRefreshListener3
{
  public cq(BuyMsgCommentList paramBuyMsgCommentList) {}
  
  public final void onFootRefresh()
  {
    BuyMsgCommentList.a(this.a, BuyMsgCommentList.b(this.a), 1, "replyList");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */