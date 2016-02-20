package cn.apppark.mcd.util;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import e;
import f;
import g;
import h;
import i;
import j;
import k;
import l;

public class ButtonColorFilter
{
  public static final float[] BT_NOT_SELECTED;
  public static final float[] BT_SELECTED = { 1.0F, 0.0F, 0.0F, 0.0F, 50.0F, 0.0F, 1.0F, 0.0F, 0.0F, 50.0F, 0.0F, 0.0F, 1.0F, 0.0F, 50.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F };
  public static int CLICKALPHA;
  public static int INITALPHA;
  private static final View.OnFocusChangeListener buttonColorOnFocusChangeListener = new h();
  private static final View.OnTouchListener buttonColorOnTouchListener;
  private static final View.OnFocusChangeListener buttonOnFocusChangeListener;
  private static final View.OnTouchListener buttonOnTouchListener;
  
  static
  {
    BT_NOT_SELECTED = new float[] { 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F };
    INITALPHA = 255;
    CLICKALPHA = 200;
    buttonOnFocusChangeListener = new e();
    buttonOnTouchListener = new f();
    buttonColorOnTouchListener = new g();
  }
  
  @SuppressLint({"NewApi"})
  public static final void setButtonColorFocusChanged(Button paramButton, int[] paramArrayOfInt)
  {
    paramButton.setOnTouchListener(new i(paramArrayOfInt));
    paramButton.setOnFocusChangeListener(new j(paramArrayOfInt));
  }
  
  public static final void setButtonFocusChanged(View paramView)
  {
    paramView.setOnTouchListener(buttonOnTouchListener);
    paramView.setOnFocusChangeListener(buttonOnFocusChangeListener);
  }
  
  public static final void setButtonFocusChanged(View paramView, int paramInt)
  {
    INITALPHA = paramInt;
    paramView.setOnTouchListener(buttonOnTouchListener);
    paramView.setOnFocusChangeListener(buttonOnFocusChangeListener);
  }
  
  public static final void setImageViewFocusChanged(View paramView)
  {
    paramView.setOnTouchListener(new k(paramView));
  }
  
  public static final void setImageViewSrcFocusChanged(View paramView)
  {
    paramView.setOnTouchListener(new l(paramView));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/ButtonColorFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */