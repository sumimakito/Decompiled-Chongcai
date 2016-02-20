package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;

public class InnerScrollView
  extends ScrollView
{
  private int currentY;
  private ScrollView parentScrollView;
  
  public InnerScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public InnerScrollView(Context paramContext, ScrollView paramScrollView)
  {
    super(paramContext);
    this.parentScrollView = paramScrollView;
  }
  
  private void setParentScrollAble(boolean paramBoolean)
  {
    ScrollView localScrollView = this.parentScrollView;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      localScrollView.requestDisallowInterceptTouchEvent(paramBoolean);
      return;
    }
  }
  
  public ScrollView getParentScrollView()
  {
    return this.parentScrollView;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.parentScrollView != null)
    {
      if (paramMotionEvent.getAction() != 0) {
        break label37;
      }
      this.currentY = ((int)paramMotionEvent.getY());
      this.parentScrollView.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      label37:
      if (paramMotionEvent.getAction() == 1) {
        this.parentScrollView.requestDisallowInterceptTouchEvent(false);
      } else {
        paramMotionEvent.getAction();
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    View localView = getChildAt(0);
    int i;
    int j;
    int k;
    int m;
    if ((this.parentScrollView != null) && (paramMotionEvent.getAction() == 2))
    {
      i = localView.getMeasuredHeight();
      j = getMeasuredHeight();
      k = getScrollY();
      m = (int)paramMotionEvent.getY();
      if (this.currentY >= m) {
        break label90;
      }
      if (k <= 0)
      {
        this.parentScrollView.requestDisallowInterceptTouchEvent(false);
        return false;
      }
      this.parentScrollView.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      this.currentY = m;
      return super.onTouchEvent(paramMotionEvent);
      label90:
      if (this.currentY > m)
      {
        if (k >= i - j)
        {
          this.parentScrollView.requestDisallowInterceptTouchEvent(false);
          return false;
        }
        this.parentScrollView.requestDisallowInterceptTouchEvent(true);
      }
    }
  }
  
  public void setParentScrollView(ScrollView paramScrollView)
  {
    this.parentScrollView = paramScrollView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/InnerScrollView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */