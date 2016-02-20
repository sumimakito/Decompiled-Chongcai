package cn.apppark.vertify.adapter;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.BaseAdapter;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.imge.CacheUtil;

public abstract class TempBaseAdapter
  extends BaseAdapter
{
  protected Bitmap getCachedBitmap(String paramString)
  {
    return HQCHApplication.cacheUtil.getCachedBitmap(paramString);
  }
  
  protected Drawable getCachedDrawable(String paramString)
  {
    return HQCHApplication.cacheUtil.getCachedDrawable(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TempBaseAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */