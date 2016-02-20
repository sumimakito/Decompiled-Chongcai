package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.LimitedMemoryCache;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LargestLimitedMemoryCache
  extends LimitedMemoryCache
{
  private final Map<Bitmap, Integer> valueSizes = Collections.synchronizedMap(new HashMap());
  
  public LargestLimitedMemoryCache(int paramInt)
  {
    super(paramInt);
  }
  
  public void clear()
  {
    this.valueSizes.clear();
    super.clear();
  }
  
  protected Reference<Bitmap> createReference(Bitmap paramBitmap)
  {
    return new WeakReference(paramBitmap);
  }
  
  protected int getSize(Bitmap paramBitmap)
  {
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }
  
  public boolean put(String paramString, Bitmap paramBitmap)
  {
    if (super.put(paramString, paramBitmap))
    {
      this.valueSizes.put(paramBitmap, Integer.valueOf(getSize(paramBitmap)));
      return true;
    }
    return false;
  }
  
  public Bitmap remove(String paramString)
  {
    Bitmap localBitmap = super.get(paramString);
    if (localBitmap != null) {
      this.valueSizes.remove(localBitmap);
    }
    return super.remove(paramString);
  }
  
  protected Bitmap removeNext()
  {
    Object localObject1 = null;
    Object localObject5;
    for (Object localObject4 = this.valueSizes.entrySet();; localObject4 = localObject5)
    {
      synchronized (this.valueSizes)
      {
        Iterator localIterator = ((Set)localObject4).iterator();
        localObject4 = null;
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if (localObject1 == null)
          {
            localObject1 = (Bitmap)localEntry.getKey();
            localObject4 = (Integer)localEntry.getValue();
          }
          else
          {
            localObject5 = (Integer)localEntry.getValue();
            if (((Integer)localObject5).intValue() <= ((Integer)localObject4).intValue()) {
              break label142;
            }
            localObject4 = (Bitmap)localEntry.getKey();
            localObject1 = localObject5;
            break label148;
          }
        }
        this.valueSizes.remove(localObject1);
        return (Bitmap)localObject1;
      }
      label142:
      localObject5 = localObject2;
      Object localObject3 = localObject4;
      localObject4 = localObject5;
      label148:
      localObject5 = localObject3;
      localObject3 = localObject4;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/memory/impl/LargestLimitedMemoryCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */