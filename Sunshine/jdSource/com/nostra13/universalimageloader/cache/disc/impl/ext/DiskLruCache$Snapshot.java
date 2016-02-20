package com.nostra13.universalimageloader.cache.disc.impl.ext;

import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import xd;

public final class DiskLruCache$Snapshot
  implements Closeable
{
  private File[] files;
  private final InputStream[] ins;
  private final String key;
  private final long[] lengths;
  private final long sequenceNumber;
  
  private DiskLruCache$Snapshot(DiskLruCache paramDiskLruCache, String paramString, long paramLong, File[] paramArrayOfFile, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
  {
    this.key = paramString;
    this.sequenceNumber = paramLong;
    this.files = paramArrayOfFile;
    this.ins = paramArrayOfInputStream;
    this.lengths = paramArrayOfLong;
  }
  
  public final void close()
  {
    InputStream[] arrayOfInputStream = this.ins;
    int j = arrayOfInputStream.length;
    int i = 0;
    while (i < j)
    {
      xd.a(arrayOfInputStream[i]);
      i += 1;
    }
  }
  
  public final DiskLruCache.Editor edit()
  {
    return DiskLruCache.a(this.a, this.key, this.sequenceNumber);
  }
  
  public final File getFile(int paramInt)
  {
    return this.files[paramInt];
  }
  
  public final InputStream getInputStream(int paramInt)
  {
    return this.ins[paramInt];
  }
  
  public final long getLength(int paramInt)
  {
    return this.lengths[paramInt];
  }
  
  public final String getString(int paramInt)
  {
    return DiskLruCache.a(getInputStream(paramInt));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */