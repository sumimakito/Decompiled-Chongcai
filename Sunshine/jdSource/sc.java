import android.support.v4.view.ViewPager.OnPageChangeListener;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import cn.apppark.vertify.activity.tieba.TEdit;

public final class sc
  implements ViewPager.OnPageChangeListener
{
  public sc(TEdit paramTEdit) {}
  
  public final void onPageScrollStateChanged(int paramInt) {}
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void onPageSelected(int paramInt)
  {
    TEdit.a(this.a, paramInt);
    TBaseParam.changePoint(TEdit.e(this.a), TEdit.f(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */