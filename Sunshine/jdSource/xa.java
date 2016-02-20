import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache;
import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache.Editor;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;

public final class xa
{
  public final String a;
  public final long[] b;
  public boolean c;
  public DiskLruCache.Editor d;
  public long e;
  
  private xa(DiskLruCache paramDiskLruCache, String paramString)
  {
    this.a = paramString;
    this.b = new long[DiskLruCache.f(paramDiskLruCache)];
  }
  
  public final File a(int paramInt)
  {
    return new File(DiskLruCache.g(this.f), this.a + "." + paramInt);
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long[] arrayOfLong = this.b;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      localStringBuilder.append(' ').append(l);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public final void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != DiskLruCache.f(this.f)) {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        this.b[i] = Long.parseLong(paramArrayOfString[i]);
        i += 1;
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
  }
  
  public final File b(int paramInt)
  {
    return new File(DiskLruCache.g(this.f), this.a + "." + paramInt + ".tmp");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */