package cn.apppark.mcd.util.imge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.NinePatch;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.base.YygyResourceDirGenerator;
import java.io.File;

public class CacheUtil
{
  private Context context;
  
  public CacheUtil(Context paramContext)
  {
    this.context = paramContext;
  }
  
  private Bitmap findBitmap(String paramString)
  {
    paramString = generatePath(paramString);
    Object localObject = new File(paramString);
    if (!((File)localObject).exists()) {
      return null;
    }
    try
    {
      int i = imgScaleUnite(((File)localObject).length());
      localObject = new BitmapFactory.Options();
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
      ((BitmapFactory.Options)localObject).inSampleSize = i;
      ((BitmapFactory.Options)localObject).inDither = false;
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = false;
      paramString = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
      return paramString;
    }
    catch (OutOfMemoryError paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  private Bitmap findBitmap(String paramString, int paramInt)
  {
    paramString = generatePath(paramString);
    if (!new File(paramString).exists()) {
      return null;
    }
    try
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      localOptions.inSampleSize = paramInt;
      localOptions.inDither = false;
      localOptions.inJustDecodeBounds = false;
      paramString = BitmapFactory.decodeFile(paramString, localOptions);
      return paramString;
    }
    catch (OutOfMemoryError paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  private int imgScaleUnite(long paramLong)
  {
    return 1;
  }
  
  public Bitmap findBitmapByAbPath(String paramString)
  {
    Object localObject = new File(paramString);
    if ((!((File)localObject).exists()) || (((File)localObject).isDirectory())) {
      return null;
    }
    try
    {
      int i = imgScaleUnite(((File)localObject).length());
      localObject = new BitmapFactory.Options();
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
      ((BitmapFactory.Options)localObject).inSampleSize = i;
      ((BitmapFactory.Options)localObject).inDither = false;
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = false;
      paramString = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
      return paramString;
    }
    catch (OutOfMemoryError paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public Drawable findDrawable(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim()))) {}
    Object localObject;
    do
    {
      return null;
      paramString = generatePath(paramString);
      localObject = new File(paramString);
    } while (!((File)localObject).exists());
    try
    {
      int i = imgScaleUnite(((File)localObject).length());
      localObject = new BitmapFactory.Options();
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
      ((BitmapFactory.Options)localObject).inSampleSize = i;
      ((BitmapFactory.Options)localObject).inDither = false;
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = false;
      paramString = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
      paramString = new BitmapDrawable(this.context.getResources(), paramString);
      return paramString;
    }
    catch (OutOfMemoryError paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString = null;
      }
    }
  }
  
  public String generatePath(String paramString)
  {
    return YYGYContants.mDirGenerator.getResourceDir() + File.separator + paramString;
  }
  
  public Bitmap getCachedBitmap(int paramInt)
  {
    String str = PublicUtil.getMD5Str(paramInt);
    if (YYGYContants.mNetworktImageCache.isCached(str)) {
      return (Bitmap)YYGYContants.mNetworktImageCache.get(str);
    }
    Bitmap localBitmap = BitmapFactory.decodeResource(this.context.getResources(), paramInt);
    YYGYContants.mNetworktImageCache.put(str, localBitmap);
    return (Bitmap)YYGYContants.mNetworktImageCache.get(str);
  }
  
  public Bitmap getCachedBitmap(String paramString)
  {
    String str = PublicUtil.getMD5Str(paramString);
    if (YYGYContants.mNetworktImageCache.isCached(str)) {
      return (Bitmap)YYGYContants.mNetworktImageCache.get(str);
    }
    paramString = findBitmap(paramString);
    YYGYContants.mNetworktImageCache.put(str, paramString);
    return (Bitmap)YYGYContants.mNetworktImageCache.get(str);
  }
  
  public Bitmap getCachedBitmap(String paramString, int paramInt)
  {
    String str = PublicUtil.getMD5Str(paramString);
    if (YYGYContants.mNetworktImageCache.isCached(str)) {
      return (Bitmap)YYGYContants.mNetworktImageCache.get(str);
    }
    paramString = findBitmap(paramString, paramInt);
    YYGYContants.mNetworktImageCache.put(str, paramString);
    return (Bitmap)YYGYContants.mNetworktImageCache.get(str);
  }
  
  public Bitmap getCachedBitmapSD(String paramString)
  {
    String str = PublicUtil.getMD5Str(paramString);
    Object localObject2 = null;
    if (YYGYContants.mNetworktImageCache.isCached(str)) {
      return (Bitmap)YYGYContants.mNetworktImageCache.get(str);
    }
    File localFile = new File(paramString);
    Object localObject1 = localObject2;
    int i;
    if (localFile.exists()) {
      i = imgScaleUnite(localFile.length());
    }
    try
    {
      localObject1 = new BitmapFactory.Options();
      ((BitmapFactory.Options)localObject1).inJustDecodeBounds = false;
      ((BitmapFactory.Options)localObject1).inSampleSize = i;
      ((BitmapFactory.Options)localObject1).inDither = false;
      localObject1 = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject1);
      YYGYContants.mNetworktImageCache.put(str, localObject1);
      return (Bitmap)YYGYContants.mNetworktImageCache.get(str);
    }
    catch (OutOfMemoryError paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        localObject1 = localObject2;
      }
    }
  }
  
  public Drawable getCachedDrawable(int paramInt)
  {
    String str = PublicUtil.getMD5Str(paramInt);
    if (YYGYContants.mLocalDrawableCaches.isCached(str)) {
      return (Drawable)YYGYContants.mLocalDrawableCaches.get(str);
    }
    Drawable localDrawable = this.context.getResources().getDrawable(paramInt);
    YYGYContants.mLocalDrawableCaches.put(str, localDrawable);
    return (Drawable)YYGYContants.mLocalDrawableCaches.get(str);
  }
  
  public Drawable getCachedDrawable(String paramString)
  {
    String str = generatePath(paramString);
    if (YYGYContants.mLocalDrawableCaches.isCached(str)) {
      return (Drawable)YYGYContants.mLocalDrawableCaches.get(str);
    }
    if (!new File(str).exists()) {
      return null;
    }
    paramString = findDrawable(paramString);
    YYGYContants.mLocalDrawableCaches.put(str, paramString);
    return (Drawable)YYGYContants.mLocalDrawableCaches.get(str);
  }
  
  public Drawable getCachedDrawable(String paramString, int paramInt)
  {
    String str = PublicUtil.getMD5Str(paramString);
    if (YYGYContants.mLocalDrawableCaches.isCached(str)) {
      return (Drawable)YYGYContants.mLocalDrawableCaches.get(str);
    }
    if (!new File(paramString).exists()) {
      return null;
    }
    paramString = Drawable.createFromPath(paramString);
    YYGYContants.mLocalDrawableCaches.put(str, paramString);
    return (Drawable)YYGYContants.mLocalDrawableCaches.get(str);
  }
  
  public Drawable getCachedDrawable4img(String paramString1, String paramString2, String paramString3)
  {
    String str = generatePath(paramString1);
    paramString2 = str + paramString2 + paramString3;
    if (YYGYContants.mLocalDrawableCaches.isCached(paramString2)) {
      return (Drawable)YYGYContants.mLocalDrawableCaches.get(paramString2);
    }
    if (!new File(str).exists()) {
      return null;
    }
    paramString1 = findDrawable(paramString1);
    YYGYContants.mLocalDrawableCaches.put(paramString2, paramString1);
    return (Drawable)YYGYContants.mLocalDrawableCaches.get(paramString2);
  }
  
  public Drawable getCachedDrawableNine(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = PublicUtil.getMD5Str(paramString);
    if (YYGYContants.mLocalDrawableCaches.isCached((String)localObject2)) {
      paramString = (Drawable)YYGYContants.mLocalDrawableCaches.get(localObject2);
    }
    do
    {
      return paramString;
      localObject2 = findBitmap(paramString);
      ((Bitmap)localObject2).setDensity(240);
      paramString = ((Bitmap)localObject2).getNinePatchChunk();
      if (paramString != null) {
        break;
      }
      paramString = (String)localObject1;
    } while (localObject2 == null);
    ((Bitmap)localObject2).recycle();
    return null;
    return new NinePatchDrawable(new NinePatch((Bitmap)localObject2, paramString, null));
  }
  
  public Bitmap isCache(String paramString)
  {
    Bitmap localBitmap = null;
    if (YYGYContants.mNetworktImageCache.isCached(paramString)) {
      localBitmap = (Bitmap)YYGYContants.mNetworktImageCache.get(paramString);
    }
    return localBitmap;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/imge/CacheUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */