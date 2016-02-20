import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ScrollView;
import cn.apppark.mcd.vo.free.SelfWebItemVo;
import cn.apppark.vertify.activity.free.self.SelfWebView;

public final class mt
  implements View.OnTouchListener
{
  public mt(SelfWebView paramSelfWebView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    float f = paramMotionEvent.getRawY();
    switch (paramMotionEvent.getAction())
    {
    }
    while (paramMotionEvent.getAction() == 1)
    {
      SelfWebView.d(this.a).requestDisallowInterceptTouchEvent(false);
      return false;
      this.a.c = paramMotionEvent.getRawY();
      continue;
      f -= this.a.c;
      if (f > 0.0F)
      {
        if ((SelfWebView.b(this.a).getVisibility() != 0) && ("1".equals(SelfWebView.c(this.a).getStyle_showNavFlag())))
        {
          SelfWebView.b(this.a).setVisibility(0);
          SelfWebView.b(this.a).startAnimation(this.a.b);
        }
      }
      else if ((f < 0.0F) && (SelfWebView.b(this.a).getVisibility() != 8) && ("1".equals(SelfWebView.c(this.a).getStyle_showNavFlag())))
      {
        SelfWebView.b(this.a).setVisibility(8);
        SelfWebView.b(this.a).startAnimation(this.a.a);
      }
    }
    SelfWebView.d(this.a).requestDisallowInterceptTouchEvent(true);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */