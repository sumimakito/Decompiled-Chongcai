package com.nostra13.universalimageloader.core;

import android.content.res.Resources;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;

public final class DisplayImageOptions
{
  private final boolean cacheInMemory;
  private final boolean cacheOnDisk;
  private final boolean considerExifParams;
  private final BitmapFactory.Options decodingOptions;
  private final int delayBeforeLoading;
  private final BitmapDisplayer displayer;
  private final Object extraForDownloader;
  private final Handler handler;
  private final Drawable imageForEmptyUri;
  private final Drawable imageOnFail;
  private final Drawable imageOnLoading;
  private final int imageResForEmptyUri;
  private final int imageResOnFail;
  private final int imageResOnLoading;
  private final ImageScaleType imageScaleType;
  private final boolean isSyncLoading;
  private final BitmapProcessor postProcessor;
  private final BitmapProcessor preProcessor;
  private final boolean resetViewBeforeLoading;
  
  private DisplayImageOptions(DisplayImageOptions.Builder paramBuilder)
  {
    this.imageResOnLoading = DisplayImageOptions.Builder.a(paramBuilder);
    this.imageResForEmptyUri = DisplayImageOptions.Builder.b(paramBuilder);
    this.imageResOnFail = DisplayImageOptions.Builder.c(paramBuilder);
    this.imageOnLoading = DisplayImageOptions.Builder.d(paramBuilder);
    this.imageForEmptyUri = DisplayImageOptions.Builder.e(paramBuilder);
    this.imageOnFail = DisplayImageOptions.Builder.f(paramBuilder);
    this.resetViewBeforeLoading = DisplayImageOptions.Builder.g(paramBuilder);
    this.cacheInMemory = DisplayImageOptions.Builder.h(paramBuilder);
    this.cacheOnDisk = DisplayImageOptions.Builder.i(paramBuilder);
    this.imageScaleType = DisplayImageOptions.Builder.j(paramBuilder);
    this.decodingOptions = DisplayImageOptions.Builder.k(paramBuilder);
    this.delayBeforeLoading = DisplayImageOptions.Builder.l(paramBuilder);
    this.considerExifParams = DisplayImageOptions.Builder.m(paramBuilder);
    this.extraForDownloader = DisplayImageOptions.Builder.n(paramBuilder);
    this.preProcessor = DisplayImageOptions.Builder.o(paramBuilder);
    this.postProcessor = DisplayImageOptions.Builder.p(paramBuilder);
    this.displayer = DisplayImageOptions.Builder.q(paramBuilder);
    this.handler = DisplayImageOptions.Builder.r(paramBuilder);
    this.isSyncLoading = DisplayImageOptions.Builder.s(paramBuilder);
  }
  
  public static DisplayImageOptions createSimple()
  {
    return new DisplayImageOptions.Builder().build();
  }
  
  public final boolean a()
  {
    return this.isSyncLoading;
  }
  
  public final BitmapFactory.Options getDecodingOptions()
  {
    return this.decodingOptions;
  }
  
  public final int getDelayBeforeLoading()
  {
    return this.delayBeforeLoading;
  }
  
  public final BitmapDisplayer getDisplayer()
  {
    return this.displayer;
  }
  
  public final Object getExtraForDownloader()
  {
    return this.extraForDownloader;
  }
  
  public final Handler getHandler()
  {
    return this.handler;
  }
  
  public final Drawable getImageForEmptyUri(Resources paramResources)
  {
    if (this.imageResForEmptyUri != 0) {
      return paramResources.getDrawable(this.imageResForEmptyUri);
    }
    return this.imageForEmptyUri;
  }
  
  public final Drawable getImageOnFail(Resources paramResources)
  {
    if (this.imageResOnFail != 0) {
      return paramResources.getDrawable(this.imageResOnFail);
    }
    return this.imageOnFail;
  }
  
  public final Drawable getImageOnLoading(Resources paramResources)
  {
    if (this.imageResOnLoading != 0) {
      return paramResources.getDrawable(this.imageResOnLoading);
    }
    return this.imageOnLoading;
  }
  
  public final ImageScaleType getImageScaleType()
  {
    return this.imageScaleType;
  }
  
  public final BitmapProcessor getPostProcessor()
  {
    return this.postProcessor;
  }
  
  public final BitmapProcessor getPreProcessor()
  {
    return this.preProcessor;
  }
  
  public final boolean isCacheInMemory()
  {
    return this.cacheInMemory;
  }
  
  public final boolean isCacheOnDisk()
  {
    return this.cacheOnDisk;
  }
  
  public final boolean isConsiderExifParams()
  {
    return this.considerExifParams;
  }
  
  public final boolean isResetViewBeforeLoading()
  {
    return this.resetViewBeforeLoading;
  }
  
  public final boolean shouldDelayBeforeLoading()
  {
    return this.delayBeforeLoading > 0;
  }
  
  public final boolean shouldPostProcess()
  {
    return this.postProcessor != null;
  }
  
  public final boolean shouldPreProcess()
  {
    return this.preProcessor != null;
  }
  
  public final boolean shouldShowImageForEmptyUri()
  {
    return (this.imageForEmptyUri != null) || (this.imageResForEmptyUri != 0);
  }
  
  public final boolean shouldShowImageOnFail()
  {
    return (this.imageOnFail != null) || (this.imageResOnFail != 0);
  }
  
  public final boolean shouldShowImageOnLoading()
  {
    return (this.imageOnLoading != null) || (this.imageResOnLoading != 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/DisplayImageOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */