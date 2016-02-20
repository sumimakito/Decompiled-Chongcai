package com.nostra13.universalimageloader.cache.disc.impl.ext;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import com.nostra13.universalimageloader.utils.L;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class LruDiskCache
  implements DiskCache
{
  public static final int DEFAULT_BUFFER_SIZE = 32768;
  public static final Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT = Bitmap.CompressFormat.PNG;
  public static final int DEFAULT_COMPRESS_QUALITY = 100;
  private static final String ERROR_ARG_NEGATIVE = " argument must be positive number";
  private static final String ERROR_ARG_NULL = " argument must be not null";
  protected int bufferSize = 32768;
  protected DiskLruCache cache;
  protected Bitmap.CompressFormat compressFormat = DEFAULT_COMPRESS_FORMAT;
  protected int compressQuality = 100;
  protected final FileNameGenerator fileNameGenerator;
  private File reserveCacheDir;
  
  public LruDiskCache(File paramFile, FileNameGenerator paramFileNameGenerator, long paramLong)
  {
    this(paramFile, null, paramFileNameGenerator, paramLong, 0);
  }
  
  public LruDiskCache(File paramFile1, File paramFile2, FileNameGenerator paramFileNameGenerator, long paramLong, int paramInt)
  {
    if (paramFile1 == null) {
      throw new IllegalArgumentException("cacheDir argument must be not null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
    }
    if (paramFileNameGenerator == null) {
      throw new IllegalArgumentException("fileNameGenerator argument must be not null");
    }
    if (paramLong == 0L) {
      paramLong = Long.MAX_VALUE;
    }
    for (;;)
    {
      if (paramInt == 0) {
        paramInt = Integer.MAX_VALUE;
      }
      for (;;)
      {
        this.reserveCacheDir = paramFile2;
        this.fileNameGenerator = paramFileNameGenerator;
        initCache(paramFile1, paramFile2, paramLong, paramInt);
        return;
      }
    }
  }
  
  private String getKey(String paramString)
  {
    return this.fileNameGenerator.generate(paramString);
  }
  
  private void initCache(File paramFile1, File paramFile2, long paramLong, int paramInt)
  {
    try
    {
      this.cache = DiskLruCache.a(paramFile1, 1, 1, paramLong, paramInt);
      return;
    }
    catch (IOException paramFile1)
    {
      do
      {
        L.e(paramFile1);
        if (paramFile2 != null) {
          initCache(paramFile2, null, paramLong, paramInt);
        }
      } while (this.cache != null);
      throw paramFile1;
    }
  }
  
  public void clear()
  {
    try
    {
      this.cache.d();
    }
    catch (IOException localIOException1)
    {
      for (;;)
      {
        try
        {
          initCache(this.cache.a(), this.reserveCacheDir, this.cache.b(), this.cache.c());
          return;
        }
        catch (IOException localIOException2)
        {
          L.e(localIOException2);
        }
        localIOException1 = localIOException1;
        L.e(localIOException1);
      }
    }
  }
  
  public void close()
  {
    try
    {
      this.cache.close();
      this.cache = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        L.e(localIOException);
      }
    }
  }
  
  /* Error */
  public File get(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 93	com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache:cache	Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    //   9: aload_0
    //   10: aload_1
    //   11: invokespecial 121	com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache:getKey	(Ljava/lang/String;)Ljava/lang/String;
    //   14: invokevirtual 124	com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache:a	(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnonnull +17 -> 36
    //   22: aload_2
    //   23: astore_3
    //   24: aload_1
    //   25: ifnull +9 -> 34
    //   28: aload_1
    //   29: invokevirtual 127	com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot:close	()V
    //   32: aload_2
    //   33: astore_3
    //   34: aload_3
    //   35: areturn
    //   36: aload_1
    //   37: astore_2
    //   38: aload_1
    //   39: iconst_0
    //   40: invokevirtual 131	com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot:getFile	(I)Ljava/io/File;
    //   43: astore_3
    //   44: aload_3
    //   45: astore_2
    //   46: goto -24 -> 22
    //   49: astore_3
    //   50: aconst_null
    //   51: astore_1
    //   52: aload_1
    //   53: astore_2
    //   54: aload_3
    //   55: invokestatic 99	com/nostra13/universalimageloader/utils/L:e	(Ljava/lang/Throwable;)V
    //   58: aload 4
    //   60: astore_3
    //   61: aload_1
    //   62: ifnull -28 -> 34
    //   65: aload_1
    //   66: invokevirtual 127	com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot:close	()V
    //   69: aconst_null
    //   70: areturn
    //   71: astore_1
    //   72: aconst_null
    //   73: astore_2
    //   74: aload_2
    //   75: ifnull +7 -> 82
    //   78: aload_2
    //   79: invokevirtual 127	com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot:close	()V
    //   82: aload_1
    //   83: athrow
    //   84: astore_1
    //   85: goto -11 -> 74
    //   88: astore_3
    //   89: goto -37 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	LruDiskCache
    //   0	92	1	paramString	String
    //   4	75	2	localObject1	Object
    //   23	22	3	localObject2	Object
    //   49	6	3	localIOException1	IOException
    //   60	1	3	localObject3	Object
    //   88	1	3	localIOException2	IOException
    //   1	58	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   5	18	49	java/io/IOException
    //   5	18	71	finally
    //   38	44	84	finally
    //   54	58	84	finally
    //   38	44	88	java/io/IOException
  }
  
  public File getDirectory()
  {
    return this.cache.a();
  }
  
  public boolean remove(String paramString)
  {
    try
    {
      boolean bool = this.cache.c(getKey(paramString));
      return bool;
    }
    catch (IOException paramString)
    {
      L.e(paramString);
    }
    return false;
  }
  
  public boolean save(String paramString, Bitmap paramBitmap)
  {
    DiskLruCache.Editor localEditor = this.cache.b(getKey(paramString));
    if (localEditor == null) {
      return false;
    }
    paramString = new BufferedOutputStream(localEditor.newOutputStream(0), this.bufferSize);
    boolean bool;
    try
    {
      bool = paramBitmap.compress(this.compressFormat, this.compressQuality, paramString);
      IoUtils.closeSilently(paramString);
      if (bool)
      {
        localEditor.commit();
        return bool;
      }
    }
    finally
    {
      IoUtils.closeSilently(paramString);
    }
    localEditor.abort();
    return bool;
  }
  
  public boolean save(String paramString, InputStream paramInputStream, IoUtils.CopyListener paramCopyListener)
  {
    paramString = this.cache.b(getKey(paramString));
    if (paramString == null) {
      return false;
    }
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramString.newOutputStream(0), this.bufferSize);
    try
    {
      boolean bool = IoUtils.copyStream(paramInputStream, localBufferedOutputStream, paramCopyListener, this.bufferSize);
      IoUtils.closeSilently(localBufferedOutputStream);
      if (bool)
      {
        paramString.commit();
        return bool;
      }
      paramString.abort();
      return bool;
    }
    finally
    {
      IoUtils.closeSilently(localBufferedOutputStream);
      paramString.abort();
    }
  }
  
  public void setBufferSize(int paramInt)
  {
    this.bufferSize = paramInt;
  }
  
  public void setCompressFormat(Bitmap.CompressFormat paramCompressFormat)
  {
    this.compressFormat = paramCompressFormat;
  }
  
  public void setCompressQuality(int paramInt)
  {
    this.compressQuality = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */