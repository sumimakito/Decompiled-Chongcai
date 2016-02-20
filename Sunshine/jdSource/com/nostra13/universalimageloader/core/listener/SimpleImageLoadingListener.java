package com.nostra13.universalimageloader.core.listener;

import android.graphics.Bitmap;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.FailReason;

public class SimpleImageLoadingListener
  implements ImageLoadingListener
{
  public void onLoadingCancelled(String paramString, View paramView) {}
  
  public void onLoadingComplete(String paramString, View paramView, Bitmap paramBitmap) {}
  
  public void onLoadingFailed(String paramString, View paramView, FailReason paramFailReason) {}
  
  public void onLoadingStarted(String paramString, View paramView) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */