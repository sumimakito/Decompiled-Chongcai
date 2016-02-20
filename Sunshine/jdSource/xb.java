import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

public final class xb
  implements Closeable
{
  final Charset a;
  private final InputStream b;
  private byte[] c;
  private int d;
  private int e;
  
  private xb(InputStream paramInputStream, int paramInt, Charset paramCharset)
  {
    if ((paramInputStream == null) || (paramCharset == null)) {
      throw new NullPointerException();
    }
    if (!paramCharset.equals(xd.a)) {
      throw new IllegalArgumentException("Unsupported encoding");
    }
    this.b = paramInputStream;
    this.a = paramCharset;
    this.c = new byte[' '];
  }
  
  public xb(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, 8192, paramCharset);
  }
  
  private void b()
  {
    int i = this.b.read(this.c, 0, this.c.length);
    if (i == -1) {
      throw new EOFException();
    }
    this.d = 0;
    this.e = i;
  }
  
  public final String a()
  {
    synchronized (this.b)
    {
      if (this.c == null) {
        throw new IOException("LineReader is closed");
      }
    }
    if (this.d >= this.e) {
      b();
    }
    int i = this.d;
    for (;;)
    {
      if (i != this.e)
      {
        if (this.c[i] != 10) {
          break label272;
        }
        if ((i == this.d) || (this.c[(i - 1)] != 13)) {
          break label267;
        }
      }
      label267:
      for (int j = i - 1;; j = i)
      {
        Object localObject2 = new String(this.c, this.d, j - this.d, this.a.name());
        this.d = (i + 1);
        return (String)localObject2;
        localObject2 = new xc(this, this.e - this.d + 80);
        for (;;)
        {
          ((ByteArrayOutputStream)localObject2).write(this.c, this.d, this.e - this.d);
          this.e = -1;
          b();
          i = this.d;
          while (i != this.e)
          {
            if (this.c[i] == 10)
            {
              if (i != this.d) {
                ((ByteArrayOutputStream)localObject2).write(this.c, this.d, i - this.d);
              }
              this.d = (i + 1);
              localObject2 = ((ByteArrayOutputStream)localObject2).toString();
              return (String)localObject2;
            }
            i += 1;
          }
        }
      }
      label272:
      i += 1;
    }
  }
  
  public final void close()
  {
    synchronized (this.b)
    {
      if (this.c != null)
      {
        this.c = null;
        this.b.close();
      }
      return;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */