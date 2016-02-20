import android.app.Dialog;
import cn.apppark.mcd.widget.MyEditText;
import cn.apppark.mcd.widget.MyEditText.MyEditTextClickListener;
import cn.apppark.vertify.activity.free.dyn.DynPorductList5004;

public final class il
  implements MyEditText.MyEditTextClickListener
{
  public il(DynPorductList5004 paramDynPorductList5004) {}
  
  public final void onKeyEnter()
  {
    DynPorductList5004.a(this.a, DynPorductList5004.a(this.a).getText().toString().trim());
    DynPorductList5004.b(this.a).show();
    this.a.initData();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/il.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */