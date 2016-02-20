import android.support.v4.view.ViewPager.OnPageChangeListener;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import cn.apppark.vertify.activity.tieba.TCommentList;

public final class rs
  implements ViewPager.OnPageChangeListener
{
  public rs(TCommentList paramTCommentList) {}
  
  public final void onPageScrollStateChanged(int paramInt) {}
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void onPageSelected(int paramInt)
  {
    TCommentList.a(this.a, paramInt);
    TBaseParam.changePoint(TCommentList.d(this.a), TCommentList.e(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */