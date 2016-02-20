import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyCollectionMsgList;

final class cm
  implements IReloadDataProgress
{
  cm(cl paramcl) {}
  
  public final void reloadData()
  {
    BuyCollectionMsgList.g(this.a.a).show(2131230756, true, true, "255");
    BuyCollectionMsgList.a(this.a.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */