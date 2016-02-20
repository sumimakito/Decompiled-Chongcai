package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import com.sina.weibo.sdk.utils.ResourceManager;

public class LetterIndexBar
  extends View
{
  public static final int INDEX_COUNT_DEFAULT = 27;
  public static final String SEARCH_ICON_LETTER = "";
  private int count = 27;
  private int mIndex;
  private String[] mIndexLetter;
  private int mItemHeight;
  private int mItemPadding;
  private OnIndexChangeListener mListener;
  private boolean[] mNeedIndex;
  private int mOrgTextSzie;
  private Paint mPaint = new Paint();
  private RectF mRect;
  private Drawable mSeatchIcon;
  private boolean mTouching;
  
  public LetterIndexBar(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public LetterIndexBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public LetterIndexBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    this.mPaint.setAntiAlias(true);
    this.mPaint.setStyle(Paint.Style.FILL);
    this.mPaint.setColor(-10658467);
    this.mOrgTextSzie = ResourceManager.dp2px(getContext(), 13);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.mTouching)
    {
      i = this.mPaint.getColor();
      this.mPaint.setColor(-2005436536);
      paramCanvas.drawRoundRect(this.mRect, getMeasuredWidth() / 2, getMeasuredWidth() / 2, this.mPaint);
      this.mPaint.setColor(i);
    }
    if (this.mOrgTextSzie > this.mItemHeight) {}
    char c1;
    for (int i = this.mItemHeight;; i = this.mOrgTextSzie)
    {
      this.mPaint.setTextSize(i);
      if (this.mIndexLetter != null) {
        break label252;
      }
      c1 = 'A';
      j = 0;
      if (j < this.count) {
        break;
      }
      return;
    }
    int k = this.mItemHeight;
    int m = getPaddingTop();
    int n = this.mItemPadding;
    char c2;
    String str;
    if (this.mNeedIndex != null)
    {
      c2 = c1;
      if (this.mNeedIndex[j] == 0) {}
    }
    else
    {
      if (j != this.count - 1) {
        break label236;
      }
      str = "#";
    }
    for (;;)
    {
      int i1 = (int)this.mPaint.measureText(str);
      paramCanvas.drawText(str, (getMeasuredWidth() - i1) / 2, k * j + m + i + n, this.mPaint);
      c2 = c1;
      j += 1;
      c1 = c2;
      break;
      label236:
      c2 = (char)(c1 + '\001');
      str = String.valueOf(c1);
      c1 = c2;
    }
    label252:
    int j = 0;
    label255:
    if (j < this.count)
    {
      k = this.mItemHeight * j + getPaddingTop() + i + this.mItemPadding;
      if ((this.mNeedIndex == null) || (this.mNeedIndex[j] != 0))
      {
        str = this.mIndexLetter[j];
        if (!str.equals("")) {
          break label389;
        }
        m = (int)this.mPaint.measureText("M");
        n = (getMeasuredWidth() - m) / 2;
        this.mSeatchIcon.setBounds(n, k - n, m + n, m + k - n);
        this.mSeatchIcon.draw(paramCanvas);
      }
    }
    for (;;)
    {
      j += 1;
      break label255;
      break;
      label389:
      m = (int)this.mPaint.measureText(str);
      paramCanvas.drawText(str, (getMeasuredWidth() - m) / 2, k, this.mPaint);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = View.MeasureSpec.getSize(paramInt2);
    this.mItemHeight = ((paramInt1 - getPaddingTop() - getPaddingBottom()) / this.count);
    this.mItemPadding = ((int)((this.mItemHeight - this.mPaint.getTextSize()) / 2.0F));
    setMeasuredDimension(this.mOrgTextSzie + getPaddingLeft() + getPaddingRight(), paramInt2);
    this.mRect = new RectF(0.0F, getPaddingTop(), getMeasuredWidth(), paramInt1 - getPaddingTop() - getPaddingBottom());
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      invalidate();
      return true;
      this.mTouching = true;
      int i = ((int)paramMotionEvent.getY() - getPaddingTop()) / this.mItemHeight;
      if ((i != this.mIndex) && ((this.mNeedIndex == null) || (this.mNeedIndex[i] != 0)) && (i < this.count) && (i >= 0))
      {
        this.mIndex = i;
        if (this.mListener != null)
        {
          this.mListener.onIndexChange(this.mIndex);
          continue;
          this.mTouching = false;
        }
      }
    }
  }
  
  public void setIndexChangeListener(OnIndexChangeListener paramOnIndexChangeListener)
  {
    this.mListener = paramOnIndexChangeListener;
  }
  
  public void setIndexLetter(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return;
    }
    this.mIndexLetter = paramArrayOfString;
    this.count = this.mIndexLetter.length;
    this.mIndex = -1;
    invalidate();
  }
  
  public void setIndexMark(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null) {
      return;
    }
    this.mNeedIndex = paramArrayOfBoolean;
    invalidate();
  }
  
  public static abstract interface OnIndexChangeListener
  {
    public abstract void onIndexChange(int paramInt);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/register/mobile/LetterIndexBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */