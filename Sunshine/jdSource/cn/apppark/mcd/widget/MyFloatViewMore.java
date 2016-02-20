package cn.apppark.mcd.widget;

import ag;
import ah;
import android.content.Context;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;

public class MyFloatViewMore
  extends RelativeLayout
{
  public RelativeLayout.LayoutParams a;
  public RelativeLayout.LayoutParams b;
  public boolean c = false;
  private Context context;
  int d = 0;
  private float mTouchStartX;
  private float mTouchStartY;
  private TextView tv_bg;
  private WindowManager wm;
  private WindowManager.LayoutParams wmParams;
  private float x;
  private float y;
  
  public MyFloatViewMore(Context paramContext, WindowManager.LayoutParams paramLayoutParams, WindowManager paramWindowManager)
  {
    super(paramContext);
    this.tv_bg = new TextView(paramContext);
    this.context = paramContext;
    this.wmParams = paramLayoutParams;
    this.wm = paramWindowManager;
    this.b = new RelativeLayout.LayoutParams(PublicUtil.dip2px(85.0F), PublicUtil.dip2px(85.0F));
    this.a = new RelativeLayout.LayoutParams(PublicUtil.dip2px(40.0F), PublicUtil.dip2px(40.0F));
    this.tv_bg.setBackgroundResource(2130837833);
    addView(this.tv_bg, this.a);
    this.tv_bg.setOnLongClickListener(new ag(this));
    this.tv_bg.setOnTouchListener(new ah(this));
  }
  
  private void updateViewPosition()
  {
    this.wmParams.x = ((int)(this.x - this.mTouchStartX));
    this.wmParams.y = ((int)(this.y - this.mTouchStartY));
    this.wm.updateViewLayout(this, this.wmParams);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/MyFloatViewMore.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */