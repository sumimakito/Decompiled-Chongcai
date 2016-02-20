package cn.apppark.mcd.vo.dyn;

import android.annotation.SuppressLint;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.BaseReturnVo;
import java.io.Serializable;

public class DynProductReturnVo
  extends BaseReturnVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String commentCount;
  private String galleryPic;
  private String id;
  private String isRebate;
  private String oriPrice;
  private int picHeight;
  private String picPath;
  private int picWidth;
  private String price;
  private String soldCount;
  private String title;
  private String type;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getCommentCount()
  {
    return this.commentCount;
  }
  
  public String getGalleryPic()
  {
    return this.galleryPic;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getIsRebate()
  {
    return this.isRebate;
  }
  
  public String getOriPrice()
  {
    if (StringUtil.isNotNull(this.oriPrice)) {
      return String.format("%.2f", new Object[] { Float.valueOf(Float.parseFloat(this.oriPrice)) });
    }
    return this.oriPrice;
  }
  
  public int getPicHeight()
  {
    return this.picHeight;
  }
  
  public String getPicPath()
  {
    return this.picPath;
  }
  
  public int getPicWidth()
  {
    return this.picWidth;
  }
  
  @SuppressLint({"DefaultLocale"})
  public String getPrice()
  {
    if (StringUtil.isNotNull(this.price)) {
      return String.format("%.2f", new Object[] { Float.valueOf(Float.parseFloat(this.price)) });
    }
    return this.price;
  }
  
  public String getSoldCount()
  {
    return this.soldCount;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public void setCommentCount(String paramString)
  {
    this.commentCount = paramString;
  }
  
  public void setGalleryPic(String paramString)
  {
    this.galleryPic = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setIsRebate(String paramString)
  {
    this.isRebate = paramString;
  }
  
  public void setOriPrice(String paramString)
  {
    this.oriPrice = paramString;
  }
  
  public void setPicHeight(int paramInt)
  {
    this.picHeight = paramInt;
  }
  
  public void setPicPath(String paramString)
  {
    this.picPath = paramString;
  }
  
  public void setPicWidth(int paramInt)
  {
    this.picWidth = paramInt;
  }
  
  public void setPrice(String paramString)
  {
    this.price = paramString;
  }
  
  public void setSoldCount(String paramString)
  {
    this.soldCount = paramString;
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/DynProductReturnVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */