import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyMsgCommentList;

final class ct
  implements IReloadDataProgress
{
  ct(cs paramcs) {}
  
  public final void reloadData()
  {
    BuyMsgCommentList.f(this.a.a).show(2131230756, true, true, "255");
    BuyMsgCommentList.a(this.a.a, 1, 1, "replyList");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */