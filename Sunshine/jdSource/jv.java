import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act;

public final class jv
  implements View.OnKeyListener
{
  public jv(DynSearch5007Act paramDynSearch5007Act) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 66)
    {
      DynSearch5007Act.d(this.a);
      if (DynSearch5007Act.e(this.a) == 2)
      {
        DynSearch5007Act.a(this.a, 0);
        PublicUtil.closeKeyBoard(this.a);
        DynSearch5007Act.f(this.a);
      }
      bool = true;
    }
    return bool;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */