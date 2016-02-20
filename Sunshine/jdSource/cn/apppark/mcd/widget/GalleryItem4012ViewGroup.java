package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.Scroller;
import cn.apppark.mcd.vo.base.OnPageChangeListenerInterface;

public class GalleryItem4012ViewGroup
  extends ViewGroup
{
  private Context context;
  private int currentScreen = 0;
  private boolean deliver = false;
  private float lastInterceptX;
  private float lastInterceptY;
  private float mLastMotionX;
  private float mLastMotionY;
  public OnPageChangeListenerInterface pageChangeListener = null;
  private ScrollView parentScroll;
  private Scroller scroller;
  
  public GalleryItem4012ViewGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    initView();
  }
  
  public GalleryItem4012ViewGroup(Context paramContext, ScrollView paramScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.parentScroll = paramScrollView;
    initView();
  }
  
  private void initView()
  {
    this.scroller = new Scroller(this.context);
  }
  
  public void computeScroll()
  {
    if (this.scroller.computeScrollOffset())
    {
      scrollTo(this.scroller.getCurrX(), this.scroller.getCurrY());
      postInvalidate();
    }
  }
  
  public OnPageChangeListenerInterface getPageChangeListener()
  {
    return this.pageChangeListener;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
      for (;;)
      {
        return this.deliver;
        this.parentScroll.requestDisallowInterceptTouchEvent(true);
        this.lastInterceptX = paramMotionEvent.getRawX();
        this.lastInterceptY = paramMotionEvent.getRawY();
        this.mLastMotionX = paramMotionEvent.getRawX();
        this.mLastMotionY = paramMotionEvent.getRawY();
        this.deliver = false;
      }
    case 2: 
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
      float f1 = paramMotionEvent.getRawX();
      float f2 = paramMotionEvent.getRawY();
      float f3 = f1 - this.lastInterceptX;
      float f4 = this.lastInterceptY;
      this.lastInterceptX = f1;
      this.lastInterceptY = f2;
      if ((Math.abs(f3) <= Math.abs(f2 - f4)) || (Math.abs(f3) <= 1.0F)) {
        break;
      }
    }
    for (this.deliver = true;; this.deliver = false)
    {
      this.parentScroll.requestDisallowInterceptTouchEvent(false);
      this.lastInterceptX = 0.0F;
      this.lastInterceptY = 0.0F;
      break;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = getChildCount();
    paramInt1 = 0;
    paramInt2 = 0;
    while (paramInt1 < paramInt3)
    {
      getChildAt(paramInt1).layout(paramInt2, 0, getWidth() + paramInt2, getHeight());
      paramInt2 += getWidth();
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      getChildAt(i).measure(paramInt1, paramInt2);
      i += 1;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (i)
    {
    }
    do
    {
      do
      {
        return false;
        this.parentScroll.requestDisallowInterceptTouchEvent(true);
        if (!this.scroller.isFinished()) {
          this.scroller.abortAnimation();
        }
        this.mLastMotionX = f1;
        this.mLastMotionY = f2;
        return false;
        this.parentScroll.requestDisallowInterceptTouchEvent(true);
        i = (int)(this.mLastMotionX - f1);
        float f3 = this.mLastMotionY;
        this.mLastMotionX = f1;
        this.mLastMotionY = f2;
        scrollBy(i, 0);
        if (getScrollX() < 0) {
          scrollTo(0, 0);
        }
      } while (getScrollX() <= getChildAt(getChildCount() - 1).getLeft());
      scrollTo(getChildAt(getChildCount() - 1).getLeft(), 0);
      return false;
      this.parentScroll.requestDisallowInterceptTouchEvent(false);
    } while (this.scroller == null);
    if (!this.scroller.isFinished()) {
      this.scroller.abortAnimation();
    }
    snapToScreen((getScrollX() + getWidth() / 2) / getWidth());
    return false;
  }
  
  public void setPageChangeListener(OnPageChangeListenerInterface paramOnPageChangeListenerInterface)
  {
    this.pageChangeListener = paramOnPageChangeListenerInterface;
  }
  
  public void snapToScreen(int paramInt)
  {
    this.currentScreen = paramInt;
    if (this.currentScreen > getChildCount() - 1) {
      this.currentScreen = (getChildCount() - 1);
    }
    paramInt = this.currentScreen * getWidth() - getScrollX();
    this.scroller.startScroll(getScrollX(), 0, paramInt, 0, Math.abs(paramInt) * 2);
    invalidate();
    if (this.pageChangeListener != null) {
      this.pageChangeListener.pageChange(this.currentScreen);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/GalleryItem4012ViewGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */