package com.tencent.open.utils;

import java.util.ArrayList;

public abstract interface AsynLoadImgBack
{
  public static final int LOAD_IMAGE_COMPLETED = 0;
  public static final int LOAD_IMAGE_IMAGE_FORMAT_ERROR = 3;
  public static final int LOAD_IMAGE_NO_SDCARD = 2;
  public static final int LOAD_IMAGE_PATH_NULL = 1;
  
  public abstract void batchSaved(int paramInt, ArrayList<String> paramArrayList);
  
  public abstract void saved(int paramInt, String paramString);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/AsynLoadImgBack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */