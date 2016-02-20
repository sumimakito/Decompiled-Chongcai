package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.Date;

public class PullDownListViewAutoLoad
  extends ListView
  implements AbsListView.OnScrollListener
{
  private static final int DONE = 3;
  private static final int PULL_To_REFRESH = 1;
  private static final int RATIO = 3;
  private static final int REFRESHING = 2;
  private static final int RELEASE_To_REFRESH = 0;
  private ImageView arrowImageView;
  private int currentY;
  protected int firstItemIndex = 0;
  private FrameLayout footView;
  private LinearLayout foot_lay;
  private FrameLayout foot_root;
  private int headContentHeight;
  private LinearLayout headView;
  private LayoutInflater inflater;
  private boolean isBack;
  private boolean isBottomScroll = true;
  private boolean isNext = true;
  private boolean isRefreshable;
  private boolean isScroll = true;
  private TextView lastUpdatedTextView;
  private PullDownListViewAutoLoad.OnFootRefreshListener onFootrefreshListener;
  private ElasticScrollView parentScroll;
  private ProgressBar progressBar;
  private PullDownListViewAutoLoad.OnRefreshListener refreshListener;
  private int state;
  private TextView tipsTextview;
  private int totalItemCount;
  private int visibleLastIndex;
  
  public PullDownListViewAutoLoad(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public PullDownListViewAutoLoad(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }
  
  private void changeHeaderViewByState()
  {
    switch (this.state)
    {
    default: 
      return;
    case 0: 
      this.progressBar.setVisibility(8);
      this.tipsTextview.setVisibility(0);
      this.lastUpdatedTextView.setVisibility(0);
      this.tipsTextview.setText("松开刷新");
      return;
    case 1: 
      this.progressBar.setVisibility(8);
      this.tipsTextview.setVisibility(0);
      this.lastUpdatedTextView.setVisibility(0);
      this.arrowImageView.clearAnimation();
      if (this.isBack)
      {
        this.isBack = false;
        this.tipsTextview.setText("下拉刷新");
        return;
      }
      this.tipsTextview.setText("下拉刷新");
      return;
    case 2: 
      this.headView.setPadding(0, 0, 0, 0);
      this.progressBar.setVisibility(0);
      this.arrowImageView.clearAnimation();
      this.arrowImageView.setVisibility(8);
      this.tipsTextview.setText("正在刷新...");
      this.lastUpdatedTextView.setVisibility(0);
      return;
    }
    this.headView.setPadding(0, this.headContentHeight * -5, 0, 0);
    this.progressBar.setVisibility(8);
    this.arrowImageView.clearAnimation();
    this.arrowImageView.setImageResource(2130837793);
    this.tipsTextview.setText("下拉刷新");
    this.lastUpdatedTextView.setVisibility(0);
  }
  
  private void init(Context paramContext)
  {
    setCacheColorHint(0);
    this.inflater = LayoutInflater.from(paramContext);
    this.headView = ((LinearLayout)this.inflater.inflate(2130903159, null));
    this.arrowImageView = ((ImageView)this.headView.findViewById(2131362403));
    this.progressBar = ((ProgressBar)this.headView.findViewById(2131362402));
    this.tipsTextview = ((TextView)this.headView.findViewById(2131362404));
    this.lastUpdatedTextView = ((TextView)this.headView.findViewById(2131362405));
    measureView(this.headView);
    this.headContentHeight = this.headView.getMeasuredHeight();
    this.headView.setPadding(0, this.headContentHeight * -1, 0, 0);
    this.headView.invalidate();
    addHeaderView(this.headView, null, false);
    setHeaderDividersEnabled(false);
    setFooterDividersEnabled(false);
    setOnScrollListener(this);
    this.footView = ((FrameLayout)this.inflater.inflate(2130903158, null));
    this.foot_root = ((FrameLayout)this.footView.findViewById(2131362562));
    this.foot_lay = ((LinearLayout)this.footView.findViewById(2131362564));
    this.foot_lay.setVisibility(8);
    addFooterView(this.footView, null, false);
    this.state = 3;
    this.isRefreshable = false;
  }
  
  private void measureView(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams2 = paramView.getLayoutParams();
    ViewGroup.LayoutParams localLayoutParams1 = localLayoutParams2;
    if (localLayoutParams2 == null) {
      localLayoutParams1 = new ViewGroup.LayoutParams(-1, -2);
    }
    int j = ViewGroup.getChildMeasureSpec(0, 0, localLayoutParams1.width);
    int i = localLayoutParams1.height;
    if (i > 0) {}
    for (i = View.MeasureSpec.makeMeasureSpec(i, 1073741824);; i = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(j, i);
      return;
    }
  }
  
  private void onRefresh()
  {
    if (this.refreshListener != null) {
      this.refreshListener.onRefresh();
    }
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
  
  public void autoHeadRefresh()
  {
    this.state = 2;
    changeHeaderViewByState();
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
  
  public void onHeadRefreshComplete()
  {
    this.state = 3;
    this.lastUpdatedTextView.setText("最近更新:" + new Date().toLocaleString());
    changeHeaderViewByState();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.parentScroll != null) && (this.isScroll))
    {
      if (paramMotionEvent.getAction() != 0) {
        break label52;
      }
      this.currentY = ((int)paramMotionEvent.getY());
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      this.parentScroll.childTouchEvent(paramMotionEvent);
      return super.onInterceptTouchEvent(paramMotionEvent);
      label52:
      if (paramMotionEvent.getAction() == 1) {
        this.parentScroll.requestDisallowInterceptTouchEvent(false);
      }
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.totalItemCount = paramInt3;
    this.firstItemIndex = paramInt1;
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
    int i;
    if ((this.parentScroll != null) && (this.isScroll) && (paramMotionEvent.getAction() == 2))
    {
      i = (int)paramMotionEvent.getY();
      if (this.currentY >= i) {
        break label87;
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
      label87:
      if ((this.currentY > i) && (getLastVisiblePosition() == getCount() - 1))
      {
        View localView = getChildAt(getChildCount() - 1);
        if ((localView != null) && (localView.getBottom() == getHeight()) && (this.isBottomScroll))
        {
          this.parentScroll.requestDisallowInterceptTouchEvent(false);
          return false;
        }
        this.parentScroll.requestDisallowInterceptTouchEvent(true);
      }
    }
  }
  
  public void setAdapter(BaseAdapter paramBaseAdapter)
  {
    this.lastUpdatedTextView.setText("最近更新:" + new Date().toLocaleString());
    super.setAdapter(paramBaseAdapter);
  }
  
  public void setBottomScroll(boolean paramBoolean)
  {
    this.isBottomScroll = paramBoolean;
  }
  
  public void setParentScroll(ElasticScrollView paramElasticScrollView)
  {
    this.parentScroll = paramElasticScrollView;
  }
  
  public void setScroll(boolean paramBoolean)
  {
    this.isScroll = paramBoolean;
  }
  
  public void setonFootRefreshListener(PullDownListViewAutoLoad.OnFootRefreshListener paramOnFootRefreshListener)
  {
    this.onFootrefreshListener = paramOnFootRefreshListener;
  }
  
  public void setonRefreshListener(PullDownListViewAutoLoad.OnRefreshListener paramOnRefreshListener, boolean paramBoolean)
  {
    this.refreshListener = paramOnRefreshListener;
    this.isRefreshable = paramBoolean;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/PullDownListViewAutoLoad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */