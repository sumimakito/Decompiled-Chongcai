import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ScrollView;
import cn.apppark.vertify.activity.free.typenine.SelfGridView4006;

public final class nt
  implements View.OnTouchListener
{
  public nt(SelfGridView4006 paramSelfGridView4006) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      SelfGridView4006.c(this.a).requestDisallowInterceptTouchEvent(false);
      return false;
    }
    SelfGridView4006.c(this.a).requestDisallowInterceptTouchEvent(true);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */