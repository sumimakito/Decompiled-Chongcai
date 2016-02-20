package cn.apppark.mcd.vo.buy;

import android.annotation.SuppressLint;
import cn.apppark.mcd.util.more.StringUtil;
import java.util.ArrayList;

public class BuyProductVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String commentCount;
  private String createDate;
  private String detail;
  private boolean havaStore = true;
  private String id;
  private String isFavorite;
  private String isRebate;
  private int isStandard;
  private String mainPara;
  private String number;
  private String oriPrice;
  private String picPath;
  private String price;
  private String priceRange;
  private String productId;
  private String productPic;
  private int productSum;
  private String reason;
  private String retFlag;
  private String retMsg;
  private String soldCount;
  private BuyProductStandardVo standard;
  private String standardId;
  private ArrayList<BuyProductRelationVo> standardRelation;
  private String standardValue;
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
  
  public String getCreateDate()
  {
    return this.createDate;
  }
  
  public String getDetail()
  {
    return this.detail;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getIsFavorite()
  {
    return this.isFavorite;
  }
  
  public String getIsRebate()
  {
    return this.isRebate;
  }
  
  public int getIsStandard()
  {
    return this.isStandard;
  }
  
  public String getMainPara()
  {
    return this.mainPara;
  }
  
  public String getNumber()
  {
    return this.number;
  }
  
  public String getOriPrice()
  {
    return this.oriPrice;
  }
  
  public String getPicPath()
  {
    return this.picPath;
  }
  
  @SuppressLint({"DefaultLocale"})
  public String getPrice()
  {
    if (StringUtil.isNotNull(this.price)) {
      return String.format("%.2f", new Object[] { Float.valueOf(Float.parseFloat(this.price)) });
    }
    return this.price;
  }
  
  public String getPriceRange()
  {
    return this.priceRange;
  }
  
  public String getProductId()
  {
    return this.productId;
  }
  
  public String getProductPic()
  {
    return this.productPic;
  }
  
  public int getProductSum()
  {
    return this.productSum;
  }
  
  public String getReason()
  {
    return this.reason;
  }
  
  public String getRetFlag()
  {
    return this.retFlag;
  }
  
  public String getRetMsg()
  {
    return this.retMsg;
  }
  
  public String getSoldCount()
  {
    return this.soldCount;
  }
  
  public BuyProductStandardVo getStandard()
  {
    return this.standard;
  }
  
  public String getStandardId()
  {
    return this.standardId;
  }
  
  public ArrayList<BuyProductRelationVo> getStandardRelation()
  {
    return this.standardRelation;
  }
  
  public String getStandardValue()
  {
    return this.standardValue;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public boolean isHavaStore()
  {
    return this.havaStore;
  }
  
  public void setCommentCount(String paramString)
  {
    this.commentCount = paramString;
  }
  
  public void setCreateDate(String paramString)
  {
    this.createDate = paramString;
  }
  
  public void setDetail(String paramString)
  {
    this.detail = paramString;
  }
  
  public void setHavaStore(boolean paramBoolean)
  {
    this.havaStore = paramBoolean;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setIsFavorite(String paramString)
  {
    this.isFavorite = paramString;
  }
  
  public void setIsRebate(String paramString)
  {
    this.isRebate = paramString;
  }
  
  public void setIsStandard(int paramInt)
  {
    this.isStandard = paramInt;
  }
  
  public void setMainPara(String paramString)
  {
    this.mainPara = paramString;
  }
  
  public void setNumber(String paramString)
  {
    this.number = paramString;
  }
  
  public void setOriPrice(String paramString)
  {
    this.oriPrice = paramString;
  }
  
  public void setPicPath(String paramString)
  {
    this.picPath = paramString;
  }
  
  public void setPrice(String paramString)
  {
    this.price = paramString;
  }
  
  public void setPriceRange(String paramString)
  {
    this.priceRange = paramString;
  }
  
  public void setProductId(String paramString)
  {
    this.productId = paramString;
  }
  
  public void setProductPic(String paramString)
  {
    this.productPic = paramString;
  }
  
  public void setProductSum(int paramInt)
  {
    this.productSum = paramInt;
  }
  
  public void setReason(String paramString)
  {
    this.reason = paramString;
  }
  
  public void setRetFlag(String paramString)
  {
    this.retFlag = paramString;
  }
  
  public void setRetMsg(String paramString)
  {
    this.retMsg = paramString;
  }
  
  public void setSoldCount(String paramString)
  {
    this.soldCount = paramString;
  }
  
  public void setStandard(BuyProductStandardVo paramBuyProductStandardVo)
  {
    this.standard = paramBuyProductStandardVo;
  }
  
  public void setStandardId(String paramString)
  {
    this.standardId = paramString;
  }
  
  public void setStandardRelation(ArrayList<BuyProductRelationVo> paramArrayList)
  {
    this.standardRelation = paramArrayList;
  }
  
  public void setStandardValue(String paramString)
  {
    this.standardValue = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public String toString()
  {
    return "BuyProductVo [retFlag=" + this.retFlag + ", retMsg=" + this.retMsg + ", id=" + this.id + ", productId=" + this.productId + ", title=" + this.title + ", price=" + this.price + ", oriPrice=" + this.oriPrice + ", isRebate=" + this.isRebate + ", detail=" + this.detail + ", mainPara=" + this.mainPara + ", type=" + this.type + ", soldCount=" + this.soldCount + ", createDate=" + this.createDate + ", picPath=" + this.picPath + ", isFavorite=" + this.isFavorite + ", commentCount=" + this.commentCount + ", number=" + this.number + ", productPic=" + this.productPic + ", productSum=" + this.productSum + ", standardValue=" + this.standardValue + ", standardId=" + this.standardId + ", isStandard=" + this.isStandard + ", standard=" + this.standard + ", standardRelation=" + this.standardRelation + ", priceRange=" + this.priceRange + ", havaStore=" + this.havaStore + ", reason=" + this.reason + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyProductVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */