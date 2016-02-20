package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.imageaware.NonViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import com.nostra13.universalimageloader.utils.L;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import xi;
import xm;
import xn;
import xo;
import xp;
import xu;

public class ImageLoader
{
  private static final String ERROR_INIT_CONFIG_WITH_NULL = "ImageLoader configuration can not be initialized with null";
  private static final String ERROR_NOT_INIT = "ImageLoader must be init with configuration before using";
  private static final String ERROR_WRONG_ARGUMENTS = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)";
  public static final String TAG = ImageLoader.class.getSimpleName();
  private static final String WARNING_RE_INIT_CONFIG = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.";
  private static volatile ImageLoader instance;
  private ImageLoaderConfiguration configuration;
  private ImageLoadingListener defaultListener = new SimpleImageLoadingListener();
  private xm engine;
  
  private void checkConfiguration()
  {
    if (this.configuration == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
  }
  
  private static Handler defineHandler(DisplayImageOptions paramDisplayImageOptions)
  {
    Handler localHandler = paramDisplayImageOptions.getHandler();
    if (paramDisplayImageOptions.a()) {
      paramDisplayImageOptions = null;
    }
    do
    {
      do
      {
        return paramDisplayImageOptions;
        paramDisplayImageOptions = localHandler;
      } while (localHandler != null);
      paramDisplayImageOptions = localHandler;
    } while (Looper.myLooper() != Looper.getMainLooper());
    return new Handler();
  }
  
  public static ImageLoader getInstance()
  {
    if (instance == null) {}
    try
    {
      if (instance == null) {
        instance = new ImageLoader();
      }
      return instance;
    }
    finally {}
  }
  
  public void cancelDisplayTask(ImageView paramImageView)
  {
    xm localxm = this.engine;
    paramImageView = new ImageViewAware(paramImageView);
    localxm.e.remove(Integer.valueOf(paramImageView.getId()));
  }
  
  public void cancelDisplayTask(ImageAware paramImageAware)
  {
    this.engine.e.remove(Integer.valueOf(paramImageAware.getId()));
  }
  
  @Deprecated
  public void clearDiscCache()
  {
    clearDiskCache();
  }
  
  public void clearDiskCache()
  {
    if (this.configuration == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
    this.configuration.o.clear();
  }
  
  public void clearMemoryCache()
  {
    if (this.configuration == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
    this.configuration.n.clear();
  }
  
  public void denyNetworkDownloads(boolean paramBoolean)
  {
    this.engine.h.set(paramBoolean);
  }
  
  public void destroy()
  {
    if (this.configuration != null) {
      L.d("Destroy ImageLoader", new Object[0]);
    }
    stop();
    this.configuration.o.close();
    this.engine = null;
    this.configuration = null;
  }
  
  public void displayImage(String paramString, ImageView paramImageView)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), null, null, null);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, DisplayImageOptions paramDisplayImageOptions)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), paramDisplayImageOptions, null, null);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener)
  {
    displayImage(paramString, paramImageView, paramDisplayImageOptions, paramImageLoadingListener, null);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener, ImageLoadingProgressListener paramImageLoadingProgressListener)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), paramDisplayImageOptions, paramImageLoadingListener, paramImageLoadingProgressListener);
  }
  
  public void displayImage(String paramString, ImageView paramImageView, ImageLoadingListener paramImageLoadingListener)
  {
    displayImage(paramString, new ImageViewAware(paramImageView), null, paramImageLoadingListener, null);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware)
  {
    displayImage(paramString, paramImageAware, null, null, null);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, DisplayImageOptions paramDisplayImageOptions)
  {
    displayImage(paramString, paramImageAware, paramDisplayImageOptions, null, null);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener)
  {
    displayImage(paramString, paramImageAware, paramDisplayImageOptions, paramImageLoadingListener, null);
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener, ImageLoadingProgressListener paramImageLoadingProgressListener)
  {
    if (this.configuration == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
    if (paramImageAware == null) {
      throw new IllegalArgumentException("Wrong arguments were passed to displayImage() method (ImageView reference must not be null)");
    }
    if (paramImageLoadingListener == null) {
      paramImageLoadingListener = this.defaultListener;
    }
    for (;;)
    {
      if (paramDisplayImageOptions == null) {
        paramDisplayImageOptions = this.configuration.r;
      }
      for (;;)
      {
        if (TextUtils.isEmpty(paramString))
        {
          this.engine.e.remove(Integer.valueOf(paramImageAware.getId()));
          paramImageLoadingListener.onLoadingStarted(paramString, paramImageAware.getWrappedView());
          if (paramDisplayImageOptions.shouldShowImageForEmptyUri()) {
            paramImageAware.setImageDrawable(paramDisplayImageOptions.getImageForEmptyUri(this.configuration.a));
          }
          for (;;)
          {
            paramImageLoadingListener.onLoadingComplete(paramString, paramImageAware.getWrappedView(), null);
            return;
            paramImageAware.setImageDrawable(null);
          }
        }
        ImageSize localImageSize = ImageSizeUtils.defineTargetSizeForView(paramImageAware, this.configuration.a());
        String str = MemoryCacheUtils.generateKey(paramString, localImageSize);
        this.engine.e.put(Integer.valueOf(paramImageAware.getId()), str);
        paramImageLoadingListener.onLoadingStarted(paramString, paramImageAware.getWrappedView());
        Bitmap localBitmap = this.configuration.n.get(str);
        if ((localBitmap != null) && (!localBitmap.isRecycled()))
        {
          L.d("Load image from memory cache [%s]", new Object[] { str });
          if (paramDisplayImageOptions.shouldPostProcess())
          {
            paramString = new xo(paramString, paramImageAware, localImageSize, str, paramDisplayImageOptions, paramImageLoadingListener, paramImageLoadingProgressListener, this.engine.a(paramString));
            paramString = new xu(this.engine, localBitmap, paramString, defineHandler(paramDisplayImageOptions));
            if (paramDisplayImageOptions.a())
            {
              paramString.run();
              return;
            }
            paramImageAware = this.engine;
            paramImageAware.a();
            paramImageAware.c.execute(paramString);
            return;
          }
          paramDisplayImageOptions.getDisplayer().display(localBitmap, paramImageAware, LoadedFrom.MEMORY_CACHE);
          paramImageLoadingListener.onLoadingComplete(paramString, paramImageAware.getWrappedView(), localBitmap);
          return;
        }
        if (paramDisplayImageOptions.shouldShowImageOnLoading()) {
          paramImageAware.setImageDrawable(paramDisplayImageOptions.getImageOnLoading(this.configuration.a));
        }
        for (;;)
        {
          paramString = new xo(paramString, paramImageAware, localImageSize, str, paramDisplayImageOptions, paramImageLoadingListener, paramImageLoadingProgressListener, this.engine.a(paramString));
          paramString = new xp(this.engine, paramString, defineHandler(paramDisplayImageOptions));
          if (!paramDisplayImageOptions.a()) {
            break;
          }
          paramString.run();
          return;
          if (paramDisplayImageOptions.isResetViewBeforeLoading()) {
            paramImageAware.setImageDrawable(null);
          }
        }
        paramImageAware = this.engine;
        paramImageAware.d.execute(new xn(paramImageAware, paramString));
        return;
      }
    }
  }
  
  public void displayImage(String paramString, ImageAware paramImageAware, ImageLoadingListener paramImageLoadingListener)
  {
    displayImage(paramString, paramImageAware, null, paramImageLoadingListener, null);
  }
  
  @Deprecated
  public DiskCache getDiscCache()
  {
    return getDiskCache();
  }
  
  public DiskCache getDiskCache()
  {
    if (this.configuration == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
    return this.configuration.o;
  }
  
  public String getLoadingUriForView(ImageView paramImageView)
  {
    xm localxm = this.engine;
    paramImageView = new ImageViewAware(paramImageView);
    return (String)localxm.e.get(Integer.valueOf(paramImageView.getId()));
  }
  
  public String getLoadingUriForView(ImageAware paramImageAware)
  {
    return (String)this.engine.e.get(Integer.valueOf(paramImageAware.getId()));
  }
  
  public MemoryCache getMemoryCache()
  {
    if (this.configuration == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
    return this.configuration.n;
  }
  
  public void handleSlowNetwork(boolean paramBoolean)
  {
    this.engine.i.set(paramBoolean);
  }
  
  public void init(ImageLoaderConfiguration paramImageLoaderConfiguration)
  {
    if (paramImageLoaderConfiguration == null) {
      try
      {
        throw new IllegalArgumentException("ImageLoader configuration can not be initialized with null");
      }
      finally {}
    }
    if (this.configuration == null)
    {
      L.d("Initialize ImageLoader with configuration", new Object[0]);
      this.engine = new xm(paramImageLoaderConfiguration);
      this.configuration = paramImageLoaderConfiguration;
    }
    for (;;)
    {
      return;
      L.w("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
    }
  }
  
  public boolean isInited()
  {
    return this.configuration != null;
  }
  
  public void loadImage(String paramString, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener)
  {
    loadImage(paramString, null, paramDisplayImageOptions, paramImageLoadingListener, null);
  }
  
  public void loadImage(String paramString, ImageSize paramImageSize, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener)
  {
    loadImage(paramString, paramImageSize, paramDisplayImageOptions, paramImageLoadingListener, null);
  }
  
  public void loadImage(String paramString, ImageSize paramImageSize, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener, ImageLoadingProgressListener paramImageLoadingProgressListener)
  {
    if (this.configuration == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
    ImageSize localImageSize = paramImageSize;
    if (paramImageSize == null) {
      localImageSize = this.configuration.a();
    }
    if (paramDisplayImageOptions == null) {}
    for (paramImageSize = this.configuration.r;; paramImageSize = paramDisplayImageOptions)
    {
      displayImage(paramString, new NonViewAware(paramString, localImageSize, ViewScaleType.CROP), paramImageSize, paramImageLoadingListener, paramImageLoadingProgressListener);
      return;
    }
  }
  
  public void loadImage(String paramString, ImageSize paramImageSize, ImageLoadingListener paramImageLoadingListener)
  {
    loadImage(paramString, paramImageSize, null, paramImageLoadingListener, null);
  }
  
  public void loadImage(String paramString, ImageLoadingListener paramImageLoadingListener)
  {
    loadImage(paramString, null, null, paramImageLoadingListener, null);
  }
  
  public Bitmap loadImageSync(String paramString)
  {
    return loadImageSync(paramString, null, null);
  }
  
  public Bitmap loadImageSync(String paramString, DisplayImageOptions paramDisplayImageOptions)
  {
    return loadImageSync(paramString, null, paramDisplayImageOptions);
  }
  
  public Bitmap loadImageSync(String paramString, ImageSize paramImageSize)
  {
    return loadImageSync(paramString, paramImageSize, null);
  }
  
  public Bitmap loadImageSync(String paramString, ImageSize paramImageSize, DisplayImageOptions paramDisplayImageOptions)
  {
    Object localObject = paramDisplayImageOptions;
    if (paramDisplayImageOptions == null) {
      localObject = this.configuration.r;
    }
    paramDisplayImageOptions = new DisplayImageOptions.Builder().cloneFrom((DisplayImageOptions)localObject).a(true).build();
    localObject = new xi(null);
    loadImage(paramString, paramImageSize, paramDisplayImageOptions, (ImageLoadingListener)localObject);
    return ((xi)localObject).a();
  }
  
  public void pause()
  {
    this.engine.g.set(true);
  }
  
  public void resume()
  {
    xm localxm = this.engine;
    localxm.g.set(false);
    synchronized (localxm.j)
    {
      localxm.j.notifyAll();
      return;
    }
  }
  
  public void setDefaultLoadingListener(ImageLoadingListener paramImageLoadingListener)
  {
    Object localObject = paramImageLoadingListener;
    if (paramImageLoadingListener == null) {
      localObject = new SimpleImageLoadingListener();
    }
    this.defaultListener = ((ImageLoadingListener)localObject);
  }
  
  public void stop()
  {
    xm localxm = this.engine;
    if (!localxm.a.i) {
      ((ExecutorService)localxm.b).shutdownNow();
    }
    if (!localxm.a.j) {
      ((ExecutorService)localxm.c).shutdownNow();
    }
    localxm.e.clear();
    localxm.f.clear();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/ImageLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */