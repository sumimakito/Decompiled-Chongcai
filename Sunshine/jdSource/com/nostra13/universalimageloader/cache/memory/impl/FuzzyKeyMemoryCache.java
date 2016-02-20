package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

public class FuzzyKeyMemoryCache
  implements MemoryCache
{
  private final MemoryCache cache;
  private final Comparator<String> keyComparator;
  
  public FuzzyKeyMemoryCache(MemoryCache paramMemoryCache, Comparator<String> paramComparator)
  {
    this.cache = paramMemoryCache;
    this.keyComparator = paramComparator;
  }
  
  public void clear()
  {
    this.cache.clear();
  }
  
  public Bitmap get(String paramString)
  {
    return this.cache.get(paramString);
  }
  
  public Collection<String> keys()
  {
    return this.cache.keys();
  }
  
  public boolean put(String paramString, Bitmap paramBitmap)
  {
    for (;;)
    {
      synchronized (this.cache)
      {
        Iterator localIterator = this.cache.keys().iterator();
        if (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          if (this.keyComparator.compare(paramString, str) != 0) {
            continue;
          }
          if (str != null) {
            this.cache.remove(str);
          }
          return this.cache.put(paramString, paramBitmap);
        }
      }
      String str = null;
    }
  }
  
  public Bitmap remove(String paramString)
  {
    return this.cache.remove(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */