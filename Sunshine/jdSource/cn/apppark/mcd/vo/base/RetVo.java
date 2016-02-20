package cn.apppark.mcd.vo.base;

public class RetVo
  extends BaseReturnVo
{
  private boolean isSuccess;
  private String memberStatus;
  private String needImageCode;
  private int retFlag;
  private String retMsg;
  private String smsEnabled;
  private int waitTime;
  
  public String getMemberStatus()
  {
    return this.memberStatus;
  }
  
  public String getNeedImageCode()
  {
    return this.needImageCode;
  }
  
  public int getRetFlag()
  {
    return this.retFlag;
  }
  
  public String getRetMsg()
  {
    return this.retMsg;
  }
  
  public String getSmsEnabled()
  {
    return this.smsEnabled;
  }
  
  public int getWaitTime()
  {
    return this.waitTime;
  }
  
  public boolean isSuccess()
  {
    return this.isSuccess;
  }
  
  public void setMemberStatus(String paramString)
  {
    this.memberStatus = paramString;
  }
  
  public void setNeedImageCode(String paramString)
  {
    this.needImageCode = paramString;
  }
  
  public void setRetFlag(int paramInt)
  {
    this.retFlag = paramInt;
  }
  
  public void setRetMsg(String paramString)
  {
    this.retMsg = paramString;
  }
  
  public void setSmsEnabled(String paramString)
  {
    this.smsEnabled = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    this.isSuccess = paramBoolean;
  }
  
  public void setWaitTime(int paramInt)
  {
    this.waitTime = paramInt;
  }
  
  public String toString()
  {
    return "RetVo [isSuccess=" + this.isSuccess + ", retFlag=" + this.retFlag + ", retMsg=" + this.retMsg + ", smsEnabled=" + this.smsEnabled + ", needImageCode=" + this.needImageCode + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/base/RetVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */