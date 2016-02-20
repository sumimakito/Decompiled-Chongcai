import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache;
import java.util.concurrent.Callable;

public final class wx
  implements Callable<Void>
{
  public wx(DiskLruCache paramDiskLruCache) {}
  
  private Void a()
  {
    synchronized (this.a)
    {
      if (DiskLruCache.a(this.a) == null) {
        return null;
      }
      DiskLruCache.b(this.a);
      DiskLruCache.c(this.a);
      if (DiskLruCache.d(this.a))
      {
        DiskLruCache.e(this.a);
        DiskLruCache.a(this.a, 0);
      }
      return null;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */