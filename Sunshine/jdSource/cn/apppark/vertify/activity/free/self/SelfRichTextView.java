package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ScrollView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.ISelfView;

public class SelfRichTextView
  extends WebView
  implements ISelfView
{
  private Context context;
  private int currentY;
  private ScrollView parentScroll;
  private SelfDefineItemVo vo;
  
  public SelfRichTextView(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo, ScrollView paramScrollView)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.parentScroll = paramScrollView;
    this.context = paramContext;
    init();
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
  
  public void init()
  {
    if ("2".equals(this.vo.getStyle_bgType())) {
      setBackgroundColor(0);
    }
    if ("0.0".equals(this.vo.getStyle_bgAlpha())) {
      setBackgroundColor(0);
    }
    for (;;)
    {
      setVerticalScrollBarEnabled(false);
      getSettings().setDefaultTextEncodingName("UTF-8");
      if (this.vo.getData_text() != null) {
        loadDataWithBaseURL(null, this.vo.getData_text(), "text/html", "utf-8", null);
      }
      return;
      FunctionPublic.setBackground(this, this.vo.getStyle_bgType(), this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor());
    }
  }
  
  public boolean isOnMethod()
  {
    return false;
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
  
  public void onResume() {}
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int j;
    if ((this.parentScroll != null) && (paramMotionEvent.getAction() == 2))
    {
      int i = getScrollY();
      j = (int)paramMotionEvent.getY();
      if (this.currentY >= j) {
        break label67;
      }
      if (i <= 0)
      {
        this.parentScroll.requestDisallowInterceptTouchEvent(false);
        return false;
      }
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
    }
    for (;;)
    {
      this.currentY = j;
      return super.onTouchEvent(paramMotionEvent);
      label67:
      if (this.currentY > j)
      {
        if (getContentHeight() * getScale() - (getHeight() + getScrollY()) == 0.0F)
        {
          this.parentScroll.requestDisallowInterceptTouchEvent(false);
          return false;
        }
        this.parentScroll.requestDisallowInterceptTouchEvent(true);
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfRichTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */