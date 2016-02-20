import cn.apppark.mcd.widget.PullDownListView3.OnFootRefreshListener3;
import cn.apppark.vertify.activity.buy.BuyMsgCommentRep;

public final class cx
  implements PullDownListView3.OnFootRefreshListener3
{
  public cx(BuyMsgCommentRep paramBuyMsgCommentRep) {}
  
  public final void onFootRefresh()
  {
    BuyMsgCommentRep.a(this.a, BuyMsgCommentRep.d(this.a), 1, "replyDetail");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */