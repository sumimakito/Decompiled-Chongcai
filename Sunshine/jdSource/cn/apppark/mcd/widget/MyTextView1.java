package cn.apppark.mcd.widget;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.TextView;
import java.io.PrintStream;

public class MyTextView1
  extends TextView
{
  private float maxTextSize;
  private float minTextSize;
  private Paint testPaint;
  
  public MyTextView1(Context paramContext)
  {
    super(paramContext);
    initialise();
  }
  
  public MyTextView1(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initialise();
  }
  
  private void initialise()
  {
    this.testPaint = new Paint();
    this.testPaint.set(getPaint());
    this.maxTextSize = 200.0F;
    this.minTextSize = 1.0F;
  }
  
  private void refitText(String paramString, int paramInt1, int paramInt2)
  {
    float f1;
    Rect localRect;
    if (paramInt1 > 0)
    {
      int i = getPaddingLeft();
      int j = getPaddingRight();
      f1 = this.maxTextSize;
      this.testPaint.setTextSize(f1);
      localRect = new Rect();
      this.testPaint.getTextBounds(paramString, 0, paramString.length(), localRect);
      System.out.println("H:" + localRect.height());
      System.out.println("availableWidth:" + (paramInt1 - i - j));
      System.out.println("textHeight:" + paramInt2);
    }
    for (;;)
    {
      float f2 = f1;
      if (f1 > this.minTextSize)
      {
        f2 = f1;
        if (localRect.height() > paramInt2)
        {
          this.testPaint.getTextBounds(paramString, 0, paramString.length(), localRect);
          f1 -= 1.0F;
          if (f1 > this.minTextSize) {
            break label225;
          }
          f2 = this.minTextSize;
        }
      }
      System.out.println("___________________:" + f2);
      setTextSize(f2);
      return;
      label225:
      this.testPaint.setTextSize(f1);
    }
  }
  
  public float getMaxTextSize()
  {
    return this.maxTextSize;
  }
  
  public float getMinTextSize()
  {
    return this.minTextSize;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    System.out.println("onsizeChanged: w-" + paramInt1 + " h-" + paramInt2 + " oldw-" + paramInt3 + " oldh-" + paramInt4);
    if (paramInt1 != paramInt3) {
      refitText(getText().toString(), paramInt1, paramInt2);
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    System.out.println("onTextChanged: start-" + paramInt1 + " before-" + paramInt2 + " after-" + paramInt3);
    refitText(paramCharSequence.toString(), getWidth(), getHeight());
  }
  
  public void setMaxTextSize(int paramInt)
  {
    this.maxTextSize = paramInt;
  }
  
  public void setMinTextSize(int paramInt)
  {
    this.minTextSize = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/MyTextView1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */