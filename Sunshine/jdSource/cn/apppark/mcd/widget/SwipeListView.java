package cn.apppark.mcd.widget;

import aj;
import android.content.Context;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import cn.apppark.mcd.util.PublicUtil;

public class SwipeListView
  extends ListView
  implements AbsListView.OnScrollListener
{
  private FrameLayout footView;
  private LinearLayout foot_lay;
  private FrameLayout foot_root;
  private boolean isNext = true;
  private View mCurrentItemView;
  private final int mDuration = 30;
  private final int mDurationStep = 20;
  private float mFirstX;
  private float mFirstY;
  private Boolean mIsHorizontal;
  private boolean mIsShown;
  private View mPreItemView;
  private int mRightViewWidth = PublicUtil.dip2px(100.0F);
  private PullDownListView4.OnFootRefreshListener4 onFootrefreshListener;
  private int totalItemCount;
  private int visibleLastIndex;
  
  public SwipeListView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SwipeListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SwipeListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }
  
  private void clearPressedState()
  {
    if (this.mCurrentItemView != null)
    {
      this.mCurrentItemView.setPressed(false);
      setPressed(false);
      refreshDrawableState();
    }
  }
  
  private void init(Context paramContext)
  {
    setCacheColorHint(0);
    setHeaderDividersEnabled(false);
    setFooterDividersEnabled(false);
    setOnScrollListener(this);
    this.footView = ((FrameLayout)LayoutInflater.from(paramContext).inflate(2130903158, null));
    this.foot_root = ((FrameLayout)this.footView.findViewById(2131362562));
    this.foot_lay = ((LinearLayout)this.footView.findViewById(2131362564));
    this.foot_lay.setVisibility(8);
    addFooterView(this.footView, null, false);
  }
  
  private boolean isHitCurItemLeft(float paramFloat)
  {
    return paramFloat < getWidth() - this.mRightViewWidth;
  }
  
  private boolean judgeScrollDirection(float paramFloat1, float paramFloat2)
  {
    if ((Math.abs(paramFloat1) > 30.0F) && (Math.abs(paramFloat1) > Math.abs(paramFloat2) * 2.0F))
    {
      this.mIsHorizontal = Boolean.valueOf(true);
      return true;
    }
    if ((Math.abs(paramFloat2) > 30.0F) && (Math.abs(paramFloat2) > Math.abs(paramFloat1) * 2.0F))
    {
      this.mIsHorizontal = Boolean.valueOf(false);
      return true;
    }
    return false;
  }
  
  private void showRight(View paramView)
  {
    if (paramView != null)
    {
      Message localMessage = new aj(this).obtainMessage();
      localMessage.obj = paramView;
      localMessage.arg1 = paramView.getScrollX();
      localMessage.arg2 = this.mRightViewWidth;
      localMessage.sendToTarget();
      this.mIsShown = true;
    }
  }
  
  public PullDownListView4.OnFootRefreshListener4 getOnFootrefreshListener()
  {
    return this.onFootrefreshListener;
  }
  
  public int getRightViewWidth()
  {
    return this.mRightViewWidth;
  }
  
  public void hiddenRight(View paramView)
  {
    if ((this.mCurrentItemView == null) || (paramView == null)) {
      return;
    }
    Message localMessage = new aj(this).obtainMessage();
    localMessage.obj = paramView;
    localMessage.arg1 = paramView.getScrollX();
    localMessage.arg2 = 0;
    localMessage.sendToTarget();
    this.mIsShown = false;
  }
  
  public void onFootNodata(int paramInt1, int paramInt2)
  {
    if (paramInt2 >= paramInt1)
    {
      this.foot_root.setVisibility(8);
      this.foot_lay.setVisibility(8);
      this.isNext = false;
      return;
    }
    this.isNext = true;
    this.foot_root.setVisibility(0);
    this.foot_lay.setVisibility(0);
  }
  
  public void onFootRefreshComplete()
  {
    this.foot_root.setVisibility(4);
    this.foot_lay.setVisibility(4);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      this.mIsHorizontal = null;
      this.mFirstX = f1;
      this.mFirstY = f2;
      int i = pointToPosition((int)this.mFirstX, (int)this.mFirstY);
      if (i >= 0)
      {
        View localView = getChildAt(i - getFirstVisiblePosition());
        this.mPreItemView = this.mCurrentItemView;
        this.mCurrentItemView = localView;
        continue;
        float f3 = this.mFirstX;
        float f4 = this.mFirstY;
        if ((Math.abs(f1 - f3) >= 5.0F) && (Math.abs(f2 - f4) >= 5.0F))
        {
          return true;
          if ((this.mIsShown) && ((this.mPreItemView != this.mCurrentItemView) || (isHitCurItemLeft(f1)))) {
            hiddenRight(this.mPreItemView);
          }
        }
      }
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.totalItemCount = paramInt3;
    this.visibleLastIndex = (paramInt1 + paramInt2 - 1);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 0) && (this.totalItemCount == this.visibleLastIndex + 1) && (this.onFootrefreshListener != null) && (this.isNext))
    {
      this.onFootrefreshListener.onFootRefresh();
      this.foot_root.setVisibility(0);
      this.foot_lay.setVisibility(0);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = true;
    float f2 = paramMotionEvent.getX();
    float f1 = paramMotionEvent.getY();
    switch (paramMotionEvent.getAction())
    {
    }
    label205:
    do
    {
      for (;;)
      {
        boolean bool1 = super.onTouchEvent(paramMotionEvent);
        do
        {
          do
          {
            do
            {
              return bool1;
              f2 -= this.mFirstX;
              float f3 = this.mFirstY;
              if ((this.mIsHorizontal == null) && (!judgeScrollDirection(f2, f1 - f3))) {
                break;
              }
              if (!this.mIsHorizontal.booleanValue()) {
                break label205;
              }
              if ((this.mIsShown) && (this.mPreItemView != this.mCurrentItemView)) {
                hiddenRight(this.mPreItemView);
              }
              f1 = f2;
              if (this.mIsShown)
              {
                f1 = f2;
                if (this.mPreItemView == this.mCurrentItemView) {
                  f1 = f2 - this.mRightViewWidth;
                }
              }
              bool1 = bool2;
            } while (f1 >= 0.0F);
            bool1 = bool2;
          } while (f1 <= -this.mRightViewWidth);
          bool1 = bool2;
        } while (this.mCurrentItemView == null);
        this.mCurrentItemView.scrollTo((int)-f1, 0);
        return true;
        if (this.mIsShown) {
          hiddenRight(this.mPreItemView);
        }
      }
      if (this.mCurrentItemView != null)
      {
        this.mCurrentItemView.setPressed(false);
        setPressed(false);
        refreshDrawableState();
      }
      if (this.mIsShown) {
        hiddenRight(this.mPreItemView);
      }
    } while ((this.mIsHorizontal == null) || (!this.mIsHorizontal.booleanValue()));
    if (this.mFirstX - f2 > this.mRightViewWidth / 2)
    {
      showRight(this.mCurrentItemView);
      return true;
    }
    hiddenRight(this.mCurrentItemView);
    return true;
  }
  
  public void setOnFootrefreshListener(PullDownListView4.OnFootRefreshListener4 paramOnFootRefreshListener4)
  {
    this.onFootrefreshListener = paramOnFootRefreshListener4;
  }
  
  public void setRightViewWidth(int paramInt)
  {
    this.mRightViewWidth = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/SwipeListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */