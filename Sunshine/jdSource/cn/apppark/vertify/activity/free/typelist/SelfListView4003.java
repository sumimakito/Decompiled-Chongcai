package cn.apppark.vertify.activity.free.typelist;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.MotionEvent;
import android.widget.ListView;
import android.widget.ScrollView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfListViewItem2Vo;
import cn.apppark.mcd.vo.free.SelfListViewItemVo;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.adapter.SelfListView4003Adapter;
import java.util.ArrayList;
import nn;
import no;

public class SelfListView4003
  extends ListView
  implements ISelfView
{
  private SelfListView4003Adapter adapter;
  private int firstItemIndex = 0;
  private ScrollView parentScroll;
  
  public SelfListView4003(Context paramContext, FreePageVo paramFreePageVo, SelfListViewItemVo paramSelfListViewItemVo, ArrayList<SelfListViewItem2Vo> paramArrayList, ScrollView paramScrollView)
  {
    super(paramContext);
    setCacheColorHint(0);
    setFadingEdgeLength(0);
    setVerticalScrollBarEnabled(false);
    setScrollingCacheEnabled(false);
    this.adapter = new SelfListView4003Adapter(paramContext, paramSelfListViewItemVo, paramArrayList);
    setAdapter(this.adapter);
    this.parentScroll = paramScrollView;
    setOnItemClickListener(new nn(this, paramArrayList, paramFreePageVo));
    setOnScrollListener(new no(this));
    if (!"0.0".equals(paramSelfListViewItemVo.getStyle_bgAlpha())) {
      FunctionPublic.setBackground(this, paramSelfListViewItemVo.getStyle_bgType(), paramSelfListViewItemVo.getStyle_bgPic(), paramSelfListViewItemVo.getStyle_bgColor());
    }
    if ((getBackground() != null) && (!"0".equals(paramSelfListViewItemVo.getStyle_bgType()))) {
      getBackground().setAlpha(FunctionPublic.str2int(paramSelfListViewItemVo.getStyle_bgAlpha()) * 255 / 100);
    }
    if ("0.0".equals(paramSelfListViewItemVo.getStyle_rowLineBgAlpha()))
    {
      FunctionPublic.setDevider(this, "0", paramSelfListViewItemVo.getStyle_rowLineBgPic(), paramSelfListViewItemVo.getStyle_rowLineColor(), paramSelfListViewItemVo.getStyle_rowLineHeight());
      return;
    }
    FunctionPublic.setDevider(this, paramSelfListViewItemVo.getStyle_rowLineBgType(), paramSelfListViewItemVo.getStyle_rowLineBgPic(), paramSelfListViewItemVo.getStyle_rowLineColor(), paramSelfListViewItemVo.getStyle_rowLineHeight());
  }
  
  public void init() {}
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onDestroy() {}
  
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
    if (paramMotionEvent.getAction() == 1) {
      this.parentScroll.requestDisallowInterceptTouchEvent(false);
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typelist/SelfListView4003.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */