import android.support.v4.view.ViewPager.OnPageChangeListener;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import cn.apppark.vertify.activity.tieba.TTopicDetail;

public final class tl
  implements ViewPager.OnPageChangeListener
{
  public tl(TTopicDetail paramTTopicDetail) {}
  
  public final void onPageScrollStateChanged(int paramInt) {}
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void onPageSelected(int paramInt)
  {
    TTopicDetail.a(this.a, paramInt);
    TBaseParam.changePoint(TTopicDetail.b(this.a), TTopicDetail.c(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */