import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act2;

public final class kc
  implements View.OnKeyListener
{
  public kc(DynSearch5007Act2 paramDynSearch5007Act2) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 66)
    {
      DynSearch5007Act2.c(this.a);
      if (DynSearch5007Act2.d(this.a) == 2)
      {
        DynSearch5007Act2.a(this.a, 0);
        PublicUtil.closeKeyBoard(this.a);
        DynSearch5007Act2.e(this.a);
      }
      bool = true;
    }
    return bool;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */