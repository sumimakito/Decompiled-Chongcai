import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ScrollView;
import cn.apppark.vertify.activity.free.typenine.SelfGridView;

public final class nr
  implements View.OnTouchListener
{
  public nr(SelfGridView paramSelfGridView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      SelfGridView.c(this.a).requestDisallowInterceptTouchEvent(false);
      return false;
    }
    SelfGridView.c(this.a).requestDisallowInterceptTouchEvent(true);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */