package cn.apppark.mcd.util.imge;

import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import java.io.File;
import o;

public class ImgLoad2Cache
{
  private String baseSDCachePath = HQCHApplication.getInstance().getResourceDir() + File.separator + YYGYContants.IMAGE_CACHE_PATH + File.separator;
  private ImgLoad2Cache.DownImgEnd downImgEnd;
  private boolean isSuccess = false;
  private int maxTime = 1;
  private int tryTime = 0;
  
  public ImgLoad2Cache(ImgLoad2Cache.DownImgEnd paramDownImgEnd)
  {
    this.downImgEnd = paramDownImgEnd;
  }
  
  public ImgLoad2Cache.DownImgEnd getDownImgEnd()
  {
    return this.downImgEnd;
  }
  
  public int getMaxTime()
  {
    return this.maxTime;
  }
  
  public int getTryTime()
  {
    return this.tryTime;
  }
  
  public boolean isSuccess()
  {
    return this.isSuccess;
  }
  
  public void loadPic(String paramString)
  {
    if (new File(YYGYContants.baseImgCachePath + PublicUtil.getMD5Str(paramString)).exists())
    {
      if (this.downImgEnd != null) {
        this.downImgEnd.downImgEnd(true);
      }
      return;
    }
    new Thread(new o(this, paramString)).start();
  }
  
  public void setDownImgEnd(ImgLoad2Cache.DownImgEnd paramDownImgEnd)
  {
    this.downImgEnd = paramDownImgEnd;
  }
  
  public void setMaxTime(int paramInt)
  {
    this.maxTime = paramInt;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    this.isSuccess = paramBoolean;
  }
  
  public void setTryTime(int paramInt)
  {
    this.tryTime = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/imge/ImgLoad2Cache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */