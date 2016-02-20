package cn.apppark.vertify.activity.soft;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import java.util.List;

class Soft$AwesomePagerAdapter
  extends PagerAdapter
{
  List<View> a;
  
  public Soft$AwesomePagerAdapter(List<View> paramList)
  {
    List localList;
    this.a = localList;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    ((ViewPager)paramView).removeView((View)this.a.get(paramInt));
  }
  
  public void finishUpdate(View paramView) {}
  
  public int getCount()
  {
    return this.a.size();
  }
  
  public Object instantiateItem(View paramView, int paramInt)
  {
    ((ViewPager)paramView).addView((View)this.a.get(paramInt), 0);
    return this.a.get(paramInt);
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public Parcelable saveState()
  {
    return null;
  }
  
  public void startUpdate(View paramView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/Soft$AwesomePagerAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */