import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.TextView;
import cn.apppark.mcd.widget.MyBtn;

public final class z
  implements View.OnFocusChangeListener
{
  public z(MyBtn paramMyBtn) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.a.setVisibility(0);
      return;
    }
    this.a.a.setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */