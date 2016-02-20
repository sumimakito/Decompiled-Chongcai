import android.graphics.Bitmap;
import android.os.Handler;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.FailReason.FailType;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.decode.ImageDecoder;
import com.nostra13.universalimageloader.core.decode.ImageDecodingInfo;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import com.nostra13.universalimageloader.utils.L;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

public final class xp
  implements IoUtils.CopyListener, Runnable
{
  final String a;
  final ImageAware b;
  final DisplayImageOptions c;
  final ImageLoadingListener d;
  final ImageLoadingProgressListener e;
  private final xm f;
  private final xo g;
  private final Handler h;
  private final ImageLoaderConfiguration i;
  private final ImageDownloader j;
  private final ImageDownloader k;
  private final ImageDownloader l;
  private final ImageDecoder m;
  private final String n;
  private final ImageSize o;
  private final boolean p;
  private LoadedFrom q = LoadedFrom.NETWORK;
  
  public xp(xm paramxm, xo paramxo, Handler paramHandler)
  {
    this.f = paramxm;
    this.g = paramxo;
    this.h = paramHandler;
    this.i = paramxm.a;
    this.j = this.i.p;
    this.k = this.i.s;
    this.l = this.i.t;
    this.m = this.i.q;
    this.a = paramxo.a;
    this.n = paramxo.b;
    this.b = paramxo.c;
    this.o = paramxo.d;
    this.c = paramxo.e;
    this.d = paramxo.f;
    this.e = paramxo.g;
    this.p = this.c.a();
  }
  
  private Bitmap a(String paramString)
  {
    ViewScaleType localViewScaleType = this.b.getScaleType();
    paramString = new ImageDecodingInfo(this.n, paramString, this.a, this.o, localViewScaleType, g(), this.c);
    return this.m.decode(paramString);
  }
  
  private void a(FailReason.FailType paramFailType, Throwable paramThrowable)
  {
    int i3 = 1;
    int i1;
    if (!this.p)
    {
      if (!Thread.interrupted()) {
        break label93;
      }
      L.d("Task was interrupted [%s]", new Object[] { this.n });
      i1 = 1;
      if (i1 == 0)
      {
        if (!this.b.isCollected()) {
          break label98;
        }
        L.d("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { this.n });
        i1 = 1;
        label68:
        i2 = i3;
        if (i1 == 0) {
          if (!i()) {
            break label103;
          }
        }
      }
    }
    label93:
    label98:
    label103:
    for (int i2 = i3;; i2 = 0)
    {
      if (i2 == 0) {
        break label109;
      }
      return;
      i1 = 0;
      break;
      i1 = 0;
      break label68;
    }
    label109:
    a(new xr(this, paramFailType, paramThrowable), false, this.h, this.f);
  }
  
  static void a(Runnable paramRunnable, boolean paramBoolean, Handler paramHandler, xm paramxm)
  {
    if (paramBoolean)
    {
      paramRunnable.run();
      return;
    }
    if (paramHandler == null)
    {
      paramxm.d.execute(paramRunnable);
      return;
    }
    paramHandler.post(paramRunnable);
  }
  
  private boolean b()
  {
    AtomicBoolean localAtomicBoolean = this.f.g;
    if (localAtomicBoolean.get()) {}
    for (;;)
    {
      synchronized (this.f.j)
      {
        if (localAtomicBoolean.get()) {
          L.d("ImageLoader is paused. Waiting...  [%s]", new Object[] { this.n });
        }
        try
        {
          this.f.j.wait();
          L.d(".. Resume loading [%s]", new Object[] { this.n });
          if (this.b.isCollected())
          {
            L.d("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { this.n });
            i1 = 1;
            if ((i1 == 0) && (!i())) {
              break;
            }
            return true;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          L.e("Task was interrupted [%s]", new Object[] { this.n });
          return true;
        }
      }
      int i1 = 0;
    }
    return false;
  }
  
  private boolean c()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.c.shouldDelayBeforeLoading()) {
      L.d("Delay %d ms before loading...  [%s]", new Object[] { Integer.valueOf(this.c.getDelayBeforeLoading()), this.n });
    }
    for (;;)
    {
      try
      {
        Thread.sleep(this.c.getDelayBeforeLoading());
        if (this.b.isCollected())
        {
          L.d("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { this.n });
          i1 = 1;
          if (i1 == 0)
          {
            bool1 = bool2;
            if (!i()) {}
          }
          else
          {
            bool1 = true;
          }
          return bool1;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        L.e("Task was interrupted [%s]", new Object[] { this.n });
        return true;
      }
      int i1 = 0;
    }
  }
  
  private Bitmap d()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = this.i.o.get(this.a);
        Object localObject3;
        Object localObject4;
        Object localObject5;
        Object localObject6;
        if ((localObject1 != null) && (((File)localObject1).exists()) && (((File)localObject1).length() > 0L))
        {
          L.d("Load image from disk cache [%s]", new Object[] { this.n });
          this.q = LoadedFrom.DISC_CACHE;
          h();
          localObject1 = a(ImageDownloader.Scheme.FILE.wrap(((File)localObject1).getAbsolutePath()));
          if (localObject1 != null)
          {
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
          }
        }
        Object localObject7;
        String str;
        File localFile;
        Object localObject2 = null;
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        try
        {
          if (((Bitmap)localObject1).getWidth() > 0)
          {
            localObject7 = localObject1;
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            if (((Bitmap)localObject1).getHeight() > 0) {}
          }
          else
          {
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            L.d("Load image from network [%s]", new Object[] { this.n });
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            this.q = LoadedFrom.NETWORK;
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            str = this.a;
            localObject7 = str;
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            if (this.c.isCacheOnDisk())
            {
              localObject7 = str;
              localObject3 = localObject1;
              localObject4 = localObject1;
              localObject5 = localObject1;
              localObject6 = localObject1;
              if (e())
              {
                localObject3 = localObject1;
                localObject4 = localObject1;
                localObject5 = localObject1;
                localObject6 = localObject1;
                localFile = this.i.o.get(this.a);
                localObject7 = str;
                if (localFile != null)
                {
                  localObject3 = localObject1;
                  localObject4 = localObject1;
                  localObject5 = localObject1;
                  localObject6 = localObject1;
                  localObject7 = ImageDownloader.Scheme.FILE.wrap(localFile.getAbsolutePath());
                }
              }
            }
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            h();
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            localObject1 = a((String)localObject7);
            if (localObject1 != null)
            {
              localObject3 = localObject1;
              localObject4 = localObject1;
              localObject5 = localObject1;
              localObject6 = localObject1;
              if (((Bitmap)localObject1).getWidth() > 0)
              {
                localObject7 = localObject1;
                localObject3 = localObject1;
                localObject4 = localObject1;
                localObject5 = localObject1;
                localObject6 = localObject1;
                if (((Bitmap)localObject1).getHeight() > 0) {
                  continue;
                }
              }
            }
            localObject3 = localObject1;
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            a(FailReason.FailType.DECODING_ERROR, null);
            localObject7 = localObject1;
          }
          return (Bitmap)localObject7;
        }
        catch (Throwable localThrowable2)
        {
          continue;
        }
        catch (OutOfMemoryError localOutOfMemoryError2)
        {
          continue;
        }
        catch (IOException localIOException2)
        {
          continue;
        }
        catch (IllegalStateException localIllegalStateException2)
        {
          continue;
        }
        localIllegalStateException1 = localIllegalStateException1;
        localObject6 = null;
        a(FailReason.FailType.NETWORK_DENIED, null);
        return (Bitmap)localObject6;
      }
      catch (xt localxt)
      {
        throw localxt;
      }
      catch (IOException localIOException1)
      {
        localObject5 = null;
        L.e(localIOException1);
        a(FailReason.FailType.IO_ERROR, localIOException1);
        return (Bitmap)localObject5;
      }
      catch (OutOfMemoryError localOutOfMemoryError1)
      {
        localObject4 = null;
        L.e(localOutOfMemoryError1);
        a(FailReason.FailType.OUT_OF_MEMORY, localOutOfMemoryError1);
        return (Bitmap)localObject4;
      }
      catch (Throwable localThrowable1)
      {
        localObject3 = null;
        L.e(localThrowable1);
        a(FailReason.FailType.UNKNOWN, localThrowable1);
        return (Bitmap)localObject3;
      }
    }
  }
  
  private boolean e()
  {
    L.d("Cache image on disk [%s]", new Object[] { this.n });
    try
    {
      boolean bool = f();
      if (bool)
      {
        int i1 = this.i.d;
        int i2 = this.i.e;
        if ((i1 > 0) || (i2 > 0))
        {
          L.d("Resize image in disk cache [%s]", new Object[] { this.n });
          Object localObject1 = this.i.o.get(this.a);
          if ((localObject1 != null) && (((File)localObject1).exists()))
          {
            Object localObject2 = new ImageSize(i1, i2);
            DisplayImageOptions localDisplayImageOptions = new DisplayImageOptions.Builder().cloneFrom(this.c).imageScaleType(ImageScaleType.IN_SAMPLE_INT).build();
            localObject1 = new ImageDecodingInfo(this.n, ImageDownloader.Scheme.FILE.wrap(((File)localObject1).getAbsolutePath()), this.a, (ImageSize)localObject2, ViewScaleType.FIT_INSIDE, g(), localDisplayImageOptions);
            localObject2 = this.m.decode((ImageDecodingInfo)localObject1);
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              localObject1 = localObject2;
              if (this.i.f != null)
              {
                L.d("Process image before cache on disk [%s]", new Object[] { this.n });
                localObject2 = this.i.f.process((Bitmap)localObject2);
                localObject1 = localObject2;
                if (localObject2 == null)
                {
                  L.e("Bitmap processor for disk cache returned null [%s]", new Object[] { this.n });
                  localObject1 = localObject2;
                }
              }
            }
            if (localObject1 != null)
            {
              this.i.o.save(this.a, (Bitmap)localObject1);
              ((Bitmap)localObject1).recycle();
            }
          }
        }
      }
      return bool;
    }
    catch (IOException localIOException)
    {
      L.e(localIOException);
    }
    return false;
  }
  
  private boolean f()
  {
    InputStream localInputStream = g().getStream(this.a, this.c.getExtraForDownloader());
    if (localInputStream == null)
    {
      L.e("No stream for image [%s]", new Object[] { this.n });
      return false;
    }
    try
    {
      boolean bool = this.i.o.save(this.a, localInputStream, this);
      return bool;
    }
    finally
    {
      IoUtils.closeSilently(localInputStream);
    }
  }
  
  private ImageDownloader g()
  {
    if (this.f.h.get()) {
      return this.k;
    }
    if (this.f.i.get()) {
      return this.l;
    }
    return this.j;
  }
  
  private void h()
  {
    int i1 = 1;
    if (this.b.isCollected()) {
      L.d("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { this.n });
    }
    while (i1 != 0)
    {
      throw new xt(this);
      i1 = 0;
    }
    if (i()) {
      throw new xt(this);
    }
  }
  
  private boolean i()
  {
    Object localObject = this.f;
    ImageAware localImageAware = this.b;
    localObject = (String)((xm)localObject).e.get(Integer.valueOf(localImageAware.getId()));
    if (!this.n.equals(localObject)) {}
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      L.d("ImageAware is reused for another image. Task is cancelled. [%s]", new Object[] { this.n });
      return true;
    }
    return false;
  }
  
  final String a()
  {
    return this.a;
  }
  
  public final boolean onBytesCopied(int paramInt1, int paramInt2)
  {
    boolean bool = false;
    int i1;
    if (!this.p)
    {
      if (!Thread.interrupted()) {
        break label97;
      }
      L.d("Task was interrupted [%s]", new Object[] { this.n });
      i1 = 1;
      if (i1 == 0)
      {
        if (!this.b.isCollected()) {
          break label102;
        }
        L.d("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { this.n });
        i1 = 1;
        label68:
        if ((i1 == 0) && (!i())) {
          break label107;
        }
        i1 = 1;
        label81:
        if (i1 == 0) {
          break label112;
        }
      }
    }
    for (paramInt1 = 0;; paramInt1 = 1)
    {
      if (paramInt1 != 0) {
        bool = true;
      }
      return bool;
      label97:
      i1 = 0;
      break;
      label102:
      i1 = 0;
      break label68;
      label107:
      i1 = 0;
      break label81;
      label112:
      if (this.e != null) {
        a(new xq(this, paramInt1, paramInt2), false, this.h, this.f);
      }
    }
  }
  
  public final void run()
  {
    int i2 = 1;
    if (b()) {}
    while (c()) {
      return;
    }
    ReentrantLock localReentrantLock = this.g.h;
    L.d("Start display image task [%s]", new Object[] { this.n });
    if (localReentrantLock.isLocked()) {
      L.d("Image already is loading. Waiting... [%s]", new Object[] { this.n });
    }
    localReentrantLock.lock();
    int i1;
    try
    {
      h();
      localObject2 = this.i.n.get(this.n);
      if ((localObject2 != null) && (!((Bitmap)localObject2).isRecycled())) {
        break label476;
      }
      localObject2 = d();
      if (localObject2 == null) {
        return;
      }
      h();
      if (!Thread.interrupted()) {
        break label208;
      }
      L.d("Task was interrupted [%s]", new Object[] { this.n });
      i1 = 1;
    }
    catch (xt localxt)
    {
      for (;;)
      {
        if (!this.p)
        {
          if (!Thread.interrupted()) {
            break;
          }
          L.d("Task was interrupted [%s]", new Object[] { this.n });
          i1 = i2;
          if (i1 == 0) {
            break label554;
          }
        }
        return;
        label208:
        i1 = 0;
      }
      localObject1 = localObject2;
      if (!this.c.shouldPreProcess()) {
        break label287;
      }
      L.d("PreProcess image before caching in memory [%s]", new Object[] { this.n });
      Object localObject2 = this.c.getPreProcessor().process((Bitmap)localObject2);
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label287;
      }
      L.e("Pre-processor returned null [%s]", new Object[] { this.n });
      localObject1 = localObject2;
      label287:
      localObject2 = localObject1;
      if (localObject1 == null) {
        break label345;
      }
      localObject2 = localObject1;
      if (!this.c.isCacheInMemory()) {
        break label345;
      }
      L.d("Cache image in memory [%s]", new Object[] { this.n });
      this.i.n.put(this.n, (Bitmap)localObject1);
      localObject2 = localObject1;
      label345:
      localObject1 = localObject2;
      if (localObject2 == null) {
        break label427;
      }
      localObject1 = localObject2;
      if (!this.c.shouldPostProcess()) {
        break label427;
      }
      L.d("PostProcess image before displaying [%s]", new Object[] { this.n });
      localObject2 = this.c.getPostProcessor().process((Bitmap)localObject2);
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label427;
      }
      L.e("Post-processor returned null [%s]", new Object[] { this.n });
      localObject1 = localObject2;
      label427:
      h();
      if (!Thread.interrupted()) {
        break label503;
      }
      L.d("Task was interrupted [%s]", new Object[] { this.n });
      i1 = 1;
      if (i1 == 0) {
        break label508;
      }
      throw new xt(this);
    }
    finally
    {
      localReentrantLock.unlock();
    }
    if (i1 != 0) {
      throw new xt(this);
    }
    for (;;)
    {
      Object localObject1;
      label476:
      this.q = LoadedFrom.MEMORY_CACHE;
      L.d("...Get cached bitmap from memory after waiting. [%s]", new Object[] { this.n });
      continue;
      label503:
      i1 = 0;
      continue;
      label508:
      localReentrantLock.unlock();
      a(new xf(localBitmap, this.g, this.f, this.q), this.p, this.h, this.f);
      return;
      i1 = 0;
      continue;
      label554:
      a(new xs(this), false, this.h, this.f);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */