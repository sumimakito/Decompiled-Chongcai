package cn.apppark.vertify.adapter;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import java.util.List;

public class ViewPagerAdapter
  extends PagerAdapter
{
  private List<View> pageViews;
  
  public ViewPagerAdapter(List<View> paramList)
  {
    this.pageViews = paramList;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    ((ViewPager)paramView).removeView((View)this.pageViews.get(paramInt));
  }
  
  public int getCount()
  {
    return this.pageViews.size();
  }
  
  public int getItemPosition(Object paramObject)
  {
    return super.getItemPosition(paramObject);
  }
  
  public Object instantiateItem(View paramView, int paramInt)
  {
    ((ViewPager)paramView).addView((View)this.pageViews.get(paramInt));
    return this.pageViews.get(paramInt);
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/ViewPagerAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */