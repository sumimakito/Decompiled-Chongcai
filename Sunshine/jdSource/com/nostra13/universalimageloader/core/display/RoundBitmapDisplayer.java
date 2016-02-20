package com.nostra13.universalimageloader.core.display;

import android.graphics.Bitmap;
import cn.apppark.mcd.util.imge.ImgUtil;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public class RoundBitmapDisplayer
  implements BitmapDisplayer
{
  protected final int cornerRadius;
  protected final int margin;
  
  public RoundBitmapDisplayer(int paramInt)
  {
    this(paramInt, 0);
  }
  
  public RoundBitmapDisplayer(int paramInt1, int paramInt2)
  {
    this.cornerRadius = paramInt1;
    this.margin = paramInt2;
  }
  
  public void display(Bitmap paramBitmap, ImageAware paramImageAware, LoadedFrom paramLoadedFrom)
  {
    if (!(paramImageAware instanceof ImageViewAware)) {
      throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
    paramImageAware.setImageBitmap(ImgUtil.getCroppedRoundBitmap(paramBitmap, this.cornerRadius));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/display/RoundBitmapDisplayer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */