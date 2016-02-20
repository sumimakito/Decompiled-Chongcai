package com.nostra13.universalimageloader.cache.memory;

import android.graphics.Bitmap;
import java.util.Collection;

public abstract interface MemoryCache
{
  public abstract void clear();
  
  public abstract Bitmap get(String paramString);
  
  public abstract Collection<String> keys();
  
  public abstract boolean put(String paramString, Bitmap paramBitmap);
  
  public abstract Bitmap remove(String paramString);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/memory/MemoryCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */