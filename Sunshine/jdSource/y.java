import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import cn.apppark.mcd.widget.MyBtn;

public final class y
  implements View.OnTouchListener
{
  public y(MyBtn paramMyBtn) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) || (paramMotionEvent.getAction() == 2))
    {
      this.a.a.setVisibility(0);
      return false;
    }
    this.a.a.setVisibility(8);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */