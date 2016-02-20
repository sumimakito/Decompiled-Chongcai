package com.nostra13.universalimageloader.core;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.decode.ImageDecoder;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;
import com.nostra13.universalimageloader.utils.L;
import java.util.concurrent.Executor;
import xk;
import xl;

public final class ImageLoaderConfiguration
{
  public final Resources a;
  final int b;
  final int c;
  public final int d;
  public final int e;
  public final BitmapProcessor f;
  public final Executor g;
  public final Executor h;
  public final boolean i;
  public final boolean j;
  public final int k;
  public final int l;
  public final QueueProcessingType m;
  public final MemoryCache n;
  public final DiskCache o;
  public final ImageDownloader p;
  public final ImageDecoder q;
  final DisplayImageOptions r;
  public final ImageDownloader s;
  public final ImageDownloader t;
  
  private ImageLoaderConfiguration(ImageLoaderConfiguration.Builder paramBuilder)
  {
    this.a = ImageLoaderConfiguration.Builder.a(paramBuilder).getResources();
    this.b = ImageLoaderConfiguration.Builder.b(paramBuilder);
    this.c = ImageLoaderConfiguration.Builder.c(paramBuilder);
    this.d = ImageLoaderConfiguration.Builder.d(paramBuilder);
    this.e = ImageLoaderConfiguration.Builder.e(paramBuilder);
    this.f = ImageLoaderConfiguration.Builder.f(paramBuilder);
    this.g = ImageLoaderConfiguration.Builder.g(paramBuilder);
    this.h = ImageLoaderConfiguration.Builder.h(paramBuilder);
    this.k = ImageLoaderConfiguration.Builder.i(paramBuilder);
    this.l = ImageLoaderConfiguration.Builder.j(paramBuilder);
    this.m = ImageLoaderConfiguration.Builder.k(paramBuilder);
    this.o = ImageLoaderConfiguration.Builder.l(paramBuilder);
    this.n = ImageLoaderConfiguration.Builder.m(paramBuilder);
    this.r = ImageLoaderConfiguration.Builder.n(paramBuilder);
    this.p = ImageLoaderConfiguration.Builder.o(paramBuilder);
    this.q = ImageLoaderConfiguration.Builder.p(paramBuilder);
    this.i = ImageLoaderConfiguration.Builder.q(paramBuilder);
    this.j = ImageLoaderConfiguration.Builder.r(paramBuilder);
    this.s = new xk(this.p);
    this.t = new xl(this.p);
    L.writeDebugLogs(ImageLoaderConfiguration.Builder.s(paramBuilder));
  }
  
  public static ImageLoaderConfiguration createDefault(Context paramContext)
  {
    return new ImageLoaderConfiguration.Builder(paramContext).build();
  }
  
  final ImageSize a()
  {
    DisplayMetrics localDisplayMetrics = this.a.getDisplayMetrics();
    int i2 = this.b;
    int i1 = i2;
    if (i2 <= 0) {
      i1 = localDisplayMetrics.widthPixels;
    }
    int i3 = this.c;
    i2 = i3;
    if (i3 <= 0) {
      i2 = localDisplayMetrics.heightPixels;
    }
    return new ImageSize(i1, i2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/ImageLoaderConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */