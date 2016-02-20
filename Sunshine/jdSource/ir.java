import android.app.Dialog;
import cn.apppark.mcd.widget.MyEditText;
import cn.apppark.mcd.widget.MyEditText.MyEditTextClickListener;
import cn.apppark.vertify.activity.free.dyn.DynProductCard5014;

public final class ir
  implements MyEditText.MyEditTextClickListener
{
  public ir(DynProductCard5014 paramDynProductCard5014) {}
  
  public final void onKeyEnter()
  {
    DynProductCard5014.a(this.a, DynProductCard5014.a(this.a).getText().toString().trim());
    DynProductCard5014.b(this.a).show();
    this.a.initData();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ir.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */