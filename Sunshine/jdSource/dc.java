import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyMsgCommentRep;

final class dc
  implements IReloadDataProgress
{
  dc(db paramdb) {}
  
  public final void reloadData()
  {
    BuyMsgCommentRep.k(this.a.a).show(2131230756, true, true, "255");
    BuyMsgCommentRep.a(this.a.a, 1, 1, "replyDetail");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */