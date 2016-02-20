package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;
import y;
import z;

public class MyBtn
  extends FrameLayout
{
  public TextView a;
  TextView b;
  
  public MyBtn(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public MyBtn(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }
  
  public MyBtn(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }
  
  private void init(Context paramContext)
  {
    setBackgroundColor(-16777216);
    setClickable(true);
    LayoutInflater.from(paramContext).inflate(2130903131, this, true);
    this.a = ((TextView)findViewById(2131362441));
    this.a.setVisibility(8);
    this.a.setClickable(false);
    this.b = ((TextView)findViewById(2131362442));
    this.b.setClickable(false);
    setOnTouchListener(new y(this));
    setOnFocusChangeListener(new z(this));
  }
  
  public void setBgColor(int paramInt)
  {
    setBackgroundColor(paramInt);
  }
  
  public void setText(String paramString)
  {
    this.b.setText(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/MyBtn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */