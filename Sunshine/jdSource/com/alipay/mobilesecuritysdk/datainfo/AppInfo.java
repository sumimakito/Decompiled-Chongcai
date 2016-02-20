package com.alipay.mobilesecuritysdk.datainfo;

import com.alipay.mobilesecuritysdk.util.CommonUtils;

public class AppInfo
{
  private String pkeyhash;
  private String pkgName;
  
  public String getPkeyhash()
  {
    return this.pkeyhash;
  }
  
  public String getPkgName()
  {
    return this.pkgName;
  }
  
  public void setPkeyhash(String paramString)
  {
    this.pkeyhash = paramString;
  }
  
  public void setPkgName(String paramString)
  {
    this.pkgName = paramString;
  }
  
  public boolean validate()
  {
    return (!CommonUtils.isBlank(this.pkgName)) && (!CommonUtils.isBlank(this.pkeyhash));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/mobilesecuritysdk/datainfo/AppInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */