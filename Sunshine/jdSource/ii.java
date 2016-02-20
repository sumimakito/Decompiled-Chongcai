import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import cn.apppark.vertify.activity.free.dyn.DynPersonCenter5006;

public final class ii
  implements Animation.AnimationListener
{
  public ii(DynPersonCenter5006 paramDynPersonCenter5006, View paramView) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (!DynPersonCenter5006.a(this.b)) {
      DynPersonCenter5006.a(this.b, this.a);
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ii.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */