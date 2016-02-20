package com.nostra13.universalimageloader.core.decode;

public class BaseImageDecoder$ExifInfo
{
  public final boolean flipHorizontal;
  public final int rotation;
  
  protected BaseImageDecoder$ExifInfo()
  {
    this.rotation = 0;
    this.flipHorizontal = false;
  }
  
  protected BaseImageDecoder$ExifInfo(int paramInt, boolean paramBoolean)
  {
    this.rotation = paramInt;
    this.flipHorizontal = paramBoolean;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */