package com.sina.weibo.sdk.cmd;

import android.text.TextUtils;
import com.sina.weibo.sdk.exception.WeiboException;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

class AppInstallCmd
  extends BaseCmd
{
  private List<String> appPackages;
  private String appSign;
  private long appVersion;
  private String downloadUrl;
  
  public AppInstallCmd() {}
  
  public AppInstallCmd(String paramString)
    throws WeiboException
  {
    super(paramString);
  }
  
  public AppInstallCmd(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
  }
  
  public List<String> getAppPackage()
  {
    return this.appPackages;
  }
  
  public String getAppSign()
  {
    return this.appSign;
  }
  
  public long getAppVersion()
  {
    return this.appVersion;
  }
  
  public String getDownloadUrl()
  {
    return this.downloadUrl;
  }
  
  public void initFromJsonObj(JSONObject paramJSONObject)
  {
    super.initFromJsonObj(paramJSONObject);
    this.downloadUrl = paramJSONObject.optString("download_url");
    String str = paramJSONObject.optString("app_package");
    if (!TextUtils.isEmpty(str)) {
      this.appPackages = Arrays.asList(str.split("\\|"));
    }
    this.appSign = paramJSONObject.optString("app_sign");
    this.appVersion = paramJSONObject.optLong("app_version");
  }
  
  public void setAppPackage(List<String> paramList)
  {
    this.appPackages = paramList;
  }
  
  public void setAppSign(String paramString)
  {
    this.appSign = paramString;
  }
  
  public void setAppVersion(long paramLong)
  {
    this.appVersion = paramLong;
  }
  
  public void setDownloadUrl(String paramString)
  {
    this.downloadUrl = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/cmd/AppInstallCmd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */