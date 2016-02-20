import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import cn.apppark.mcd.util.ButtonColorFilter;

public final class l
  implements View.OnTouchListener
{
  public l(View paramView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = (ImageView)this.a;
    if ((paramView != null) && (paramView.getDrawable() != null)) {}
    switch (paramMotionEvent.getAction())
    {
    case 2: 
    default: 
      return false;
    case 0: 
      paramView.setAlpha(ButtonColorFilter.CLICKALPHA);
      paramView.getDrawable().setColorFilter(new ColorMatrixColorFilter(ButtonColorFilter.BT_SELECTED));
      return false;
    case 1: 
      paramView.getDrawable().clearColorFilter();
      paramView.setAlpha(ButtonColorFilter.INITALPHA);
      return false;
    }
    paramView.getDrawable().clearColorFilter();
    paramView.setAlpha(ButtonColorFilter.INITALPHA);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */