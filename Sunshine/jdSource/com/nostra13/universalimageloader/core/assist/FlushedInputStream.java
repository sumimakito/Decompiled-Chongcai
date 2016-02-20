package com.nostra13.universalimageloader.core.assist;

import java.io.FilterInputStream;
import java.io.InputStream;

public class FlushedInputStream
  extends FilterInputStream
{
  public FlushedInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public long skip(long paramLong)
  {
    long l2;
    for (long l1 = 0L; l1 < paramLong; l1 = l2 + l1)
    {
      long l3 = this.in.skip(paramLong - l1);
      l2 = l3;
      if (l3 == 0L)
      {
        if (read() < 0) {
          break;
        }
        l2 = 1L;
      }
    }
    return l1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/assist/FlushedInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */