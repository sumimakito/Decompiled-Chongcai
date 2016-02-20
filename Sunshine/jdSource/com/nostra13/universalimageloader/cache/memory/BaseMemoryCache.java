package com.nostra13.universalimageloader.cache.memory;

import android.graphics.Bitmap;
import java.lang.ref.Reference;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public abstract class BaseMemoryCache
  implements MemoryCache
{
  private final Map<String, Reference<Bitmap>> softMap = Collections.synchronizedMap(new HashMap());
  
  public void clear()
  {
    this.softMap.clear();
  }
  
  protected abstract Reference<Bitmap> createReference(Bitmap paramBitmap);
  
  public Bitmap get(String paramString)
  {
    paramString = (Reference)this.softMap.get(paramString);
    if (paramString != null) {
      return (Bitmap)paramString.get();
    }
    return null;
  }
  
  public Collection<String> keys()
  {
    synchronized (this.softMap)
    {
      HashSet localHashSet = new HashSet(this.softMap.keySet());
      return localHashSet;
    }
  }
  
  public boolean put(String paramString, Bitmap paramBitmap)
  {
    this.softMap.put(paramString, createReference(paramBitmap));
    return true;
  }
  
  public Bitmap remove(String paramString)
  {
    paramString = (Reference)this.softMap.remove(paramString);
    if (paramString == null) {
      return null;
    }
    return (Bitmap)paramString.get();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/memory/BaseMemoryCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */