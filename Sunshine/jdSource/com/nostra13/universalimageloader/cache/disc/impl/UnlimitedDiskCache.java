package com.nostra13.universalimageloader.cache.disc.impl;

import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import java.io.File;

public class UnlimitedDiskCache
  extends BaseDiskCache
{
  public UnlimitedDiskCache(File paramFile)
  {
    super(paramFile);
  }
  
  public UnlimitedDiskCache(File paramFile1, File paramFile2)
  {
    super(paramFile1, paramFile2);
  }
  
  public UnlimitedDiskCache(File paramFile1, File paramFile2, FileNameGenerator paramFileNameGenerator)
  {
    super(paramFile1, paramFile2, paramFileNameGenerator);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */