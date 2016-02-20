package cn.apppark.mcd.widget;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.widget.Gallery;

public class UserGallery
  extends Gallery
  implements GestureDetector.OnGestureListener
{
  private ViewPager mPager;
  
  public UserGallery(Context paramContext)
  {
    super(paramContext);
  }
  
  public UserGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private boolean isScrollingLeft(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2)
  {
    return paramMotionEvent2.getX() > paramMotionEvent1.getX();
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.mPager != null) {
      this.mPager.requestDisallowInterceptTouchEvent(true);
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public ViewPager getmPager()
  {
    return this.mPager;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (isScrollingLeft(paramMotionEvent1, paramMotionEvent2)) {}
    for (int i = 21;; i = 22)
    {
      onKeyDown(i, null);
      return true;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      this.mPager.requestDisallowInterceptTouchEvent(true);
      continue;
      this.mPager.requestDisallowInterceptTouchEvent(false);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      this.mPager.requestDisallowInterceptTouchEvent(true);
      continue;
      this.mPager.requestDisallowInterceptTouchEvent(false);
    }
  }
  
  public void setPage(ViewPager paramViewPager)
  {
    this.mPager = paramViewPager;
  }
  
  public void setmPager(ViewPager paramViewPager)
  {
    this.mPager = paramViewPager;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/UserGallery.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */