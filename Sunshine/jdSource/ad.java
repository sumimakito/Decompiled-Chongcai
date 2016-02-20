import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import cn.apppark.mcd.widget.MyEditText2;
import cn.apppark.mcd.widget.MyEditText2.MyOnKeyEnter;

public final class ad
  implements View.OnKeyListener
{
  public ad(MyEditText2 paramMyEditText2) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 66)
    {
      MyEditText2.c(this.a);
      if (MyEditText2.d(this.a) == 2)
      {
        MyEditText2.a(this.a, 0);
        if (MyEditText2.e(this.a) != null) {
          MyEditText2.e(this.a).onKeyEnter();
        }
      }
      bool = true;
    }
    return bool;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */