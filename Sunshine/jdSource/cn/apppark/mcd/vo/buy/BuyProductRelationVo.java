package cn.apppark.mcd.vo.buy;

import cn.apppark.mcd.vo.base.BaseReturnVo;
import java.io.Serializable;

public class BuyProductRelationVo
  extends BaseReturnVo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private int appId;
  private int firstValueId;
  private String oriPrice;
  private String picUrl;
  private String price;
  private int productId;
  private int secondValueId;
  private int standardId;
  private String stock;
  
  public int getAppId()
  {
    return this.appId;
  }
  
  public int getFirstValueId()
  {
    return this.firstValueId;
  }
  
  public String getOriPrice()
  {
    return this.oriPrice;
  }
  
  public String getPicUrl()
  {
    return this.picUrl;
  }
  
  public String getPrice()
  {
    return this.price;
  }
  
  public int getProductId()
  {
    return this.productId;
  }
  
  public int getSecondValueId()
  {
    return this.secondValueId;
  }
  
  public int getStandardId()
  {
    return this.standardId;
  }
  
  public String getStock()
  {
    return this.stock;
  }
  
  public void setAppId(int paramInt)
  {
    this.appId = paramInt;
  }
  
  public void setFirstValueId(int paramInt)
  {
    this.firstValueId = paramInt;
  }
  
  public void setOriPrice(String paramString)
  {
    this.oriPrice = paramString;
  }
  
  public void setPicUrl(String paramString)
  {
    this.picUrl = paramString;
  }
  
  public void setPrice(String paramString)
  {
    this.price = paramString;
  }
  
  public void setProductId(int paramInt)
  {
    this.productId = paramInt;
  }
  
  public void setSecondValueId(int paramInt)
  {
    this.secondValueId = paramInt;
  }
  
  public void setStandardId(int paramInt)
  {
    this.standardId = paramInt;
  }
  
  public void setStock(String paramString)
  {
    this.stock = paramString;
  }
  
  public String toString()
  {
    return "BuyProductRelationVo [standardId=" + this.standardId + ", appId=" + this.appId + ", productId=" + this.productId + ", firstValueId=" + this.firstValueId + ", secondValueId=" + this.secondValueId + ", stock=" + this.stock + ", picUrl=" + this.picUrl + ", oriPrice=" + this.oriPrice + ", price=" + this.price + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyProductRelationVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */