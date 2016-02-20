package org.kobjects.io;

import java.io.IOException;
import java.io.InputStream;

public class BoundInputStream
  extends InputStream
{
  InputStream is;
  int remaining;
  
  public BoundInputStream(InputStream paramInputStream, int paramInt)
  {
    this.is = paramInputStream;
    this.remaining = paramInt;
  }
  
  public int available()
    throws IOException
  {
    int i = this.is.available();
    if (i < this.remaining) {
      return i;
    }
    return this.remaining;
  }
  
  public void close()
  {
    try
    {
      this.is.close();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public int read()
    throws IOException
  {
    if (this.remaining <= 0) {
      return -1;
    }
    this.remaining -= 1;
    return this.is.read();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = paramInt2;
    if (paramInt2 > this.remaining) {
      i = this.remaining;
    }
    paramInt1 = this.is.read(paramArrayOfByte, paramInt1, i);
    if (paramInt1 > 0) {
      this.remaining -= paramInt1;
    }
    return paramInt1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/io/BoundInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */