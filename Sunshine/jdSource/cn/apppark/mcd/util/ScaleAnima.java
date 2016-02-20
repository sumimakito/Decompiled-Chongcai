package cn.apppark.mcd.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.ScaleAnimation;

public class ScaleAnima
  implements View.OnTouchListener
{
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return false;
      paramMotionEvent = new ScaleAnimation(1.05F, 1.0F, 1.05F, 1.0F, 1, 0.5F, 1, 0.5F);
      paramMotionEvent.setDuration(250L);
      paramView.startAnimation(paramMotionEvent);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/ScaleAnima.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */