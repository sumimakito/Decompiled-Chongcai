package com.nostra13.universalimageloader.cache.disc.impl.ext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import wz;
import xa;
import xd;

public final class DiskLruCache$Editor
{
  private boolean committed;
  private final xa entry;
  private boolean hasErrors;
  private final boolean[] written;
  
  private DiskLruCache$Editor(DiskLruCache paramDiskLruCache, xa paramxa)
  {
    this.entry = paramxa;
    if (paramxa.c) {}
    for (paramDiskLruCache = null;; paramDiskLruCache = new boolean[DiskLruCache.f(paramDiskLruCache)])
    {
      this.written = paramDiskLruCache;
      return;
    }
  }
  
  public final void abort()
  {
    DiskLruCache.a(this.a, this, false);
  }
  
  public final void abortUnlessCommitted()
  {
    if (!this.committed) {}
    try
    {
      DiskLruCache.a(this.a, this, false);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public final void commit()
  {
    if (this.hasErrors)
    {
      DiskLruCache.a(this.a, this, false);
      this.a.c(this.entry.a);
    }
    for (;;)
    {
      this.committed = true;
      return;
      DiskLruCache.a(this.a, this, true);
    }
  }
  
  public final String getString(int paramInt)
  {
    InputStream localInputStream = newInputStream(paramInt);
    if (localInputStream != null) {
      return DiskLruCache.a(localInputStream);
    }
    return null;
  }
  
  public final InputStream newInputStream(int paramInt)
  {
    synchronized (this.a)
    {
      if (this.entry.d != this) {
        throw new IllegalStateException();
      }
    }
    if (!this.entry.c) {
      return null;
    }
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(this.entry.a(paramInt));
      return localFileInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException) {}
    return null;
  }
  
  public final OutputStream newOutputStream(int paramInt)
  {
    synchronized (this.a)
    {
      if (this.entry.d != this) {
        throw new IllegalStateException();
      }
    }
    if (!this.entry.c) {
      this.written[paramInt] = true;
    }
    File localFile = this.entry.b(paramInt);
    try
    {
      Object localObject2 = new FileOutputStream(localFile);
      localObject2 = new wz(this, (OutputStream)localObject2, null);
      return (OutputStream)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      for (;;)
      {
        DiskLruCache.g(this.a).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          OutputStream localOutputStream = DiskLruCache.e();
          return localOutputStream;
        }
      }
    }
  }
  
  public final void set(int paramInt, String paramString)
  {
    try
    {
      OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(newOutputStream(paramInt), xd.b);
      xd.a(localOutputStreamWriter);
    }
    finally
    {
      try
      {
        localOutputStreamWriter.write(paramString);
        xd.a(localOutputStreamWriter);
        return;
      }
      finally {}
      paramString = finally;
      localOutputStreamWriter = null;
    }
    throw paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */