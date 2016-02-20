package com.nostra13.universalimageloader.utils;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import yd;

public final class MemoryCacheUtils
{
  private static final String URI_AND_SIZE_SEPARATOR = "_";
  private static final String WIDTH_AND_HEIGHT_SEPARATOR = "x";
  
  public static Comparator<String> createFuzzyKeyComparator()
  {
    return new yd();
  }
  
  public static List<String> findCacheKeysForImageUri(String paramString, MemoryCache paramMemoryCache)
  {
    ArrayList localArrayList = new ArrayList();
    paramMemoryCache = paramMemoryCache.keys().iterator();
    while (paramMemoryCache.hasNext())
    {
      String str = (String)paramMemoryCache.next();
      if (str.startsWith(paramString)) {
        localArrayList.add(str);
      }
    }
    return localArrayList;
  }
  
  public static List<Bitmap> findCachedBitmapsForImageUri(String paramString, MemoryCache paramMemoryCache)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMemoryCache.keys().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (str.startsWith(paramString)) {
        localArrayList.add(paramMemoryCache.get(str));
      }
    }
    return localArrayList;
  }
  
  public static String generateKey(String paramString, ImageSize paramImageSize)
  {
    return paramString + "_" + paramImageSize.getWidth() + "x" + paramImageSize.getHeight();
  }
  
  public static void removeFromCache(String paramString, MemoryCache paramMemoryCache)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMemoryCache.keys().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (str.startsWith(paramString)) {
        localArrayList.add(str);
      }
    }
    paramString = localArrayList.iterator();
    while (paramString.hasNext()) {
      paramMemoryCache.remove((String)paramString.next());
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/utils/MemoryCacheUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */