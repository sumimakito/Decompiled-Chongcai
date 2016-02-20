package com.nostra13.universalimageloader.core.listener;

import android.graphics.Bitmap;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.FailReason;

public abstract interface ImageLoadingListener
{
  public abstract void onLoadingCancelled(String paramString, View paramView);
  
  public abstract void onLoadingComplete(String paramString, View paramView, Bitmap paramBitmap);
  
  public abstract void onLoadingFailed(String paramString, View paramView, FailReason paramFailReason);
  
  public abstract void onLoadingStarted(String paramString, View paramView);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/listener/ImageLoadingListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */