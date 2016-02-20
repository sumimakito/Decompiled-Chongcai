import android.graphics.Bitmap;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.utils.L;
import java.util.Map;

final class xf
  implements Runnable
{
  private final Bitmap a;
  private final String b;
  private final ImageAware c;
  private final String d;
  private final BitmapDisplayer e;
  private final ImageLoadingListener f;
  private final xm g;
  private final LoadedFrom h;
  
  public xf(Bitmap paramBitmap, xo paramxo, xm paramxm, LoadedFrom paramLoadedFrom)
  {
    this.a = paramBitmap;
    this.b = paramxo.a;
    this.c = paramxo.c;
    this.d = paramxo.b;
    this.e = paramxo.e.getDisplayer();
    this.f = paramxo.f;
    this.g = paramxm;
    this.h = paramLoadedFrom;
  }
  
  public final void run()
  {
    if (this.c.isCollected())
    {
      L.d("ImageAware was collected by GC. Task is cancelled. [%s]", new Object[] { this.d });
      this.f.onLoadingCancelled(this.b, this.c.getWrappedView());
      return;
    }
    Object localObject = this.g;
    ImageAware localImageAware = this.c;
    localObject = (String)((xm)localObject).e.get(Integer.valueOf(localImageAware.getId()));
    if (!this.d.equals(localObject)) {}
    for (int i = 1; i != 0; i = 0)
    {
      L.d("ImageAware is reused for another image. Task is cancelled. [%s]", new Object[] { this.d });
      this.f.onLoadingCancelled(this.b, this.c.getWrappedView());
      return;
    }
    L.d("Display image in ImageAware (loaded from %1$s) [%2$s]", new Object[] { this.h, this.d });
    this.e.display(this.a, this.c, this.h);
    localObject = this.g;
    localImageAware = this.c;
    ((xm)localObject).e.remove(Integer.valueOf(localImageAware.getId()));
    this.f.onLoadingComplete(this.b, this.c.getWrappedView(), this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */