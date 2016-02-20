package cn.apppark.mcd.vo.buy;

import android.annotation.SuppressLint;
import cn.apppark.mcd.util.more.StringUtil;
import java.util.ArrayList;

public class BuyOrderVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String clinchTime;
  private String format;
  private String formatId;
  private String groupId;
  private String id;
  private String ids;
  private String isAlipay;
  private boolean isSel = true;
  private boolean isShowEdit = false;
  private String logId;
  private String logNum;
  private String logisticUrl;
  private String msg;
  private String note;
  private String number;
  private String oldNumber;
  private ArrayList<BuyProductVo> orderItem;
  private String orderNumber;
  private String picPath;
  private String price;
  private String productId;
  private String reason;
  private String standardId;
  private String standardValue;
  private String statis;
  private String status;
  private String title;
  private String totalNumber;
  private String totalPrice;
  private int type;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getClinchTime()
  {
    return this.clinchTime;
  }
  
  public String getFormat()
  {
    return this.format;
  }
  
  public String getFormatId()
  {
    return this.formatId;
  }
  
  public String getGroupId()
  {
    return this.groupId;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getIds()
  {
    return this.ids;
  }
  
  public String getIsAlipay()
  {
    return this.isAlipay;
  }
  
  public String getLogId()
  {
    return this.logId;
  }
  
  public String getLogNum()
  {
    return this.logNum;
  }
  
  public String getLogisticUrl()
  {
    return this.logisticUrl;
  }
  
  public String getMsg()
  {
    return this.msg;
  }
  
  public String getNote()
  {
    return this.note;
  }
  
  public String getNumber()
  {
    return this.number;
  }
  
  public String getOldNumber()
  {
    return this.oldNumber;
  }
  
  public ArrayList<BuyProductVo> getOrderItem()
  {
    return this.orderItem;
  }
  
  public String getOrderNumber()
  {
    return this.orderNumber;
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
  
  public String getProductId()
  {
    return this.productId;
  }
  
  public String getReason()
  {
    return this.reason;
  }
  
  public String getStandardId()
  {
    return this.standardId;
  }
  
  public String getStandardValue()
  {
    return this.standardValue;
  }
  
  public String getStatis()
  {
    return this.statis;
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
  
  @SuppressLint({"DefaultLocale"})
  public String getTotalPrice()
  {
    if (StringUtil.isNotNull(this.totalPrice)) {
      return String.format("%.2f", new Object[] { Float.valueOf(Float.parseFloat(this.totalPrice)) });
    }
    return this.price;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public boolean isSel()
  {
    if ("-1".equals(this.status)) {
      return false;
    }
    return this.isSel;
  }
  
  public boolean isShowEdit()
  {
    return this.isShowEdit;
  }
  
  public void setClinchTime(String paramString)
  {
    this.clinchTime = paramString;
  }
  
  public void setFormat(String paramString)
  {
    this.format = paramString;
  }
  
  public void setFormatId(String paramString)
  {
    this.formatId = paramString;
  }
  
  public void setGroupId(String paramString)
  {
    this.groupId = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setIds(String paramString)
  {
    this.ids = paramString;
  }
  
  public void setIsAlipay(String paramString)
  {
    this.isAlipay = paramString;
  }
  
  public void setLogId(String paramString)
  {
    this.logId = paramString;
  }
  
  public void setLogNum(String paramString)
  {
    this.logNum = paramString;
  }
  
  public void setLogisticUrl(String paramString)
  {
    this.logisticUrl = paramString;
  }
  
  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }
  
  public void setNote(String paramString)
  {
    this.note = paramString;
  }
  
  public void setNumber(String paramString)
  {
    this.number = paramString;
  }
  
  public void setOldNumber(String paramString)
  {
    this.oldNumber = paramString;
  }
  
  public void setOrderItem(ArrayList<BuyProductVo> paramArrayList)
  {
    this.orderItem = paramArrayList;
  }
  
  public void setOrderNumber(String paramString)
  {
    this.orderNumber = paramString;
  }
  
  public void setPicPath(String paramString)
  {
    this.picPath = paramString;
  }
  
  public void setPrice(String paramString)
  {
    this.price = paramString;
  }
  
  public void setProductId(String paramString)
  {
    this.productId = paramString;
  }
  
  public void setReason(String paramString)
  {
    this.reason = paramString;
  }
  
  public void setSel(boolean paramBoolean)
  {
    this.isSel = paramBoolean;
  }
  
  public void setShowEdit(boolean paramBoolean)
  {
    this.isShowEdit = paramBoolean;
  }
  
  public void setStandardId(String paramString)
  {
    this.standardId = paramString;
  }
  
  public void setStandardValue(String paramString)
  {
    this.standardValue = paramString;
  }
  
  public void setStatis(String paramString)
  {
    this.statis = paramString;
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
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyOrderVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */