import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.TextView;
import cn.apppark.mcd.widget.MyFloatView;

public final class ae
  implements View.OnLongClickListener
{
  public ae(MyFloatView paramMyFloatView) {}
  
  public final boolean onLongClick(View paramView)
  {
    this.a.c = true;
    MyFloatView.a(this.a).setLayoutParams(this.a.b);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */