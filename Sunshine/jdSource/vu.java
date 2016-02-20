import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.apppark.vertify.base.PushWebView;

public final class vu
  implements View.OnTouchListener
{
  boolean a = true;
  
  public vu(PushWebView paramPushWebView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 2: 
      this.a = true;
      return false;
    }
    if (!this.a)
    {
      PushWebView.a(this.b, 0);
      PushWebView.a(this.b).setVisibility(8);
      PushWebView.b(this.b).setVisibility(8);
      PushWebView.c(this.b).setVisibility(0);
    }
    this.a = false;
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */