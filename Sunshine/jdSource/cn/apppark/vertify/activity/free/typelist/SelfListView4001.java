package cn.apppark.vertify.activity.free.typelist;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;
import android.widget.ScrollView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfListViewItem2Vo;
import cn.apppark.mcd.vo.free.SelfListViewItemVo;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.adapter.SelfListView4001Adapter;
import java.util.ArrayList;
import nj;
import nk;

public class SelfListView4001
  extends ListView
  implements ISelfView
{
  private SelfListView4001Adapter adapter;
  private int currentY;
  private int firstItemIndex = 0;
  private ScrollView parentScroll;
  
  public SelfListView4001(Context paramContext, FreePageVo paramFreePageVo, SelfListViewItemVo paramSelfListViewItemVo, ArrayList<SelfListViewItem2Vo> paramArrayList, ScrollView paramScrollView)
  {
    super(paramContext);
    this.adapter = new SelfListView4001Adapter(paramContext, paramSelfListViewItemVo, paramArrayList);
    this.parentScroll = paramScrollView;
    setAdapter(this.adapter);
    setCacheColorHint(0);
    setFadingEdgeLength(0);
    setVerticalScrollBarEnabled(false);
    setScrollingCacheEnabled(false);
    setOnItemClickListener(new nj(this, paramArrayList, paramFreePageVo));
    setOnScrollListener(new nk(this));
    if (FunctionPublic.str2int(paramSelfListViewItemVo.getStyle_bgAlpha()) != 0) {
      FunctionPublic.setBackground(this, paramSelfListViewItemVo.getStyle_bgType(), paramSelfListViewItemVo.getStyle_bgPic(), paramSelfListViewItemVo.getStyle_bgColor());
    }
    if ((getBackground() != null) && (!"0".equals(paramSelfListViewItemVo.getStyle_bgType()))) {
      getBackground().setAlpha(FunctionPublic.str2int(paramSelfListViewItemVo.getStyle_bgAlpha()) * 255 / 100);
    }
    if (FunctionPublic.str2int(paramSelfListViewItemVo.getStyle_rowLineBgAlpha()) == 0)
    {
      FunctionPublic.setDevider(this, "0", paramSelfListViewItemVo.getStyle_rowLineBgPic(), paramSelfListViewItemVo.getStyle_rowLineColor(), paramSelfListViewItemVo.getStyle_rowLineHeight());
      return;
    }
    FunctionPublic.setDevider(this, paramSelfListViewItemVo.getStyle_rowLineBgType(), paramSelfListViewItemVo.getStyle_rowLineBgPic(), paramSelfListViewItemVo.getStyle_rowLineColor(), paramSelfListViewItemVo.getStyle_rowLineHeight());
  }
  
  private void setParentScrollAble(boolean paramBoolean)
  {
    ScrollView localScrollView = this.parentScroll;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      localScrollView.requestDisallowInterceptTouchEvent(paramBoolean);
      return;
    }
  }
  
  public void init() {}
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onDestroy() {}
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.parentScroll != null)
    {
      if (paramMotionEvent.getAction() != 0) {
        break label37;
      }
      this.currentY = ((int)paramMotionEvent.getY());
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      label37:
      if (paramMotionEvent.getAction() == 1) {
        this.parentScroll.requestDisallowInterceptTouchEvent(false);
      }
    }
  }
  
  public void onPause() {}
  
  public void onResume()
  {
    if (Build.VERSION.SDK_INT == 15)
    {
      setAdapter(this.adapter);
      setSelection(this.firstItemIndex);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i;
    if ((this.parentScroll != null) && (paramMotionEvent.getAction() == 2))
    {
      i = (int)paramMotionEvent.getY();
      if (this.currentY >= i) {
        break label69;
      }
      if (getChildAt(0).getTop() == 0)
      {
        this.parentScroll.requestDisallowInterceptTouchEvent(false);
        return false;
      }
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      this.currentY = i;
      return super.onTouchEvent(paramMotionEvent);
      label69:
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
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typelist/SelfListView4001.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */