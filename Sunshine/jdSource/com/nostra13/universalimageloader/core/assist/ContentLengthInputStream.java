package com.nostra13.universalimageloader.core.assist;

import java.io.InputStream;

public class ContentLengthInputStream
  extends InputStream
{
  private final int length;
  private final InputStream stream;
  
  public ContentLengthInputStream(InputStream paramInputStream, int paramInt)
  {
    this.stream = paramInputStream;
    this.length = paramInt;
  }
  
  public int available()
  {
    return this.length;
  }
  
  public void close()
  {
    this.stream.close();
  }
  
  public void mark(int paramInt)
  {
    this.stream.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    return this.stream.markSupported();
  }
  
  public int read()
  {
    return this.stream.read();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return this.stream.read(paramArrayOfByte);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.stream.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void reset()
  {
    this.stream.reset();
  }
  
  public long skip(long paramLong)
  {
    return this.stream.skip(paramLong);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/assist/ContentLengthInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */