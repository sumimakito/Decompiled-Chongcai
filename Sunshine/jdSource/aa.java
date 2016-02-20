import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import cn.apppark.mcd.widget.MyEditText;
import cn.apppark.mcd.widget.MyEditText.MyEditTextClickListener;

public final class aa
  implements View.OnKeyListener
{
  public aa(MyEditText paramMyEditText) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 66)
    {
      MyEditText.a(this.a);
      if (MyEditText.b(this.a) == 2)
      {
        MyEditText.a(this.a, 0);
        if (MyEditText.c(this.a) != null) {
          MyEditText.c(this.a).onKeyEnter();
        }
      }
      bool = true;
    }
    return bool;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */