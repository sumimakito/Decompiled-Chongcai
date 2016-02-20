package cn.apppark.mcd.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class MyResizeLinearLayout
  extends LinearLayout
{
  private MyResizeLinearLayout.OnResizeListener mListener;
  
  public MyResizeLinearLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public MyResizeLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mListener != null) {
      this.mListener.OnResize(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public void setOnResizeListener(MyResizeLinearLayout.OnResizeListener paramOnResizeListener)
  {
    this.mListener = paramOnResizeListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/MyResizeLinearLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */