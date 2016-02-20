import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import cn.apppark.vertify.activity.share.ShareAct;

public final class pw
  implements Animation.AnimationListener
{
  public pw(ShareAct paramShareAct) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (paramAnimation.getStartOffset() == 100L)
    {
      this.a.finish();
      this.a.overridePendingTransition(17432576, 17432577);
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */