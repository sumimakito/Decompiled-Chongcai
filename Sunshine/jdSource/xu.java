import android.graphics.Bitmap;
import android.os.Handler;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;
import com.nostra13.universalimageloader.utils.L;

public final class xu
  implements Runnable
{
  private final xm a;
  private final Bitmap b;
  private final xo c;
  private final Handler d;
  
  public xu(xm paramxm, Bitmap paramBitmap, xo paramxo, Handler paramHandler)
  {
    this.a = paramxm;
    this.b = paramBitmap;
    this.c = paramxo;
    this.d = paramHandler;
  }
  
  public final void run()
  {
    L.d("PostProcess image before displaying [%s]", new Object[] { this.c.b });
    xp.a(new xf(this.c.e.getPostProcessor().process(this.b), this.c, this.a, LoadedFrom.MEMORY_CACHE), this.c.e.a(), this.d, this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */