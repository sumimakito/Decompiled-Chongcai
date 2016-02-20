import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.persion.PersonLbsMsg;

public final class oz
  implements IReloadDataProgress
{
  public oz(PersonLbsMsg paramPersonLbsMsg) {}
  
  public final void reloadData()
  {
    PersonLbsMsg.e(this.a).show(2131230756, true, true, "255");
    PersonLbsMsg.a(this.a, 1, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/oz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */