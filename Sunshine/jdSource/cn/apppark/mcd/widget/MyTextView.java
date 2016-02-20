package cn.apppark.mcd.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;
import cn.apppark.mcd.util.FunctionPublic;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MyTextView
  extends View
{
  private float caculateTextSize;
  private String colorStr;
  private int gravity;
  private float lead = 10.0F;
  private ArrayList<String> lines;
  private Paint mPaint = new Paint();
  private int minSize = 1;
  private int size;
  private String text;
  private float viewHeight;
  private float viewWidth;
  
  public MyTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public MyTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public MyTextView(Context paramContext, String paramString1, float paramFloat1, float paramFloat2, String paramString2, int paramInt1, int paramInt2)
  {
    this(paramContext, null);
    this.text = paramString1;
    this.viewHeight = paramFloat2;
    this.viewWidth = paramFloat1;
    this.colorStr = paramString2;
    this.gravity = paramInt1;
    this.size = paramInt2;
    init();
  }
  
  private ArrayList<String> autoSplit(String paramString, Paint paramPaint, float paramFloat)
  {
    int m = paramString.length();
    float f = paramPaint.measureText(paramString);
    ArrayList localArrayList = new ArrayList();
    if (f <= paramFloat)
    {
      localArrayList.add(paramString);
      return localArrayList;
    }
    int j = 0;
    int i = 1;
    String str;
    int k;
    if (j < m)
    {
      if (paramPaint.measureText(paramString, j, i) <= paramFloat) {
        break label224;
      }
      str = (String)paramString.subSequence(j, i);
      if (!str.contains("\n")) {
        break label192;
      }
      k = j;
      label93:
      if (k >= i) {
        break label177;
      }
      if (this.text.charAt(k) != '\n') {
        break label168;
      }
      i = k + 1;
      localArrayList.add((String)paramString.subSequence(j, i));
      j = i;
    }
    for (;;)
    {
      if (j == m)
      {
        localArrayList.add((String)paramString.subSequence(i, j));
        return localArrayList;
        label168:
        k += 1;
        break label93;
        label177:
        k = j;
        j = i;
        i = k;
        continue;
        label192:
        localArrayList.add(str);
        j = i;
        continue;
      }
      k = i;
      i = j + 1;
      j = k;
      break;
      label224:
      k = j;
      j = i;
      i = k;
    }
  }
  
  private float caculateSize(int paramInt)
  {
    double d = this.viewHeight * this.viewWidth / paramInt;
    return (float)root(1.0D, this.lead, -d);
  }
  
  public static int getLenOfString(String paramString)
  {
    int i = 0;
    paramString = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(paramString);
    while (paramString.find()) {
      i += 1;
    }
    return i;
  }
  
  private void init()
  {
    this.mPaint.breakText(this.text, true, this.viewWidth, null);
    this.mPaint.setAntiAlias(true);
    this.mPaint.setColor(FunctionPublic.convertColor(this.colorStr));
    this.mPaint.setStyle(Paint.Style.STROKE);
    this.mPaint.setTextSize(this.size);
    this.lines = autoSplit(this.text, this.mPaint, this.viewWidth - this.size);
    if (this.lines.size() * (this.size + this.lead) < this.viewHeight) {
      this.caculateTextSize = this.size;
    }
    for (;;)
    {
      return;
      int i = this.text.length();
      int j = getLenOfString(this.text);
      this.caculateTextSize = caculateSize((i - j) / 2 + j);
      this.mPaint.setTextSize(this.caculateTextSize);
      this.lines = autoSplit(this.text, this.mPaint, this.viewWidth - this.caculateTextSize);
      for (float f = this.lines.size() * (this.caculateTextSize + this.lead); (f > this.viewHeight) && (this.caculateTextSize > this.minSize); f = this.lines.size() * (this.caculateTextSize + this.lead))
      {
        this.caculateTextSize -= 1.0F;
        this.mPaint.setTextSize(this.caculateTextSize);
        this.lines = autoSplit(this.text, this.mPaint, this.viewWidth - this.caculateTextSize);
      }
    }
  }
  
  private double root(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    if (paramDouble1 == 0.0D) {
      return 0.0D;
    }
    paramDouble3 = paramDouble2 * paramDouble2 - 4.0D * paramDouble1 * paramDouble3;
    if (paramDouble3 < 0.0D) {
      return 0.0D;
    }
    return new double[] { (-paramDouble2 + Math.sqrt(paramDouble3)) / (2.0D * paramDouble1), (-paramDouble2 - Math.sqrt(paramDouble3)) / (2.0D * paramDouble1) }[0];
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    float f1 = 0.0F;
    super.onDraw(paramCanvas);
    float f3 = this.caculateTextSize;
    Iterator localIterator;
    switch (this.gravity)
    {
    default: 
      localIterator = this.lines.iterator();
    }
    for (float f2 = f3;; f2 = this.lead + f3 + f2)
    {
      String str;
      if (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        if (str != null) {}
      }
      else
      {
        return;
        this.mPaint.setTextAlign(Paint.Align.LEFT);
        f1 = 0.0F;
        break;
        f1 = this.viewWidth / 2.0F;
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        break;
        f1 = this.viewWidth;
        this.mPaint.setTextAlign(Paint.Align.RIGHT);
        break;
      }
      paramCanvas.drawText(str.replaceAll("\n", ""), f1, f2, this.mPaint);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/MyTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */