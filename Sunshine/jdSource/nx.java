import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ScrollView;
import cn.apppark.vertify.activity.free.typenine.SelfGridView4008;

public final class nx
  implements View.OnTouchListener
{
  public nx(SelfGridView4008 paramSelfGridView4008) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      SelfGridView4008.c(this.a).requestDisallowInterceptTouchEvent(false);
      return false;
    }
    SelfGridView4008.c(this.a).requestDisallowInterceptTouchEvent(true);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */