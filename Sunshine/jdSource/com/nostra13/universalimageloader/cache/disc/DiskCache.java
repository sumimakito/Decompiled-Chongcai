package com.nostra13.universalimageloader.cache.disc;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import java.io.File;
import java.io.InputStream;

public abstract interface DiskCache
{
  public abstract void clear();
  
  public abstract void close();
  
  public abstract File get(String paramString);
  
  public abstract File getDirectory();
  
  public abstract boolean remove(String paramString);
  
  public abstract boolean save(String paramString, Bitmap paramBitmap);
  
  public abstract boolean save(String paramString, InputStream paramInputStream, IoUtils.CopyListener paramCopyListener);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/disc/DiskCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */