package cn.apppark.mcd.vo.buy;

public class BuyTempOrderReasonVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String productId;
  private String reason;
  private String standardId;
  
  public static long getSerialversionuid()
  {
    return 1L;
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
  
  public void setProductId(String paramString)
  {
    this.productId = paramString;
  }
  
  public void setReason(String paramString)
  {
    this.reason = paramString;
  }
  
  public void setStandardId(String paramString)
  {
    this.standardId = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyTempOrderReasonVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */