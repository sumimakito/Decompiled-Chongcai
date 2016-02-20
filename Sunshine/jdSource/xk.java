import com.nostra13.universalimageloader.core.download.ImageDownloader;
import java.io.InputStream;

public final class xk
  implements ImageDownloader
{
  private final ImageDownloader a;
  
  public xk(ImageDownloader paramImageDownloader)
  {
    this.a = paramImageDownloader;
  }
  
  public final InputStream getStream(String paramString, Object paramObject)
  {
    switch (xj.a[com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme.ofUri(paramString).ordinal()])
    {
    default: 
      return this.a.getStream(paramString, paramObject);
    }
    throw new IllegalStateException();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */