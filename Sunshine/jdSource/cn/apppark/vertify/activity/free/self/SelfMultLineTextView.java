package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.mcd.widget.InnerScrollView;
import cn.apppark.vertify.activity.ISelfView;

public class SelfMultLineTextView
  extends FrameLayout
  implements ISelfView
{
  private Context context;
  private ScrollView parentScroll;
  private InnerScrollView scroll;
  private TextView textView;
  private SelfDefineItemVo vo;
  
  public SelfMultLineTextView(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo, ScrollView paramScrollView)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.context = paramContext;
    this.parentScroll = paramScrollView;
    FunctionPublic.setBackground(this, paramSelfDefineItemVo.getStyle_bgType(), paramSelfDefineItemVo.getStyle_bgPic(), paramSelfDefineItemVo.getStyle_bgColor());
    if (getBackground() != null) {
      getBackground().setAlpha(FunctionPublic.str2int(paramSelfDefineItemVo.getStyle_bgAlpha()) * 255 / 100);
    }
    init();
  }
  
  public void init()
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.textView = new TextView(this.context);
    this.textView.setLineSpacing(1.0F, 1.4F);
    this.scroll = new InnerScrollView(this.context, this.parentScroll);
    this.scroll.setFadingEdgeLength(0);
    this.scroll.setVerticalScrollBarEnabled(false);
    this.scroll.setHorizontalScrollBarEnabled(false);
    this.textView.setBackgroundColor(0);
    FunctionPublic.setBackground(this, this.vo.getStyle_bgType(), this.vo.getStyle_bgPic(), this.vo.getStyle_bgColor(), this.vo.getStyle_bgAlpha());
    this.textView.setText(this.vo.getData_text());
    FunctionPublic.setTextStyle(this.textView, this.vo.getStyle_textSize(), this.vo.getStyle_textColor(), this.vo.getStyle_textBold());
    switch (FunctionPublic.str2int(this.vo.getStyle_textAlign()))
    {
    }
    for (;;)
    {
      this.scroll.addView(this.textView, localLayoutParams);
      addView(this.scroll);
      return;
      this.textView.setGravity(3);
      continue;
      this.textView.setGravity(17);
      continue;
      this.textView.setGravity(5);
    }
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfMultLineTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */