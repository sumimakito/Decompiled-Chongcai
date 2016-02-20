package cn.apppark.mcd.vo.dyn;

import cn.apppark.mcd.vo.base.BaseReturnVo;

public class DynLoginReturnVo
  extends BaseReturnVo
{
  private String retFlag;
  private String userId;
  private String userPicUrl;
  private String usernikeName;
  
  public String getRetFlag()
  {
    return this.retFlag;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public String getUserPicUrl()
  {
    return this.userPicUrl;
  }
  
  public String getUsernikeName()
  {
    return this.usernikeName;
  }
  
  public void setRetFlag(String paramString)
  {
    this.retFlag = paramString;
  }
  
  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
  
  public void setUserPicUrl(String paramString)
  {
    this.userPicUrl = paramString;
  }
  
  public void setUsernikeName(String paramString)
  {
    this.usernikeName = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/dyn/DynLoginReturnVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */