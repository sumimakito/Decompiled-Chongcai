import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.TextView;
import cn.apppark.mcd.widget.MyFloatViewMore;

public final class ag
  implements View.OnLongClickListener
{
  public ag(MyFloatViewMore paramMyFloatViewMore) {}
  
  public final boolean onLongClick(View paramView)
  {
    this.a.c = true;
    MyFloatViewMore.a(this.a).setLayoutParams(this.a.b);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */