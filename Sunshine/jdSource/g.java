import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public final class g
  implements View.OnTouchListener
{
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) || (paramMotionEvent.getAction() == 2)) {
      paramView.setBackgroundColor(-65536);
    }
    for (;;)
    {
      return false;
      paramView.setBackgroundColor(-16776961);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */