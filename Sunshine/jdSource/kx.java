import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import cn.apppark.vertify.activity.free.dyn.SMsgBase;

public final class kx
  implements View.OnTouchListener
{
  public kx(SMsgBase paramSMsgBase) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1) {
      SMsgBase.c(this.a).sendMessageDelayed(SMsgBase.c(this.a).obtainMessage(3), 200L);
    }
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */