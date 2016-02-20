package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.Date;

public class ElasticScrollView
  extends ScrollView
{
  private static final int DONE = 3;
  private static final int LOADING = 4;
  private static final int PULL_To_REFRESH = 1;
  private static final int RATIO = 3;
  private static final int REFRESHING = 2;
  private static final int RELEASE_To_REFRESH = 0;
  private boolean canReturn;
  private ElasticScrollView.ElasticScrollViewListener elasticScrollViewListener;
  private int headContentHeight;
  private LinearLayout headView;
  private LinearLayout innerLayout;
  private boolean isBack;
  private boolean isChildEvent = false;
  private boolean isRecored;
  private boolean isRefreshable;
  private TextView lastUpdatedTextView;
  private ProgressBar progressBar;
  private ElasticScrollView.OnRefreshListener refreshListener;
  private int startY;
  private int state;
  private TextView tipsTextview;
  private int topMenuHeight;
  
  public ElasticScrollView(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public ElasticScrollView(Context paramContext, AttributeSet paramAttributeSet)
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
      this.tipsTextview.setText("正在刷新...");
      this.lastUpdatedTextView.setVisibility(0);
      return;
    }
    this.headView.setPadding(0, this.headContentHeight * -1, 0, 0);
    this.progressBar.setVisibility(8);
    this.tipsTextview.setText("下拉刷新");
    this.lastUpdatedTextView.setVisibility(0);
  }
  
  private void init(Context paramContext)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    this.innerLayout = new LinearLayout(paramContext);
    this.innerLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.innerLayout.setOrientation(1);
    this.headView = ((LinearLayout)localLayoutInflater.inflate(2130903183, null));
    this.progressBar = ((ProgressBar)this.headView.findViewById(2131362402));
    this.tipsTextview = ((TextView)this.headView.findViewById(2131362404));
    this.lastUpdatedTextView = ((TextView)this.headView.findViewById(2131362405));
    this.lastUpdatedTextView.setText("最近更新:" + new Date().toLocaleString());
    measureView(this.headView);
    this.headContentHeight = this.headView.getMeasuredHeight();
    this.headView.getMeasuredWidth();
    this.headView.setPadding(0, this.headContentHeight * -1, 0, 0);
    this.headView.invalidate();
    this.innerLayout.addView(this.headView);
    addView(this.innerLayout);
    this.state = 3;
    this.isRefreshable = true;
    this.canReturn = false;
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
  
  public void addChild(View paramView)
  {
    this.innerLayout.addView(paramView);
  }
  
  public void addChild(View paramView, int paramInt)
  {
    this.innerLayout.addView(paramView, paramInt);
  }
  
  public void addChild(View paramView, LinearLayout.LayoutParams paramLayoutParams)
  {
    this.innerLayout.addView(paramView, paramLayoutParams);
  }
  
  public void autoHeadRefresh()
  {
    this.state = 2;
    this.lastUpdatedTextView.setText("最近更新:" + new Date().toLocaleString());
    changeHeaderViewByState();
  }
  
  public void childTouchEvent(MotionEvent paramMotionEvent)
  {
    this.isChildEvent = true;
    onTouchEvent(paramMotionEvent);
  }
  
  public void onRefreshComplete()
  {
    this.state = 3;
    this.lastUpdatedTextView.setText("最近更新:" + new Date().toLocaleString());
    changeHeaderViewByState();
    invalidate();
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.elasticScrollViewListener != null) {
      this.elasticScrollViewListener.onScroll(paramInt2);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.isRefreshable) {}
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 1: 
      for (;;)
      {
        return super.onTouchEvent(paramMotionEvent);
        if ((getScrollY() == 0) && (!this.isRecored))
        {
          this.isRecored = true;
          this.startY = ((int)paramMotionEvent.getY() + this.topMenuHeight);
          continue;
          if ((this.state != 2) && (this.state != 4))
          {
            i = this.state;
            if (this.state == 1)
            {
              this.state = 3;
              changeHeaderViewByState();
            }
            if (this.state == 0)
            {
              this.state = 2;
              changeHeaderViewByState();
              if (this.refreshListener != null) {
                this.refreshListener.onRefresh();
              }
            }
          }
          this.isRecored = false;
          this.isBack = false;
        }
      }
    }
    int i = (int)paramMotionEvent.getRawY();
    if ((!this.isRecored) && (getScrollY() == 0))
    {
      this.isRecored = true;
      this.startY = i;
      label191:
      if ((this.state == 2) || (!this.isRecored) || (this.state == 4)) {
        break label401;
      }
      if (this.state == 0)
      {
        this.canReturn = true;
        if (((i - this.startY) / 3 >= this.headContentHeight) || (i - this.startY <= 0)) {
          break label403;
        }
        this.state = 1;
        changeHeaderViewByState();
      }
      label259:
      if (this.state == 1)
      {
        this.canReturn = true;
        if ((i - this.startY) / 3 < this.headContentHeight) {
          break label424;
        }
        this.state = 0;
        this.isBack = true;
        changeHeaderViewByState();
      }
    }
    for (;;)
    {
      if ((this.state == 3) && (i - this.startY > 0))
      {
        this.state = 1;
        changeHeaderViewByState();
      }
      if ((this.state == 1) || (this.state == 0))
      {
        i = (i - this.startY) / 3;
        int j = this.headContentHeight;
        this.headView.setPadding(0, i - j, 0, 0);
      }
      if (!this.canReturn) {
        break;
      }
      this.canReturn = false;
      return true;
      if (!this.isChildEvent) {
        break label191;
      }
      this.startY = i;
      this.isChildEvent = false;
      break label191;
      label401:
      break;
      label403:
      if (i - this.startY > 0) {
        break label259;
      }
      this.state = 3;
      changeHeaderViewByState();
      break label259;
      label424:
      if (i - this.startY <= 0)
      {
        this.state = 3;
        changeHeaderViewByState();
      }
    }
  }
  
  public void setElasticScrollViewListener(ElasticScrollView.ElasticScrollViewListener paramElasticScrollViewListener)
  {
    this.elasticScrollViewListener = paramElasticScrollViewListener;
  }
  
  public void setRefreshable(boolean paramBoolean)
  {
    this.isRefreshable = paramBoolean;
  }
  
  public void setTopMenuHeight(int paramInt)
  {
    this.topMenuHeight = paramInt;
  }
  
  public void setonRefreshListener(ElasticScrollView.OnRefreshListener paramOnRefreshListener)
  {
    this.refreshListener = paramOnRefreshListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/ElasticScrollView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */