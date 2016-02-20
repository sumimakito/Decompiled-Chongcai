import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import cn.apppark.vertify.activity.free.dyn.SProductBase;

public final class lf
  implements View.OnTouchListener
{
  public lf(SProductBase paramSProductBase) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1) {
      SProductBase.f(this.a).sendMessageDelayed(SProductBase.f(this.a).obtainMessage(3), 200L);
    }
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */