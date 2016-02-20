import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.widget.TextView;
import cn.apppark.vertify.activity.tieba.TMytopicAndComment;

public final class td
  implements ViewPager.OnPageChangeListener
{
  public td(TMytopicAndComment paramTMytopicAndComment) {}
  
  public final void onPageScrollStateChanged(int paramInt) {}
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void onPageSelected(int paramInt)
  {
    TMytopicAndComment.a(this.a, paramInt);
    TMytopicAndComment.e(this.a).sendEmptyMessageDelayed(3, 500L);
    if (TMytopicAndComment.f(this.a) == 0)
    {
      TMytopicAndComment.g(this.a).setTextColor(-16777216);
      TMytopicAndComment.h(this.a).setTextColor(-7829368);
      TMytopicAndComment.i(this.a).setBackgroundResource(2130837933);
      TMytopicAndComment.j(this.a).setBackgroundResource(2130837950);
      return;
    }
    TMytopicAndComment.g(this.a).setTextColor(-7829368);
    TMytopicAndComment.h(this.a).setTextColor(-16777216);
    TMytopicAndComment.i(this.a).setBackgroundResource(2130837950);
    TMytopicAndComment.j(this.a).setBackgroundResource(2130837933);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/td.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */