import android.graphics.ColorMatrixColorFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.vertify.activity.free.self.SelfImageView;

public final class mo
  implements View.OnTouchListener
{
  public mo(SelfImageView paramSelfImageView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = (ImageView)paramView;
    switch (paramMotionEvent.getAction())
    {
    case 2: 
    default: 
      return false;
    case 0: 
      paramView.setAlpha(100);
      paramView.setColorFilter(new ColorMatrixColorFilter(YYGYContants.mFloatSel));
    }
    for (;;)
    {
      return true;
      paramView.setAlpha(255);
      paramView.clearColorFilter();
      SelfImageView.d(this.a);
      continue;
      paramView.setAlpha(255);
      paramView.clearColorFilter();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */