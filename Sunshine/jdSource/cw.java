import cn.apppark.mcd.widget.PullDownListView3.OnRefreshListener3;
import cn.apppark.vertify.activity.buy.BuyMsgCommentRep;

public final class cw
  implements PullDownListView3.OnRefreshListener3
{
  public cw(BuyMsgCommentRep paramBuyMsgCommentRep) {}
  
  public final void onRefresh()
  {
    BuyMsgCommentRep.a(this.a, 1);
    BuyMsgCommentRep.a(this.a, BuyMsgCommentRep.d(this.a), 3, "replyDetail");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */