import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

final class xc
  extends ByteArrayOutputStream
{
  xc(xb paramxb, int paramInt)
  {
    super(paramInt);
  }
  
  public final String toString()
  {
    if ((this.count > 0) && (this.buf[(this.count - 1)] == 13)) {}
    for (int i = this.count - 1;; i = this.count) {
      try
      {
        String str = new String(this.buf, 0, i, this.a.a.name());
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new AssertionError(localUnsupportedEncodingException);
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */