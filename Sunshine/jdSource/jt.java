import android.widget.EditText;
import cn.apppark.mcd.widget.PullDownListView.OnRefreshListener;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act;

public final class jt
  implements PullDownListView.OnRefreshListener
{
  public jt(DynSearch5007Act paramDynSearch5007Act) {}
  
  public final void onRefresh()
  {
    DynSearch5007Act.a(this.a, 1, "search", DynSearch5007Act.a(this.a).getText().toString());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */