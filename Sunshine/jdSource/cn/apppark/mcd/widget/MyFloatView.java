package cn.apppark.mcd.widget;

import ae;
import af;
import android.content.Context;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;

public class MyFloatView
  extends RelativeLayout
{
  public RelativeLayout.LayoutParams a;
  public RelativeLayout.LayoutParams b;
  public boolean c = false;
  private Context context;
  int d = 0;
  private float mTouchStartX;
  private float mTouchStartY;
  private TextView tv;
  private TextView tv_bg;
  private WindowManager wm;
  private WindowManager.LayoutParams wmParams;
  private float x;
  private float y;
  
  public MyFloatView(Context paramContext, WindowManager.LayoutParams paramLayoutParams, WindowManager paramWindowManager)
  {
    super(paramContext);
    this.tv = new TextView(paramContext);
    this.tv_bg = new TextView(paramContext);
    this.context = paramContext;
    this.wmParams = paramLayoutParams;
    this.wm = paramWindowManager;
    this.b = new RelativeLayout.LayoutParams(PublicUtil.dip2px(38.0F), PublicUtil.dip2px(87.0F));
    this.a = new RelativeLayout.LayoutParams(PublicUtil.dip2px(28.0F), PublicUtil.dip2px(77.0F));
    this.a.setMargins(0, 10, 0, 0);
    this.tv_bg.setBackgroundResource(2130837822);
    addView(this.tv_bg, this.a);
    paramContext = new RelativeLayout.LayoutParams(PublicUtil.dip2px(25.0F), PublicUtil.dip2px(25.0F));
    paramContext.setMargins(10, 0, 0, 0);
    FunctionPublic.setTextSize(this.tv, "10");
    this.tv.setTextColor(-1);
    this.tv.setBackgroundResource(2130837731);
    this.tv.setGravity(17);
    this.tv.setVisibility(8);
    addView(this.tv, paramContext);
    this.tv_bg.setOnLongClickListener(new ae(this));
    this.tv_bg.setOnTouchListener(new af(this));
  }
  
  private void updateViewPosition()
  {
    this.wmParams.x = ((int)(this.x - this.mTouchStartX));
    this.wmParams.y = ((int)(this.y - this.mTouchStartY));
    this.wm.updateViewLayout(this, this.wmParams);
  }
  
  public String getNum()
  {
    return this.tv.getText().toString();
  }
  
  public void setNum(String paramString)
  {
    this.tv.setText(paramString);
  }
  
  public void showHiddenNum(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.tv.setVisibility(0);
      return;
    }
    this.tv.setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/MyFloatView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */