import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import cn.apppark.vertify.activity.bottommenu.NavigationTab2;

public final class bl
  implements View.OnTouchListener
{
  public bl(NavigationTab2 paramNavigationTab2) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1) {
      NavigationTab2.a(this.a).sendMessageDelayed(NavigationTab2.a(this.a).obtainMessage(1), 200L);
    }
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */