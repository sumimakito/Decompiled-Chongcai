import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache.Editor;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class wz
  extends FilterOutputStream
{
  private wz(DiskLruCache.Editor paramEditor, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public final void close()
  {
    try
    {
      this.out.close();
      return;
    }
    catch (IOException localIOException)
    {
      DiskLruCache.Editor.a(this.a, true);
    }
  }
  
  public final void flush()
  {
    try
    {
      this.out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      DiskLruCache.Editor.a(this.a, true);
    }
  }
  
  public final void write(int paramInt)
  {
    try
    {
      this.out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      DiskLruCache.Editor.a(this.a, true);
    }
  }
  
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      DiskLruCache.Editor.a(this.a, true);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/wz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */