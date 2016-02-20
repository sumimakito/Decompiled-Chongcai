import com.nostra13.universalimageloader.core.assist.FlushedInputStream;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import java.io.InputStream;

public final class xl
  implements ImageDownloader
{
  private final ImageDownloader a;
  
  public xl(ImageDownloader paramImageDownloader)
  {
    this.a = paramImageDownloader;
  }
  
  public final InputStream getStream(String paramString, Object paramObject)
  {
    paramObject = this.a.getStream(paramString, paramObject);
    switch (xj.a[com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme.ofUri(paramString).ordinal()])
    {
    default: 
      return (InputStream)paramObject;
    }
    return new FlushedInputStream((InputStream)paramObject);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */