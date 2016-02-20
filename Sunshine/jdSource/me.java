import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import cn.apppark.vertify.activity.free.self.Mp4PlayerActivity;

public final class me
  extends GestureDetector.SimpleOnGestureListener
{
  public me(Mp4PlayerActivity paramMp4PlayerActivity) {}
  
  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    if (Mp4PlayerActivity.i(this.a)) {
      Mp4PlayerActivity.a(this.a, 1);
    }
    for (;;)
    {
      paramMotionEvent = this.a;
      if (!Mp4PlayerActivity.i(this.a)) {
        bool = true;
      }
      Mp4PlayerActivity.c(paramMotionEvent, bool);
      if (Mp4PlayerActivity.j(this.a)) {
        Mp4PlayerActivity.k(this.a);
      }
      return true;
      Mp4PlayerActivity.a(this.a, 0);
    }
  }
  
  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (!Mp4PlayerActivity.j(this.a))
    {
      Mp4PlayerActivity.k(this.a);
      Mp4PlayerActivity.f(this.a);
    }
    for (;;)
    {
      return true;
      Mp4PlayerActivity.e(this.a);
      Mp4PlayerActivity.l(this.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/me.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */