import android.app.Dialog;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.EditText;
import cn.apppark.vertify.activity.free.dyn.DynProductNine5005;

public final class jh
  implements View.OnKeyListener
{
  public jh(DynProductNine5005 paramDynProductNine5005) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 66)
    {
      DynProductNine5005.a(this.a);
      if (DynProductNine5005.b(this.a) == 2)
      {
        DynProductNine5005.a(this.a, 0);
        DynProductNine5005.a(this.a, DynProductNine5005.c(this.a).getText().toString().trim());
        DynProductNine5005.d(this.a).show();
        this.a.initData();
      }
      bool = true;
    }
    return bool;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */