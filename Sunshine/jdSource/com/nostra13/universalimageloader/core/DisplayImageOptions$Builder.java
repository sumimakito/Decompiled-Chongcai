package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;

public class DisplayImageOptions$Builder
{
  private boolean cacheInMemory = false;
  private boolean cacheOnDisk = false;
  private boolean considerExifParams = false;
  private BitmapFactory.Options decodingOptions = new BitmapFactory.Options();
  private int delayBeforeLoading = 0;
  private BitmapDisplayer displayer = DefaultConfigurationFactory.createBitmapDisplayer();
  private Object extraForDownloader = null;
  private Handler handler = null;
  private Drawable imageForEmptyUri = null;
  private Drawable imageOnFail = null;
  private Drawable imageOnLoading = null;
  private int imageResForEmptyUri = 0;
  private int imageResOnFail = 0;
  private int imageResOnLoading = 0;
  private ImageScaleType imageScaleType = ImageScaleType.IN_SAMPLE_POWER_OF_2;
  private boolean isSyncLoading = false;
  private BitmapProcessor postProcessor = null;
  private BitmapProcessor preProcessor = null;
  private boolean resetViewBeforeLoading = false;
  
  public DisplayImageOptions$Builder()
  {
    this.decodingOptions.inPurgeable = true;
    this.decodingOptions.inInputShareable = true;
  }
  
  final Builder a(boolean paramBoolean)
  {
    this.isSyncLoading = true;
    return this;
  }
  
  public Builder bitmapConfig(Bitmap.Config paramConfig)
  {
    if (paramConfig == null) {
      throw new IllegalArgumentException("bitmapConfig can't be null");
    }
    this.decodingOptions.inPreferredConfig = paramConfig;
    return this;
  }
  
  public DisplayImageOptions build()
  {
    return new DisplayImageOptions(this, null);
  }
  
  @Deprecated
  public Builder cacheInMemory()
  {
    this.cacheInMemory = true;
    return this;
  }
  
  public Builder cacheInMemory(boolean paramBoolean)
  {
    this.cacheInMemory = paramBoolean;
    return this;
  }
  
  @Deprecated
  public Builder cacheOnDisc()
  {
    return cacheOnDisk(true);
  }
  
  @Deprecated
  public Builder cacheOnDisc(boolean paramBoolean)
  {
    return cacheOnDisk(paramBoolean);
  }
  
  public Builder cacheOnDisk(boolean paramBoolean)
  {
    this.cacheOnDisk = paramBoolean;
    return this;
  }
  
  public Builder cloneFrom(DisplayImageOptions paramDisplayImageOptions)
  {
    this.imageResOnLoading = DisplayImageOptions.a(paramDisplayImageOptions);
    this.imageResForEmptyUri = DisplayImageOptions.b(paramDisplayImageOptions);
    this.imageResOnFail = DisplayImageOptions.c(paramDisplayImageOptions);
    this.imageOnLoading = DisplayImageOptions.d(paramDisplayImageOptions);
    this.imageForEmptyUri = DisplayImageOptions.e(paramDisplayImageOptions);
    this.imageOnFail = DisplayImageOptions.f(paramDisplayImageOptions);
    this.resetViewBeforeLoading = DisplayImageOptions.g(paramDisplayImageOptions);
    this.cacheInMemory = DisplayImageOptions.h(paramDisplayImageOptions);
    this.cacheOnDisk = DisplayImageOptions.i(paramDisplayImageOptions);
    this.imageScaleType = DisplayImageOptions.j(paramDisplayImageOptions);
    this.decodingOptions = DisplayImageOptions.k(paramDisplayImageOptions);
    this.delayBeforeLoading = DisplayImageOptions.l(paramDisplayImageOptions);
    this.considerExifParams = DisplayImageOptions.m(paramDisplayImageOptions);
    this.extraForDownloader = DisplayImageOptions.n(paramDisplayImageOptions);
    this.preProcessor = DisplayImageOptions.o(paramDisplayImageOptions);
    this.postProcessor = DisplayImageOptions.p(paramDisplayImageOptions);
    this.displayer = DisplayImageOptions.q(paramDisplayImageOptions);
    this.handler = DisplayImageOptions.r(paramDisplayImageOptions);
    this.isSyncLoading = DisplayImageOptions.s(paramDisplayImageOptions);
    return this;
  }
  
  public Builder considerExifParams(boolean paramBoolean)
  {
    this.considerExifParams = paramBoolean;
    return this;
  }
  
  public Builder decodingOptions(BitmapFactory.Options paramOptions)
  {
    if (paramOptions == null) {
      throw new IllegalArgumentException("decodingOptions can't be null");
    }
    this.decodingOptions = paramOptions;
    return this;
  }
  
  public Builder delayBeforeLoading(int paramInt)
  {
    this.delayBeforeLoading = paramInt;
    return this;
  }
  
  public Builder displayer(BitmapDisplayer paramBitmapDisplayer)
  {
    if (paramBitmapDisplayer == null) {
      throw new IllegalArgumentException("displayer can't be null");
    }
    this.displayer = paramBitmapDisplayer;
    return this;
  }
  
  public Builder extraForDownloader(Object paramObject)
  {
    this.extraForDownloader = paramObject;
    return this;
  }
  
  public Builder handler(Handler paramHandler)
  {
    this.handler = paramHandler;
    return this;
  }
  
  public Builder imageScaleType(ImageScaleType paramImageScaleType)
  {
    this.imageScaleType = paramImageScaleType;
    return this;
  }
  
  public Builder postProcessor(BitmapProcessor paramBitmapProcessor)
  {
    this.postProcessor = paramBitmapProcessor;
    return this;
  }
  
  public Builder preProcessor(BitmapProcessor paramBitmapProcessor)
  {
    this.preProcessor = paramBitmapProcessor;
    return this;
  }
  
  public Builder resetViewBeforeLoading()
  {
    this.resetViewBeforeLoading = true;
    return this;
  }
  
  public Builder resetViewBeforeLoading(boolean paramBoolean)
  {
    this.resetViewBeforeLoading = paramBoolean;
    return this;
  }
  
  public Builder showImageForEmptyUri(int paramInt)
  {
    this.imageResForEmptyUri = paramInt;
    return this;
  }
  
  public Builder showImageForEmptyUri(Drawable paramDrawable)
  {
    this.imageForEmptyUri = paramDrawable;
    return this;
  }
  
  public Builder showImageOnFail(int paramInt)
  {
    this.imageResOnFail = paramInt;
    return this;
  }
  
  public Builder showImageOnFail(Drawable paramDrawable)
  {
    this.imageOnFail = paramDrawable;
    return this;
  }
  
  public Builder showImageOnLoading(int paramInt)
  {
    this.imageResOnLoading = paramInt;
    return this;
  }
  
  public Builder showImageOnLoading(Drawable paramDrawable)
  {
    this.imageOnLoading = paramDrawable;
    return this;
  }
  
  @Deprecated
  public Builder showStubImage(int paramInt)
  {
    this.imageResOnLoading = paramInt;
    return this;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/DisplayImageOptions$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */