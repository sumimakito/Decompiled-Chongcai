import android.widget.EditText;
import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act;

final class jy
  implements IReloadDataProgress
{
  jy(jx paramjx) {}
  
  public final void reloadData()
  {
    DynSearch5007Act.i(this.a.a).show(2131230756, true, true, "255");
    DynSearch5007Act.a(this.a.a, 1, "search", DynSearch5007Act.a(this.a.a).getText().toString());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */