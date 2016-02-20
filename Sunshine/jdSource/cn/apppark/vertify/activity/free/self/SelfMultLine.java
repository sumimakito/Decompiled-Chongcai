package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ScrollView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.mcd.widget.MyTextView;
import cn.apppark.vertify.activity.ISelfView;

public class SelfMultLine
  extends FrameLayout
  implements ISelfView
{
  private Context context;
  private int h;
  private MyTextView textView;
  private SelfDefineItemVo vo;
  private int w;
  
  public SelfMultLine(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo, ScrollView paramScrollView, int paramInt1, int paramInt2)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.context = paramContext;
    this.w = paramInt1;
    this.h = paramInt2;
    FunctionPublic.setBackground(this, paramSelfDefineItemVo.getStyle_bgType(), paramSelfDefineItemVo.getStyle_bgPic(), paramSelfDefineItemVo.getStyle_bgColor());
    if (getBackground() != null) {
      getBackground().setAlpha(FunctionPublic.str2int(paramSelfDefineItemVo.getStyle_bgAlpha()) * 255 / 100);
    }
    init();
  }
  
  public void init()
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.textView = new MyTextView(this.context, this.vo.getData_text(), this.w, this.h, this.vo.getStyle_textColor(), FunctionPublic.str2int(this.vo.getStyle_textAlign()), FunctionPublic.scaleNumber(this.vo.getStyle_textSize()));
    addView(this.textView, localLayoutParams);
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfMultLine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */