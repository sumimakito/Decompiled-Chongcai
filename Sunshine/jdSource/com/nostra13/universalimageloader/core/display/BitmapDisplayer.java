package com.nostra13.universalimageloader.core.display;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;

public abstract interface BitmapDisplayer
{
  public abstract void display(Bitmap paramBitmap, ImageAware paramImageAware, LoadedFrom paramLoadedFrom);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/display/BitmapDisplayer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */