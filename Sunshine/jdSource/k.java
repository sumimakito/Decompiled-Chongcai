import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import cn.apppark.mcd.util.ButtonColorFilter;

public final class k
  implements View.OnTouchListener
{
  public k(View paramView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = (ImageView)this.a;
    switch (paramMotionEvent.getAction())
    {
    case 2: 
    default: 
      return true;
    case 0: 
      paramView.setAlpha(ButtonColorFilter.CLICKALPHA);
      paramView.getBackground().setColorFilter(new ColorMatrixColorFilter(ButtonColorFilter.BT_SELECTED));
      return true;
    case 1: 
      paramView.getBackground().clearColorFilter();
      paramView.setAlpha(ButtonColorFilter.INITALPHA);
      return true;
    }
    paramView.getBackground().clearColorFilter();
    paramView.setAlpha(ButtonColorFilter.INITALPHA);
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */