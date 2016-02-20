import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.ScrollView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.Self360Item2Vo;
import cn.apppark.vertify.activity.free.self.Self360View;
import java.util.ArrayList;

public final class mf
  implements View.OnTouchListener
{
  private float c;
  private float d;
  
  public mf(Self360View paramSelf360View, ImageView paramImageView) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      Self360View.a(this.b).requestDisallowInterceptTouchEvent(false);
      switch (paramMotionEvent.getAction())
      {
      }
    }
    float f1;
    float f2;
    do
    {
      do
      {
        return false;
        Self360View.a(this.b).requestDisallowInterceptTouchEvent(true);
        break;
        this.c = paramMotionEvent.getRawX();
        this.d = paramMotionEvent.getRawY();
        return false;
        f1 = paramMotionEvent.getRawX();
        f2 = paramMotionEvent.getRawY();
      } while ((Math.abs(f1 - this.c) <= 0.0F) || (Math.abs(f2 - this.d) <= 15.0F));
      if (f1 < this.c)
      {
        this.c = f1;
        this.d = f2;
        if (Self360View.b(this.b) < Self360View.c(this.b).size() - 1) {
          Self360View.d(this.b);
        }
        for (;;)
        {
          FunctionPublic.setImageDrawable(((Self360Item2Vo)Self360View.c(this.b).get(Self360View.b(this.b))).getData_pic(), this.a);
          return false;
          Self360View.a(this.b, 0);
        }
      }
    } while ((f1 <= this.c) || (Math.abs(f2 - this.d) <= 30.0F));
    this.c = f1;
    this.d = f2;
    if (Self360View.b(this.b) > 0) {
      Self360View.e(this.b);
    }
    for (;;)
    {
      FunctionPublic.setImageDrawable(((Self360Item2Vo)Self360View.c(this.b).get(Self360View.b(this.b))).getData_pic(), this.a);
      return false;
      Self360View.a(this.b, Self360View.c(this.b).size() - 1);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */