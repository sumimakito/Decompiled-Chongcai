package cn.apppark.mcd.util.imge;

import android.graphics.Bitmap;
import java.util.WeakHashMap;

public class BitmapCache
  extends WeakHashMap<String, Bitmap>
{
  public boolean isCached(String paramString)
  {
    return (containsKey(paramString)) && (get(paramString) != null);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/imge/BitmapCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */