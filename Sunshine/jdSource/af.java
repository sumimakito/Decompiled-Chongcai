import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.widget.MyFloatView;
import cn.apppark.vertify.activity.soft.Soft;

public final class af
  implements View.OnTouchListener
{
  public af(MyFloatView paramMyFloatView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    MyFloatView.a(this.a, 0.0F);
    MyFloatView.b(this.a, paramMotionEvent.getRawY() - 25.0F);
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 2: 
      do
      {
        return false;
        MyFloatView.c(this.a, paramMotionEvent.getX());
        MyFloatView.d(this.a, paramMotionEvent.getY());
        return false;
      } while (!this.a.c);
      MyFloatView.b(this.a);
      return false;
    }
    MyFloatView.c(this.a, MyFloatView.d(this.a, 0.0F));
    if (!this.a.c)
    {
      HQCHApplication.mainActivity.startActivity(new Intent(HQCHApplication.mainActivity, Soft.class));
      HQCHApplication.mainActivity.overridePendingTransition(2130968581, 0);
    }
    for (;;)
    {
      this.a.c = false;
      return false;
      MyFloatView.a(this.a).setLayoutParams(this.a.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */