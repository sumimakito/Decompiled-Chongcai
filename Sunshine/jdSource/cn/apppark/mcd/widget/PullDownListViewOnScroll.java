package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

public class PullDownListViewOnScroll
  extends ListView
{
  private int currentY;
  private FrameLayout footView;
  private Button foot_btn;
  private LinearLayout foot_lay;
  private FrameLayout foot_root;
  private TextView foot_tv;
  private TextView foot_tv_hidden;
  private LayoutInflater inflater;
  private PullDownListViewOnScroll.OnFootRefreshListener2 onFootrefreshListener;
  private ElasticScrollView parentScroll;
  private PullDownListViewOnScroll.OnRefreshListener refreshListener;
  
  public PullDownListViewOnScroll(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public PullDownListViewOnScroll(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }
  
  private void init(Context paramContext)
  {
    setCacheColorHint(0);
    this.inflater = LayoutInflater.from(paramContext);
    setHeaderDividersEnabled(false);
    this.footView = ((FrameLayout)this.inflater.inflate(2130903155, null));
    this.foot_tv_hidden = ((TextView)this.footView.findViewById(2131362563));
    this.foot_tv = ((TextView)this.footView.findViewById(2131362565));
    this.foot_btn = ((Button)this.footView.findViewById(2131362566));
    this.foot_root = ((FrameLayout)this.footView.findViewById(2131362562));
    this.foot_lay = ((LinearLayout)this.footView.findViewById(2131362564));
    this.foot_lay.setVisibility(8);
    addFooterView(this.footView, null, false);
    this.foot_btn.setOnClickListener(new PullDownListViewOnScroll.1(this));
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
  
  public void onFootNodata(int paramInt1, int paramInt2)
  {
    if (paramInt2 >= paramInt1)
    {
      this.foot_root.setVisibility(8);
      this.foot_tv_hidden.setVisibility(8);
      this.foot_btn.setVisibility(8);
      this.foot_lay.setVisibility(8);
      return;
    }
    this.foot_btn.setText("加载更多");
    this.foot_root.setVisibility(0);
    this.foot_btn.setVisibility(0);
  }
  
  public void onFootRefreshComplete()
  {
    this.foot_lay.setVisibility(4);
    this.foot_btn.setVisibility(0);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.parentScroll != null)
    {
      if (paramMotionEvent.getAction() != 0) {
        break label45;
      }
      this.currentY = ((int)paramMotionEvent.getY());
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      this.parentScroll.childTouchEvent(paramMotionEvent);
      return super.onInterceptTouchEvent(paramMotionEvent);
      label45:
      if (paramMotionEvent.getAction() == 1) {
        this.parentScroll.requestDisallowInterceptTouchEvent(false);
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i;
    if ((this.parentScroll != null) && (paramMotionEvent.getAction() == 2))
    {
      i = (int)paramMotionEvent.getY();
      if (this.currentY >= i) {
        break label80;
      }
      if ((getChildAt(0) != null) && (getChildAt(0).getTop() == 0))
      {
        this.parentScroll.requestDisallowInterceptTouchEvent(false);
        this.parentScroll.childTouchEvent(paramMotionEvent);
        return false;
      }
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      label80:
      if ((this.currentY > i) && (getLastVisiblePosition() == getCount() - 1))
      {
        View localView = getChildAt(getChildCount() - 1);
        if ((localView != null) && (localView.getBottom() == getHeight()))
        {
          this.parentScroll.requestDisallowInterceptTouchEvent(false);
          return false;
        }
        this.parentScroll.requestDisallowInterceptTouchEvent(true);
      }
    }
  }
  
  public void setParentScroll(ElasticScrollView paramElasticScrollView)
  {
    this.parentScroll = paramElasticScrollView;
  }
  
  public void setonFootRefreshListener(PullDownListViewOnScroll.OnFootRefreshListener2 paramOnFootRefreshListener2)
  {
    this.onFootrefreshListener = paramOnFootRefreshListener2;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/PullDownListViewOnScroll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */