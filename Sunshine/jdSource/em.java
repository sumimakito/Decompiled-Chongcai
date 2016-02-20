import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyProCommentList;

final class em
  implements IReloadDataProgress
{
  em(el paramel) {}
  
  public final void reloadData()
  {
    BuyProCommentList.e(this.a.a).show(2131230756, true, true, "255");
    BuyProCommentList.a(this.a.a, 0, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/em.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */