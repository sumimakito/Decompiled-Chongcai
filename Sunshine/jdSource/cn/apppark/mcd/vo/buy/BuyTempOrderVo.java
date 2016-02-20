package cn.apppark.mcd.vo.buy;

import java.util.ArrayList;

public class BuyTempOrderVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String clinchTime;
  private String groupId;
  private String id;
  private String isPayInline;
  private String isPayMoney;
  private String isSelPayOnLine = null;
  private String number;
  private ArrayList<BuyProductVo> orderItem;
  private String picPath;
  private String price;
  private String remark;
  private String status;
  private String title;
  private String totalNumber;
  private String totalPrice;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getClinchTime()
  {
    return this.clinchTime;
  }
  
  public String getGroupId()
  {
    return this.groupId;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getIsPayInline()
  {
    return this.isPayInline;
  }
  
  public String getIsPayMoney()
  {
    return this.isPayMoney;
  }
  
  public String getIsSelPayOnLine()
  {
    if (this.isSelPayOnLine == null) {
      if (!"1".equals(this.isPayInline)) {
        break label30;
      }
    }
    label30:
    for (this.isSelPayOnLine = "1";; this.isSelPayOnLine = "0") {
      return this.isSelPayOnLine;
    }
  }
  
  public String getNumber()
  {
    return this.number;
  }
  
  public ArrayList<BuyProductVo> getOrderItem()
  {
    return this.orderItem;
  }
  
  public String getPicPath()
  {
    return this.picPath;
  }
  
  public String getPrice()
  {
    return this.price;
  }
  
  public String getRemark()
  {
    if (this.remark == null) {
      return "";
    }
    return this.remark;
  }
  
  public String getStatus()
  {
    return this.status;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getTotalNumber()
  {
    return this.totalNumber;
  }
  
  public String getTotalPrice()
  {
    return this.totalPrice;
  }
  
  public void setClinchTime(String paramString)
  {
    this.clinchTime = paramString;
  }
  
  public void setGroupId(String paramString)
  {
    this.groupId = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setIsPayInline(String paramString)
  {
    this.isPayInline = paramString;
  }
  
  public void setIsPayMoney(String paramString)
  {
    this.isPayMoney = paramString;
  }
  
  public void setIsSelPayOnLine(String paramString)
  {
    this.isSelPayOnLine = paramString;
  }
  
  public void setNumber(String paramString)
  {
    this.number = paramString;
  }
  
  public void setOrderItem(ArrayList<BuyProductVo> paramArrayList)
  {
    this.orderItem = paramArrayList;
  }
  
  public void setPicPath(String paramString)
  {
    this.picPath = paramString;
  }
  
  public void setPrice(String paramString)
  {
    this.price = paramString;
  }
  
  public void setRemark(String paramString)
  {
    this.remark = paramString;
  }
  
  public void setStatus(String paramString)
  {
    this.status = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setTotalNumber(String paramString)
  {
    this.totalNumber = paramString;
  }
  
  public void setTotalPrice(String paramString)
  {
    this.totalPrice = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyTempOrderVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */