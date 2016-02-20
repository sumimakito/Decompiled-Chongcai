package cn.apppark.mcd.widget;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.RoundBitmapDisplayer;
import com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer;

public class RemoteImageView
  extends ImageView
{
  private int defaultResourceId = 2130837617;
  private boolean isRound = false;
  private int mCorner = 0;
  private int mRadius = 100;
  
  public RemoteImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public RemoteImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RemoteImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private DisplayImageOptions getCornerOption()
  {
    return new DisplayImageOptions.Builder().showImageOnLoading(this.defaultResourceId).showImageOnFail(this.defaultResourceId).cacheInMemory(true).cacheOnDisk(true).bitmapConfig(Bitmap.Config.RGB_565).imageScaleType(ImageScaleType.NONE).displayer(new RoundedBitmapDisplayer(this.mCorner)).build();
  }
  
  private DisplayImageOptions getNormalOption()
  {
    return new DisplayImageOptions.Builder().showImageOnLoading(this.defaultResourceId).showImageOnFail(this.defaultResourceId).cacheInMemory(true).cacheOnDisk(true).bitmapConfig(Bitmap.Config.RGB_565).imageScaleType(ImageScaleType.EXACTLY).build();
  }
  
  private DisplayImageOptions getRoundOption()
  {
    return new DisplayImageOptions.Builder().showImageOnLoading(this.defaultResourceId).showImageForEmptyUri(this.defaultResourceId).showImageOnFail(2130837771).cacheInMemory(true).cacheOnDisk(true).considerExifParams(true).displayer(new RoundBitmapDisplayer(this.mRadius)).build();
  }
  
  public void setDefaultImage(Integer paramInteger)
  {
    this.defaultResourceId = paramInteger.intValue();
  }
  
  public void setImageUrl(String paramString)
  {
    DisplayImageOptions localDisplayImageOptions;
    if (this.isRound) {
      localDisplayImageOptions = getRoundOption();
    }
    for (;;)
    {
      ImageLoader.getInstance().displayImage(paramString, this, localDisplayImageOptions);
      return;
      if (this.mCorner > 0) {
        localDisplayImageOptions = getCornerOption();
      } else {
        localDisplayImageOptions = getNormalOption();
      }
    }
  }
  
  public void setImageUrlCorner(String paramString, int paramInt)
  {
    this.mCorner = paramInt;
    setImageUrl(paramString);
  }
  
  public void setImageUrlRound(String paramString, int paramInt)
  {
    this.isRound = true;
    this.mRadius = paramInt;
    setImageUrl(paramString);
  }
  
  public void setPixels(int paramInt)
  {
    this.mRadius = paramInt;
  }
  
  public void setRound(boolean paramBoolean)
  {
    this.isRound = paramBoolean;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/RemoteImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */