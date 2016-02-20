package com.alipay.mobilesecuritysdk.datainfo;

import com.alipay.mobilesecuritysdk.util.CommonUtils;

public class WifiCollectInfo
{
  private String mbssid;
  private boolean miscurrent = false;
  private int mlevel;
  private String mssid;
  private String time;
  
  public String getMbssid()
  {
    return this.mbssid;
  }
  
  public int getMlevel()
  {
    return this.mlevel;
  }
  
  public String getMssid()
  {
    return this.mssid;
  }
  
  public String getTime()
  {
    return this.time;
  }
  
  public boolean isMiscurrent()
  {
    return this.miscurrent;
  }
  
  public void setMbssid(String paramString)
  {
    this.mbssid = paramString;
  }
  
  public void setMiscurrent(boolean paramBoolean)
  {
    this.miscurrent = paramBoolean;
  }
  
  public void setMlevel(int paramInt)
  {
    this.mlevel = paramInt;
  }
  
  public void setMssid(String paramString)
  {
    this.mssid = paramString;
  }
  
  public void setTime(String paramString)
  {
    this.time = paramString;
  }
  
  public boolean validate()
  {
    return (!CommonUtils.isBlank(this.mbssid)) && (!CommonUtils.isBlank(this.mssid));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/mobilesecuritysdk/datainfo/WifiCollectInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */