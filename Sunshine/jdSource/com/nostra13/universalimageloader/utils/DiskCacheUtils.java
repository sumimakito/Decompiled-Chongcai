package com.nostra13.universalimageloader.utils;

import com.nostra13.universalimageloader.cache.disc.DiskCache;
import java.io.File;

public final class DiskCacheUtils
{
  public static File findInCache(String paramString, DiskCache paramDiskCache)
  {
    paramString = paramDiskCache.get(paramString);
    if ((paramString != null) && (paramString.exists())) {
      return paramString;
    }
    return null;
  }
  
  public static boolean removeFromCache(String paramString, DiskCache paramDiskCache)
  {
    paramString = paramDiskCache.get(paramString);
    return (paramString != null) && (paramString.exists()) && (paramString.delete());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/utils/DiskCacheUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */