package cn.apppark.mcd.util.imge;

import android.graphics.drawable.Drawable;
import java.util.WeakHashMap;

public class DrawableCache
  extends WeakHashMap<String, Drawable>
{
  public boolean isCached(String paramString)
  {
    return (containsKey(paramString)) && (get(paramString) != null);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/imge/DrawableCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */