package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import java.io.PrintStream;

public class LazyScrollView
  extends ScrollView
{
  private int currentY;
  private boolean isMore = true;
  private LazyScrollView.OnScrollListenerLazy onScrollListener;
  private ElasticScrollView parentScroll;
  private View view;
  
  public LazyScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public LazyScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public LazyScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void init()
  {
    setFadingEdgeLength(0);
  }
  
  private void setParentScrollAble(boolean paramBoolean)
  {
    ElasticScrollView localElasticScrollView = this.parentScroll;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      localElasticScrollView.requestDisallowInterceptTouchEvent(paramBoolean);
      return;
    }
  }
  
  public int computeVerticalScrollOffset()
  {
    return super.computeVerticalScrollOffset();
  }
  
  public int computeVerticalScrollRange()
  {
    return super.computeHorizontalScrollRange();
  }
  
  public void getView()
  {
    this.view = getChildAt(0);
    if (this.view != null) {
      setFadingEdgeLength(0);
    }
  }
  
  public boolean isMore()
  {
    return this.isMore;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.parentScroll != null)
    {
      if ((paramMotionEvent.getAction() != 0) && (paramMotionEvent.getAction() != 2)) {
        break label59;
      }
      this.currentY = ((int)paramMotionEvent.getY());
      onTouchEvent(paramMotionEvent);
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      this.parentScroll.childTouchEvent(paramMotionEvent);
      return super.onInterceptTouchEvent(paramMotionEvent);
      label59:
      if (paramMotionEvent.getAction() == 1) {
        this.parentScroll.requestDisallowInterceptTouchEvent(false);
      }
    }
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    this.onScrollListener.onAutoScroll(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      int i = (int)paramMotionEvent.getY();
      if (this.currentY < i)
      {
        if (getScrollY() < 2)
        {
          System.out.println("setParentScrollAble()..ttt");
          this.parentScroll.requestDisallowInterceptTouchEvent(false);
          this.parentScroll.childTouchEvent(paramMotionEvent);
          return false;
        }
        this.parentScroll.requestDisallowInterceptTouchEvent(true);
      }
      else if ((this.currentY > i) && (this.view.getMeasuredHeight() - 20 <= getScrollY() + getHeight()))
      {
        if (this.isMore)
        {
          this.parentScroll.requestDisallowInterceptTouchEvent(true);
          if (this.onScrollListener != null) {
            this.onScrollListener.onBottom();
          }
        }
        else
        {
          this.parentScroll.requestDisallowInterceptTouchEvent(false);
          continue;
          this.parentScroll.requestDisallowInterceptTouchEvent(false);
        }
      }
    }
  }
  
  public void setMore(boolean paramBoolean)
  {
    this.isMore = paramBoolean;
  }
  
  public void setOnScrollListener(LazyScrollView.OnScrollListenerLazy paramOnScrollListenerLazy)
  {
    this.onScrollListener = paramOnScrollListenerLazy;
  }
  
  public void setParentScroll(ElasticScrollView paramElasticScrollView)
  {
    this.parentScroll = paramElasticScrollView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/LazyScrollView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */