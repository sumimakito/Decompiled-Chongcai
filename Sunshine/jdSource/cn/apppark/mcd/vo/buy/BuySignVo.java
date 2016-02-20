package cn.apppark.mcd.vo.buy;

public class BuySignVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String retFlag;
  private String retMsg;
  private String sign;
  private String signStr;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getRetFlag()
  {
    return this.retFlag;
  }
  
  public String getRetMsg()
  {
    return this.retMsg;
  }
  
  public String getSign()
  {
    return this.sign;
  }
  
  public String getSignStr()
  {
    return this.signStr;
  }
  
  public void setRetFlag(String paramString)
  {
    this.retFlag = paramString;
  }
  
  public void setRetMsg(String paramString)
  {
    this.retMsg = paramString;
  }
  
  public void setSign(String paramString)
  {
    this.sign = paramString;
  }
  
  public void setSignStr(String paramString)
  {
    this.signStr = paramString;
  }
  
  public String toString()
  {
    return "-----------------BuySignVo [retMsg=" + this.retMsg + ", retFlag=" + this.retFlag + ", sign=" + this.sign + ", signStr=" + this.signStr + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuySignVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */