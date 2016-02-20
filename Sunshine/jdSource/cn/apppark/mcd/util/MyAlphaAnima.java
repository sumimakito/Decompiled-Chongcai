package cn.apppark.mcd.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.AlphaAnimation;

public class MyAlphaAnima
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
      paramMotionEvent = new AlphaAnimation(0.0F, 1.0F);
      paramMotionEvent.setDuration(600L);
      paramView.startAnimation(paramMotionEvent);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/MyAlphaAnima.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */