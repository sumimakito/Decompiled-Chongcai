package com.nostra13.universalimageloader.core.listener;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.nostra13.universalimageloader.core.ImageLoader;

public class PauseOnScrollListener
  implements AbsListView.OnScrollListener
{
  private final AbsListView.OnScrollListener externalListener;
  private ImageLoader imageLoader;
  private final boolean pauseOnFling;
  private final boolean pauseOnScroll;
  
  public PauseOnScrollListener(ImageLoader paramImageLoader, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramImageLoader, paramBoolean1, paramBoolean2, null);
  }
  
  public PauseOnScrollListener(ImageLoader paramImageLoader, boolean paramBoolean1, boolean paramBoolean2, AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.imageLoader = paramImageLoader;
    this.pauseOnScroll = paramBoolean1;
    this.pauseOnFling = paramBoolean2;
    this.externalListener = paramOnScrollListener;
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.externalListener != null) {
      this.externalListener.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      if (this.externalListener != null) {
        this.externalListener.onScrollStateChanged(paramAbsListView, paramInt);
      }
      return;
      this.imageLoader.resume();
      continue;
      if (this.pauseOnScroll)
      {
        this.imageLoader.pause();
        continue;
        if (this.pauseOnFling) {
          this.imageLoader.pause();
        }
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/listener/PauseOnScrollListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */