package com.nostra13.universalimageloader.core.decode;

import com.nostra13.universalimageloader.core.assist.ImageSize;

public class BaseImageDecoder$ImageFileInfo
{
  public final BaseImageDecoder.ExifInfo exif;
  public final ImageSize imageSize;
  
  protected BaseImageDecoder$ImageFileInfo(ImageSize paramImageSize, BaseImageDecoder.ExifInfo paramExifInfo)
  {
    this.imageSize = paramImageSize;
    this.exif = paramExifInfo;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */