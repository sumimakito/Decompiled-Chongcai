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
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import java.util.Date;

public class PullDownListView2
  extends ListView
  implements AbsListView.OnScrollListener
{
  private static final int DONE = 3;
  private static final int LOADING = 4;
  private static final int PULL_To_REFRESH = 1;
  private static final int RATIO = 3;
  private static final int REFRESHING = 2;
  private static final int RELEASE_To_REFRESH = 0;
  private ImageView arrowImageView;
  private int firstItemIndex;
  private FrameLayout footView;
  private Button foot_btn;
  private LinearLayout foot_lay;
  private FrameLayout foot_root;
  private TextView foot_tv;
  private TextView foot_tv_hidden;
  public UserGallery gallery;
  private int headContentHeight;
  private int headContentWidth;
  private LinearLayout headView;
  private LayoutInflater inflater;
  private boolean isBack;
  private boolean isNext = true;
  private boolean isRecored;
  private boolean isRefreshable;
  private TextView lastUpdatedTextView;
  public LinearLayout ll_point;
  private PullDownListView2.OnFootRefreshListener2 onFootrefreshListener;
  private ProgressBar progressBar;
  private PullDownListView2.OnRefreshListener2 refreshListener;
  private int startY;
  private int state;
  private TextView tipsTextview;
  private int totalItemCount;
  private int visibleLastIndex;
  
  public PullDownListView2(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public PullDownListView2(Context paramContext, AttributeSet paramAttributeSet)
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
      this.arrowImageView.setVisibility(0);
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
      this.arrowImageView.setVisibility(0);
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
    this.headView = ((LinearLayout)this.inflater.inflate(2130903120, null));
    this.arrowImageView = ((ImageView)this.headView.findViewById(2131362403));
    this.arrowImageView.setMinimumWidth(50);
    this.arrowImageView.setMinimumHeight(50);
    this.progressBar = ((ProgressBar)this.headView.findViewById(2131362402));
    this.tipsTextview = ((TextView)this.headView.findViewById(2131362404));
    this.lastUpdatedTextView = ((TextView)this.headView.findViewById(2131362405));
    measureView(this.headView);
    this.headContentHeight = this.headView.getMeasuredHeight();
    this.headContentWidth = this.headView.getMeasuredWidth();
    this.headView.setPadding(0, this.headContentHeight * -1, 0, 0);
    this.headView.invalidate();
    addHeaderView(this.headView, null, false);
    paramContext = (LinearLayout)this.inflater.inflate(2130903208, null);
    paramContext.setLayoutParams(new AbsListView.LayoutParams(-1, (int)(112.0F * YYGYContants.scaleUnite)));
    this.gallery = ((UserGallery)paramContext.findViewById(2131362833));
    this.ll_point = ((LinearLayout)paramContext.findViewById(2131362834));
    addHeaderView(paramContext, null, true);
    setHeaderDividersEnabled(false);
    setOnScrollListener(this);
    this.footView = ((FrameLayout)this.inflater.inflate(2130903155, null));
    this.foot_tv_hidden = ((TextView)this.footView.findViewById(2131362563));
    this.foot_tv = ((TextView)this.footView.findViewById(2131362565));
    this.foot_btn = ((Button)this.footView.findViewById(2131362566));
    this.foot_root = ((FrameLayout)this.footView.findViewById(2131362562));
    this.foot_lay = ((LinearLayout)this.footView.findViewById(2131362564));
    this.foot_lay.setVisibility(8);
    addFooterView(this.footView, null, false);
    this.foot_btn.setOnClickListener(new PullDownListView2.1(this));
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
      this.foot_tv_hidden.setVisibility(8);
      this.foot_btn.setVisibility(8);
      this.foot_lay.setVisibility(8);
      this.isNext = false;
      return;
    }
    this.isNext = true;
    this.foot_btn.setText("加载更多");
    this.foot_root.setVisibility(0);
    this.foot_btn.setVisibility(0);
  }
  
  public void onFootRefreshComplete()
  {
    this.foot_lay.setVisibility(4);
    this.foot_btn.setVisibility(0);
  }
  
  public void onHeadRefreshComplete()
  {
    this.state = 3;
    this.lastUpdatedTextView.setText("最近更新:" + new Date().toLocaleString());
    changeHeaderViewByState();
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.firstItemIndex = paramInt1;
    this.totalItemCount = paramInt3;
    this.visibleLastIndex = (paramInt1 + paramInt2 - 1);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 0) && (this.totalItemCount == this.visibleLastIndex + 1) && (this.onFootrefreshListener != null) && (this.isNext))
    {
      this.onFootrefreshListener.onFootRefresh();
      this.foot_lay.setVisibility(0);
      this.foot_btn.setVisibility(4);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.isRefreshable) {
      switch (paramMotionEvent.getAction())
      {
      }
    }
    int i;
    do
    {
      for (;;)
      {
        return super.onTouchEvent(paramMotionEvent);
        if ((this.firstItemIndex == 0) && (!this.isRecored))
        {
          this.isRecored = true;
          this.startY = ((int)paramMotionEvent.getY());
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
      i = (int)paramMotionEvent.getY();
      if ((!this.isRecored) && (this.firstItemIndex == 0))
      {
        this.isRecored = true;
        this.startY = i;
      }
    } while ((this.state == 2) || (!this.isRecored) || (this.state == 4));
    if (this.state == 0)
    {
      setSelection(0);
      if (((i - this.startY) / 3 < this.headContentHeight) && (i - this.startY > 0))
      {
        this.state = 1;
        changeHeaderViewByState();
      }
    }
    else
    {
      label254:
      if (this.state == 1)
      {
        setSelection(0);
        if ((i - this.startY) / 3 < this.headContentHeight) {
          break label409;
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
      if (this.state == 1) {
        this.headView.setPadding(0, this.headContentHeight * -1 + (i - this.startY) / 3, 0, 0);
      }
      if (this.state != 0) {
        break;
      }
      this.headView.setPadding(0, (i - this.startY) / 3 - this.headContentHeight, 0, 0);
      break;
      if (i - this.startY > 0) {
        break label254;
      }
      this.state = 3;
      changeHeaderViewByState();
      break label254;
      label409:
      if (i - this.startY <= 0)
      {
        this.state = 3;
        changeHeaderViewByState();
      }
    }
  }
  
  public void setAdapter(BaseAdapter paramBaseAdapter)
  {
    this.lastUpdatedTextView.setText("最近更新:" + new Date().toLocaleString());
    super.setAdapter(paramBaseAdapter);
  }
  
  public void setonFootRefreshListener(PullDownListView2.OnFootRefreshListener2 paramOnFootRefreshListener2)
  {
    this.onFootrefreshListener = paramOnFootRefreshListener2;
  }
  
  public void setonRefreshListener(PullDownListView2.OnRefreshListener2 paramOnRefreshListener2, boolean paramBoolean)
  {
    this.refreshListener = paramOnRefreshListener2;
    this.isRefreshable = paramBoolean;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/PullDownListView2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */