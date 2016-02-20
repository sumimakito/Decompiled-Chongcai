import android.support.v4.view.ViewPager.OnPageChangeListener;
import cn.apppark.vertify.activity.persion.PersionCollection;

public final class oa
  implements ViewPager.OnPageChangeListener
{
  public oa(PersionCollection paramPersionCollection) {}
  
  public final void onPageScrollStateChanged(int paramInt) {}
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void onPageSelected(int paramInt)
  {
    PersionCollection.a(this.a, paramInt);
    PersionCollection.a(this.a).sendEmptyMessageDelayed(0, 500L);
    PersionCollection.b(this.a, PersionCollection.b(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/oa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */