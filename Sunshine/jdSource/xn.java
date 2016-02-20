import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import java.io.File;
import java.util.concurrent.Executor;

public final class xn
  implements Runnable
{
  public xn(xm paramxm, xp paramxp) {}
  
  public final void run()
  {
    File localFile = this.b.a.o.get(this.a.a());
    if ((localFile != null) && (localFile.exists())) {}
    for (int i = 1;; i = 0)
    {
      this.b.a();
      if (i == 0) {
        break;
      }
      this.b.c.execute(this.a);
      return;
    }
    this.b.b.execute(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */