import android.os.Handler;
import android.view.animation.DecelerateInterpolator;
import cn.apppark.vertify.activity.free.self.Self720View;

public final class mg
  extends Thread
{
  public mg(Self720View paramSelf720View) {}
  
  public final void run()
  {
    Self720View.a(this.a, true);
    for (;;)
    {
      float f1 = (float)(Self720View.d(this.a) - Self720View.e(this.a));
      f1 = 1.0F - (float)(System.currentTimeMillis() - Self720View.e(this.a)) / f1;
      if (f1 <= 0.0F) {
        break;
      }
      f1 = Self720View.f(this.a).getInterpolation(f1);
      float f2 = Self720View.g(this.a);
      float f3 = Self720View.h(this.a);
      this.a.a.post(new mh(this, f2 * f1, f1 * f3));
    }
    Self720View.a(this.a, false);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */