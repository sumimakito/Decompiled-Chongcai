import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.persion.PersonInfo;

public final class oq
  implements IReloadDataProgress
{
  public oq(PersonInfo paramPersonInfo) {}
  
  public final void reloadData()
  {
    PersonInfo.a(this.a).show(2131230756, true, true, "255");
    PersonInfo.b(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/oq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */