import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public final class i
  implements View.OnTouchListener
{
  public i(int[] paramArrayOfInt) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) || (paramMotionEvent.getAction() == 2))
    {
      paramView.setBackgroundColor(this.a[1]);
      return false;
    }
    paramView.setBackgroundColor(this.a[0]);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */