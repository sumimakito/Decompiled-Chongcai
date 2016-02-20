package cn.apppark.mcd.util;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.util.more.StringUtil;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.io.File;
import java.io.PrintStream;

public class FunctionPublic
{
  public static int caculateHeightWithWidth(String paramString, int paramInt)
  {
    try
    {
      paramString = getCachedBitmap(paramString);
      if (paramString == null) {
        return 0;
      }
      int i = (int)(paramString.getWidth() * YYGYContants.scaleUnite);
      int j = (int)(paramString.getHeight() * YYGYContants.scaleUnite);
      paramString.recycle();
      return (int)(paramInt * (j / i));
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return paramInt;
  }
  
  public static int convertColor(String paramString)
  {
    try
    {
      if (paramString.startsWith("0x")) {
        return Color.parseColor("#" + paramString.substring(2, paramString.length()));
      }
      if (paramString.startsWith("#")) {
        return Color.parseColor(paramString);
      }
      int i = Color.parseColor("#" + paramString);
      return i;
    }
    catch (Exception localException)
    {
      System.out.println("String convert to color fail, String:" + paramString);
    }
    return 0;
  }
  
  public static String generateFilePath(String paramString)
  {
    return HQCHApplication.getInstance().getResourceDir() + File.separator + paramString;
  }
  
  public static int[] getBmpWidhtHeight(String paramString)
  {
    int[] arrayOfInt = new int[2];
    try
    {
      paramString = getCachedBitmap(paramString);
      if (paramString == null)
      {
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        return arrayOfInt;
      }
      int i = (int)(paramString.getWidth() * YYGYContants.scaleUnite);
      int j = (int)(paramString.getHeight() * YYGYContants.scaleUnite);
      arrayOfInt[0] = i;
      arrayOfInt[1] = j;
      paramString.recycle();
      return arrayOfInt;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return arrayOfInt;
  }
  
  private static Bitmap getCachedBitmap(String paramString)
  {
    return HQCHApplication.cacheUtil.getCachedBitmap(paramString);
  }
  
  private static Drawable getCachedDrawable(int paramInt)
  {
    return HQCHApplication.cacheUtil.getCachedDrawable(paramInt);
  }
  
  private static Drawable getCachedDrawable(String paramString)
  {
    return HQCHApplication.cacheUtil.getCachedDrawable(paramString);
  }
  
  private static Drawable getCachedDrawable(String paramString, int paramInt)
  {
    return HQCHApplication.cacheUtil.getCachedDrawable(paramString, 0);
  }
  
  public static Drawable getCachedDrawableNine(String paramString)
  {
    return HQCHApplication.cacheUtil.getCachedDrawableNine(paramString);
  }
  
  public static int getConvertValue(int paramInt)
  {
    return (int)(paramInt * YYGYContants.scaleUnite);
  }
  
  public static int getConvertValue(String paramString)
  {
    return (int)(str2int(paramString) * YYGYContants.scaleUnite);
  }
  
  private static String getSDFileUri(String paramString)
  {
    return "file://" + HQCHApplication.getInstance().generatePath(paramString);
  }
  
  public static SpannableStringBuilder getSpannerStyle(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString != null)
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(paramInt1), 0, paramString.length(), 34);
      localSpannableStringBuilder.setSpan(new AbsoluteSizeSpan(paramInt2, true), 0, paramString.length(), 33);
      return localSpannableStringBuilder;
    }
    paramString = new SpannableStringBuilder("  ");
    paramString.setSpan(new ForegroundColorSpan(paramInt1), 0, "  ".length(), 34);
    paramString.setSpan(new AbsoluteSizeSpan(paramInt2, true), 0, "  ".length(), 33);
    return paramString;
  }
  
  public static int scaleNumber(int paramInt)
  {
    return (int)(paramInt * YYGYContants.scaleUnite + 0.5F);
  }
  
  public static int scaleNumber(String paramString)
  {
    return (int)(str2int(paramString) * YYGYContants.scaleUnite + 0.5F);
  }
  
  public static void setBackground(View paramView, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      switch (str2int(paramString1))
      {
      case 0: 
        paramView.setBackgroundColor(0);
        return;
      }
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
      System.out.println("bg set error:" + paramString2);
      return;
    }
    paramView.setBackgroundColor(convertColor(paramString3));
    return;
    paramString1 = getCachedDrawable(paramString2);
    if (paramString1 != null)
    {
      paramView.setBackgroundDrawable(paramString1);
      return;
    }
  }
  
  public static void setBackground(View paramView, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    for (;;)
    {
      try
      {
        switch (str2int(paramString1))
        {
        case 0: 
          paramView.getBackground().setAlpha(str2int(paramString4) * 255 / 100);
          return;
        }
      }
      catch (Exception paramView)
      {
        paramView.printStackTrace();
        System.out.println("bg set error:" + paramString2);
        return;
      }
      paramView.setBackgroundColor(0);
      continue;
      paramView.setBackgroundColor(convertColor(paramString3));
      continue;
      paramString1 = getCachedDrawable(paramString2);
      if (paramString1 != null) {
        paramView.setBackgroundDrawable(paramString1);
      }
    }
  }
  
  public static void setBackground(String paramString, View paramView)
  {
    try
    {
      Drawable localDrawable = getCachedDrawable(paramString);
      if (localDrawable == null)
      {
        paramView.setBackgroundColor(0);
        return;
      }
      paramView.setBackgroundDrawable(localDrawable);
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
      System.out.println("bg set error:" + paramString);
    }
  }
  
  public static void setBackgroundColor(String paramString, View paramView)
  {
    if (StringUtil.isNotNull(paramString)) {
      paramView.setBackgroundColor(convertColor(paramString));
    }
  }
  
  public static void setBackgroundNine(String paramString, View paramView)
  {
    try
    {
      paramView.setBackgroundDrawable(getCachedDrawableNine(paramString));
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
      System.out.println("bg set error:" + paramString);
    }
  }
  
  public static void setBackgroundPicFromSD(String paramString, View paramView)
  {
    try
    {
      Drawable localDrawable = getCachedDrawable(paramString, 0);
      if (localDrawable != null) {
        paramView.setBackgroundDrawable(localDrawable);
      }
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
      System.out.println("bg set error:" + paramString);
    }
  }
  
  public static void setBackgroundWithSel(View paramView, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      switch (str2int(paramString1))
      {
      case 0: 
        paramView.setBackgroundColor(0);
        return;
      }
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
      System.out.println("bg set error:" + paramString2);
      return;
    }
    paramView.setBackgroundColor(convertColor(paramString3));
    return;
    paramString1 = getCachedDrawable(paramString2);
    paramString3 = getCachedDrawable(2130837939);
    StateListDrawable localStateListDrawable = new StateListDrawable();
    localStateListDrawable.addState(new int[] { 16842919 }, paramString3);
    localStateListDrawable.addState(new int[0], paramString1);
    paramView.setBackgroundDrawable(localStateListDrawable);
    return;
  }
  
  public static void setBtnStyle(Button paramButton, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramButton.setTextSize(0, scaleNumber(paramString1));
      paramButton.setTextColor(convertColor(paramString2));
      if ("1".equals(paramString3))
      {
        paramButton.getPaint().setFakeBoldText(true);
        return;
      }
      paramButton.setTypeface(null, 0);
      return;
    }
    catch (Exception paramButton)
    {
      paramButton.printStackTrace();
    }
  }
  
  public static void setDevider(ListView paramListView, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    for (;;)
    {
      try
      {
        switch (str2int(paramString1))
        {
        case 0: 
          paramListView.setDividerHeight(getConvertValue(paramString4));
          return;
        }
      }
      catch (Exception paramListView)
      {
        paramListView.printStackTrace();
        System.out.println("divider set error:" + paramString2);
        return;
      }
      paramListView.setDivider(new ColorDrawable(0));
      continue;
      paramListView.setDivider(new ColorDrawable(convertColor(paramString3)));
      continue;
      paramString1 = getCachedDrawable(paramString2);
      if (paramString1 != null) {
        paramListView.setDivider(paramString1);
      }
    }
  }
  
  public static void setImageDrawable(String paramString, ImageView paramImageView)
  {
    try
    {
      Drawable localDrawable = getCachedDrawable(paramString);
      if (localDrawable == null) {
        return;
      }
      paramImageView.setImageDrawable(localDrawable);
      return;
    }
    catch (Exception paramImageView)
    {
      System.out.println("bg set error:" + paramString);
    }
  }
  
  public static void setImgBg(String paramString1, ImageView paramImageView, String paramString2, String paramString3, ImageView.ScaleType paramScaleType)
  {
    paramImageView.setScaleType(paramScaleType);
    ImageLoader.getInstance().displayImage(getSDFileUri(paramString1), paramImageView);
  }
  
  public static void setSelBack(View paramView, int paramInt)
  {
    Drawable localDrawable1 = getCachedDrawable(paramInt);
    Drawable localDrawable2 = getCachedDrawable(2130837939);
    StateListDrawable localStateListDrawable = new StateListDrawable();
    localStateListDrawable.addState(new int[] { 16842919 }, localDrawable2);
    localStateListDrawable.addState(new int[0], localDrawable1);
    paramView.setBackgroundDrawable(localStateListDrawable);
  }
  
  public static void setTextColor(TextView paramTextView, String paramString)
  {
    try
    {
      paramTextView.setTextColor(convertColor(paramString));
      return;
    }
    catch (Exception paramTextView)
    {
      paramTextView.printStackTrace();
    }
  }
  
  public static void setTextSize(TextView paramTextView, String paramString)
  {
    paramTextView.setTextSize(0, scaleNumber(paramString));
  }
  
  public static void setTextStyle(Button paramButton, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramButton.setTextSize(0, scaleNumber(paramString1));
      paramButton.setTextColor(convertColor(paramString2));
      if ("1".equals(paramString3))
      {
        paramButton.getPaint().setFakeBoldText(true);
        return;
      }
      paramButton.setTypeface(null, 0);
      return;
    }
    catch (Exception paramButton)
    {
      paramButton.printStackTrace();
    }
  }
  
  public static void setTextStyle(TextView paramTextView, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramTextView.setTextSize(0, scaleNumber(paramString1));
      paramTextView.setTextColor(convertColor(paramString2));
      if ("1".equals(paramString3))
      {
        paramTextView.getPaint().setFakeBoldText(true);
        return;
      }
      paramTextView.setTypeface(null, 0);
      return;
    }
    catch (Exception paramTextView)
    {
      paramTextView.printStackTrace();
    }
  }
  
  public static void setTextStyle(TextView paramTextView, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramTextView.setText(paramString1);
      paramTextView.setTextSize(0, scaleNumber(paramString2));
      paramTextView.setTextColor(convertColor(paramString3));
      if ("1".equals(paramString4))
      {
        paramTextView.getPaint().setFakeBoldText(true);
        return;
      }
      paramTextView.setTypeface(null, 0);
      return;
    }
    catch (Exception paramTextView)
    {
      paramTextView.printStackTrace();
    }
  }
  
  public static RelativeLayout.LayoutParams setViewBackByHieght(View paramView, String paramString1, String paramString2)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    for (;;)
    {
      try
      {
        int k = (int)(str2int(paramString2) * YYGYContants.scaleUnite);
        localObject1 = localObject2;
        paramString2 = getCachedBitmap(paramString1);
        if (paramString2 == null)
        {
          localObject1 = localObject2;
          return new RelativeLayout.LayoutParams(-2, -2);
        }
        localObject1 = localObject2;
        i = (int)(paramString2.getWidth() * YYGYContants.scaleUnite);
        localObject1 = localObject2;
        j = (int)(paramString2.getHeight() * YYGYContants.scaleUnite);
        localObject1 = localObject2;
        paramString2.recycle();
        localObject1 = localObject2;
        if (j < k - (int)(YYGYContants.scaleUnite * 10.0F)) {
          continue;
        }
        localObject1 = localObject2;
        k -= (int)(YYGYContants.scaleUnite * 10.0F);
        localObject1 = localObject2;
        paramString2 = new RelativeLayout.LayoutParams((int)(k * (i / j)), k);
        localObject1 = paramString2;
        paramString1 = getCachedDrawable(paramString1);
        if (paramString1 != null)
        {
          localObject1 = paramString2;
          paramView.setBackgroundDrawable(paramString1);
        }
      }
      catch (Exception paramView)
      {
        int i;
        int j;
        paramView.printStackTrace();
        paramString2 = (String)localObject1;
        continue;
      }
      if (paramString2 != null) {
        break;
      }
      return new RelativeLayout.LayoutParams(-2, -2);
      localObject1 = localObject2;
      paramString2 = new RelativeLayout.LayoutParams(i, j);
    }
    return paramString2;
  }
  
  public static int str2int(String paramString)
  {
    if (("null".equals(paramString)) || ("".equals(paramString))) {
      return 0;
    }
    String str1 = paramString;
    String str2 = paramString;
    try
    {
      if (paramString.contains("."))
      {
        str2 = paramString;
        str1 = paramString.substring(0, paramString.indexOf("."));
      }
      str2 = str1;
      int i = Integer.parseInt(str1);
      return i;
    }
    catch (Exception paramString)
    {
      System.out.println("String convert to int fail, String:" + str2);
    }
    return 0;
  }
  
  public static int str2intText(String paramString)
  {
    if (StringUtil.isNull(paramString)) {
      return 0;
    }
    String str1 = paramString;
    String str2 = paramString;
    try
    {
      if (paramString.contains("."))
      {
        str2 = paramString;
        str1 = paramString.substring(0, paramString.indexOf("."));
      }
      str2 = str1;
      int i = Integer.parseInt(str1);
      return i;
    }
    catch (Exception paramString)
    {
      System.out.println("String convert to int fail, String:" + str2);
    }
    return 0;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/FunctionPublic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */