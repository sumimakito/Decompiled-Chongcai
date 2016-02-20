package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;

public class RightSlidMenu
  extends ViewGroup
{
  private final int CONTENT_PAGE = 0;
  private final int MENU_PAGE = 1;
  private int animTime = 600;
  private RightSlidMenu.onMenuStateChangeListener changeListener;
  private int[] childWidths = new int[2];
  private Context context;
  private int direction;
  public boolean isMenuShow = false;
  private float lastInterceptX;
  private float lastInterceptY;
  private boolean mIsBeingDragged = true;
  private float mLastMotionX;
  private float mLastMotionY;
  private float mTouchSlop;
  private int menuWidth = 250;
  private Scroller scroller;
  
  public RightSlidMenu(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    initView();
  }
  
  public RightSlidMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    initView();
  }
  
  private void initView()
  {
    this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    this.scroller = new Scroller(this.context);
    this.childWidths[0] = YYGYContants.screenWidth;
    this.childWidths[1] = PublicUtil.dip2px(this.menuWidth);
    snapToScreen(0, false);
  }
  
  private void snapToDestination()
  {
    int i;
    if (this.direction > 0)
    {
      if (getScrollX() > this.childWidths[1] / 4) {
        break label76;
      }
      i = 0;
      snapToScreen(i, true);
      if (i != 0) {
        break label81;
      }
      this.isMenuShow = false;
      if (this.changeListener != null) {
        this.changeListener.onClose();
      }
    }
    label76:
    label81:
    do
    {
      return;
      if (getScrollX() > this.childWidths[1] / 4)
      {
        i = 0;
        break;
      }
      i = 1;
      break;
      this.isMenuShow = true;
    } while (this.changeListener == null);
    this.changeListener.onOpen();
  }
  
  private void snapToScreen(int paramInt, boolean paramBoolean)
  {
    if (((paramInt == 1) && (getScrollX() != 0)) || ((paramInt == 0) && (getScrollX() != this.childWidths[1])))
    {
      if (paramInt != 1) {
        break label73;
      }
      paramInt = this.childWidths[1] - getScrollX();
      if (!paramBoolean) {
        break label83;
      }
      this.scroller.startScroll(getScrollX(), 0, paramInt, 0, this.animTime);
    }
    for (;;)
    {
      invalidate();
      return;
      label73:
      paramInt = 0 - getScrollX();
      break;
      label83:
      this.scroller.startScroll(getScrollX(), 0, paramInt, 0);
    }
  }
  
  public void closeOpenMenu()
  {
    if (this.isMenuShow)
    {
      this.isMenuShow = false;
      if (this.changeListener != null) {
        this.changeListener.onClose();
      }
      this.scroller.startScroll(PublicUtil.dip2px(this.menuWidth), 0, -PublicUtil.dip2px(this.menuWidth), 0, this.animTime);
    }
    for (;;)
    {
      invalidate();
      return;
      this.isMenuShow = true;
      if (this.changeListener != null) {
        this.changeListener.onOpen();
      }
      this.scroller.startScroll(0, 0, PublicUtil.dip2px(this.menuWidth), 0, this.animTime);
    }
  }
  
  public void computeScroll()
  {
    if (this.scroller.computeScrollOffset())
    {
      scrollTo(this.scroller.getCurrX(), this.scroller.getCurrY());
      postInvalidate();
    }
  }
  
  public boolean isMenuShow()
  {
    return this.isMenuShow;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    float f2 = paramMotionEvent.getRawX();
    float f1 = paramMotionEvent.getRawY();
    switch (i)
    {
    }
    for (;;)
    {
      super.onInterceptTouchEvent(paramMotionEvent);
      return this.mIsBeingDragged;
      if (!this.scroller.isFinished()) {
        this.scroller.abortAnimation();
      }
      this.lastInterceptX = paramMotionEvent.getRawX();
      this.lastInterceptY = paramMotionEvent.getRawY();
      this.mLastMotionX = paramMotionEvent.getRawX();
      this.mLastMotionY = paramMotionEvent.getRawY();
      this.mIsBeingDragged = false;
      continue;
      f2 -= this.lastInterceptX;
      float f3 = this.lastInterceptY;
      if (Math.abs(f2) > Math.abs(f1 - f3) + this.mTouchSlop)
      {
        if ((this.isMenuShow) || (f2 < 0.0F)) {
          this.mIsBeingDragged = true;
        }
      }
      else
      {
        this.mIsBeingDragged = false;
        continue;
        this.lastInterceptX = 0.0F;
        this.lastInterceptY = 0.0F;
        this.mIsBeingDragged = false;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt1 = 0;
    if (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (paramInt1 == 0) {
        localView.layout(0, 0, getWidth(), getHeight());
      }
      for (;;)
      {
        paramInt1 += 1;
        break;
        localView.layout(getWidth(), 0, PublicUtil.dip2px(this.menuWidth) + getWidth(), getHeight());
      }
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
    default: 
      return false;
    case 0: 
      if (!this.scroller.isFinished()) {
        this.scroller.abortAnimation();
      }
      this.mLastMotionX = f1;
      this.mLastMotionY = f2;
      return false;
    case 2: 
      i = (int)(this.mLastMotionX - f1);
      this.direction = i;
      this.mLastMotionX = f1;
      this.mLastMotionY = f2;
      scrollBy(i, 0);
      if (getScrollX() < 0) {
        scrollTo(0, 0);
      }
      for (;;)
      {
        this.mLastMotionX = f1;
        return false;
        if (getScrollX() > this.childWidths[1]) {
          scrollTo(this.childWidths[1], 0);
        }
      }
    }
    snapToDestination();
    return false;
  }
  
  public void setChangeListener(RightSlidMenu.onMenuStateChangeListener paramonMenuStateChangeListener)
  {
    this.changeListener = paramonMenuStateChangeListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/RightSlidMenu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */