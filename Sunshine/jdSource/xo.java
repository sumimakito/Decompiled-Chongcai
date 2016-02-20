import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import java.util.concurrent.locks.ReentrantLock;

public final class xo
{
  final String a;
  final String b;
  final ImageAware c;
  final ImageSize d;
  final DisplayImageOptions e;
  final ImageLoadingListener f;
  final ImageLoadingProgressListener g;
  final ReentrantLock h;
  
  public xo(String paramString1, ImageAware paramImageAware, ImageSize paramImageSize, String paramString2, DisplayImageOptions paramDisplayImageOptions, ImageLoadingListener paramImageLoadingListener, ImageLoadingProgressListener paramImageLoadingProgressListener, ReentrantLock paramReentrantLock)
  {
    this.a = paramString1;
    this.c = paramImageAware;
    this.d = paramImageSize;
    this.e = paramDisplayImageOptions;
    this.f = paramImageLoadingListener;
    this.g = paramImageLoadingProgressListener;
    this.h = paramReentrantLock;
    this.b = paramString2;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */