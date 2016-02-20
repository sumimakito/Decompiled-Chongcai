package com.nostra13.universalimageloader.utils;

import android.opengl.GLES10;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;

public final class ImageSizeUtils
{
  private static final int DEFAULT_MAX_BITMAP_DIMENSION = 2048;
  private static ImageSize maxBitmapSize;
  
  static
  {
    int[] arrayOfInt = new int[1];
    GLES10.glGetIntegerv(3379, arrayOfInt, 0);
    int i = Math.max(arrayOfInt[0], 2048);
    maxBitmapSize = new ImageSize(i, i);
  }
  
  public static int computeImageSampleSize(ImageSize paramImageSize1, ImageSize paramImageSize2, ViewScaleType paramViewScaleType, boolean paramBoolean)
  {
    int k = 1;
    int m = paramImageSize1.getWidth();
    int n = paramImageSize1.getHeight();
    int i1 = paramImageSize2.getWidth();
    int i2 = paramImageSize2.getHeight();
    int i;
    switch (yc.a[paramViewScaleType.ordinal()])
    {
    default: 
      i = 1;
      if (i <= 0) {
        i = k;
      }
      break;
    }
    for (;;)
    {
      return considerMaxTextureSize(m, n, i, paramBoolean);
      int i3;
      int i4;
      int j;
      if (paramBoolean)
      {
        i3 = m / 2;
        i4 = n / 2;
        j = 1;
        for (;;)
        {
          if (i3 / j <= i1)
          {
            i = j;
            if (i4 / j <= i2) {
              break;
            }
          }
          j *= 2;
        }
      }
      i = Math.max(m / i1, n / i2);
      break;
      if (paramBoolean)
      {
        i3 = m / 2;
        i4 = n / 2;
        j = 1;
        for (;;)
        {
          i = j;
          if (i3 / j <= i1) {
            break;
          }
          i = j;
          if (i4 / j <= i2) {
            break;
          }
          j *= 2;
        }
      }
      i = Math.min(m / i1, n / i2);
      break;
    }
  }
  
  public static float computeImageScale(ImageSize paramImageSize1, ImageSize paramImageSize2, ViewScaleType paramViewScaleType, boolean paramBoolean)
  {
    int m = paramImageSize1.getWidth();
    int n = paramImageSize1.getHeight();
    int i = paramImageSize2.getWidth();
    int j = paramImageSize2.getHeight();
    float f1 = m / i;
    float f2 = n / j;
    int k;
    if (((paramViewScaleType == ViewScaleType.FIT_INSIDE) && (f1 >= f2)) || ((paramViewScaleType == ViewScaleType.CROP) && (f1 < f2)))
    {
      k = (int)(n / f1);
      j = i;
    }
    for (;;)
    {
      f2 = 1.0F;
      if ((paramBoolean) || (j >= m) || (k >= n))
      {
        f1 = f2;
        if (paramBoolean)
        {
          f1 = f2;
          if (j != m)
          {
            f1 = f2;
            if (k == n) {}
          }
        }
      }
      else
      {
        f1 = j / m;
      }
      return f1;
      k = (int)(m / f2);
      i = j;
      j = k;
      k = i;
    }
  }
  
  public static int computeMinImageSampleSize(ImageSize paramImageSize)
  {
    int i = paramImageSize.getWidth();
    int j = paramImageSize.getHeight();
    int k = maxBitmapSize.getWidth();
    int m = maxBitmapSize.getHeight();
    return Math.max((int)Math.ceil(i / k), (int)Math.ceil(j / m));
  }
  
  private static int considerMaxTextureSize(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = maxBitmapSize.getWidth();
    int j = maxBitmapSize.getHeight();
    while ((paramInt1 / paramInt3 > i) || (paramInt2 / paramInt3 > j)) {
      if (paramBoolean) {
        paramInt3 *= 2;
      } else {
        paramInt3 += 1;
      }
    }
    return paramInt3;
  }
  
  public static ImageSize defineTargetSizeForView(ImageAware paramImageAware, ImageSize paramImageSize)
  {
    int j = paramImageAware.getWidth();
    int i = j;
    if (j <= 0) {
      i = paramImageSize.getWidth();
    }
    int k = paramImageAware.getHeight();
    j = k;
    if (k <= 0) {
      j = paramImageSize.getHeight();
    }
    return new ImageSize(i, j);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/utils/ImageSizeUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */