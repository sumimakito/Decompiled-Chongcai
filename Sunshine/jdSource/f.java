import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import cn.apppark.mcd.util.ButtonColorFilter;

public final class f
  implements View.OnTouchListener
{
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) || (paramMotionEvent.getAction() == 2))
    {
      paramView.getBackground().setColorFilter(new ColorMatrixColorFilter(ButtonColorFilter.BT_SELECTED));
      paramView.setBackgroundDrawable(paramView.getBackground());
    }
    for (;;)
    {
      return false;
      paramView.getBackground().setColorFilter(new ColorMatrixColorFilter(ButtonColorFilter.BT_NOT_SELECTED));
      paramView.setBackgroundDrawable(paramView.getBackground());
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */