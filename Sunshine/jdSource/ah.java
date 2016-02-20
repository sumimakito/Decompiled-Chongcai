import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import cn.apppark.mcd.widget.MyFloatViewMore;

public final class ah
  implements View.OnTouchListener
{
  public ah(MyFloatViewMore paramMyFloatViewMore) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    MyFloatViewMore.a(this.a, paramMotionEvent.getRawX());
    MyFloatViewMore.b(this.a, paramMotionEvent.getRawY() - 25.0F);
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 2: 
      do
      {
        return false;
        MyFloatViewMore.c(this.a, paramMotionEvent.getX());
        MyFloatViewMore.d(this.a, paramMotionEvent.getY());
        return false;
      } while (!this.a.c);
      MyFloatViewMore.b(this.a);
      return false;
    }
    MyFloatViewMore.c(this.a, MyFloatViewMore.d(this.a, 0.0F));
    if (this.a.c) {
      MyFloatViewMore.a(this.a).setLayoutParams(this.a.a);
    }
    this.a.c = false;
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */