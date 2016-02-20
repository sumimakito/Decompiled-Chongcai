package cn.apppark.mcd.vo.dyn;

import cn.apppark.mcd.vo.base.BaseReturnVo;
import java.io.Serializable;

public class STogetherReturnVo
  extends BaseReturnVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String distance;
  private String galleryPic;
  private String groupId;
  private String introduce;
  private int picHeight;
  private String picUrl;
  private int picWidth;
  private String title;
  private String type;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getDistance()
  {
    return this.distance;
  }
  
  public String getGalleryPic()
  {
    return this.galleryPic;
  }
  
  public String getGroupId()
  {
    return this.groupId;
  }
  
  public String getIntroduce()
  {
    return this.introduce;
  }
  
  public int getPicHeight()
  {
    return this.picHeight;
  }
  
  public String getPicUrl()
  {
    return this.picUrl;
  }
  
  public int getPicWidth()
  {
    return this.picWidth;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public void setDistance(String paramString)
  {
    this.distance = paramString;
  }
  
  public void setGalleryPic(String paramString)
  {
    this.galleryPic = paramString;
  }
  
  public void setGroupId(String paramString)
  {
    this.groupId = paramString;
  }
  
  public void setIntroduce(String paramString)
  {
    this.introduce = paramString;
  }
  
  public void setPicHeight(int paramInt)
  {
    this.picHeight = paramInt;
  }
  
  public void setPicUrl(String paramString)
  {
    this.picUrl = paramString;
  }
  
  public void setPicWidth(int paramInt)
  {
    this.picWidth = paramInt;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/STogetherReturnVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */