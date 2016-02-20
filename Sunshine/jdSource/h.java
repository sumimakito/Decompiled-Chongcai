import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import cn.apppark.mcd.util.ButtonColorFilter;

public final class h
  implements View.OnFocusChangeListener
{
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramView.getBackground().setColorFilter(new ColorMatrixColorFilter(ButtonColorFilter.BT_SELECTED));
      paramView.setBackgroundDrawable(paramView.getBackground());
      return;
    }
    paramView.getBackground().setColorFilter(new ColorMatrixColorFilter(ButtonColorFilter.BT_NOT_SELECTED));
    paramView.setBackgroundDrawable(paramView.getBackground());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */