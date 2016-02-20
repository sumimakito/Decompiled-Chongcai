package com.sina.weibo.sdk.cmd;

import com.sina.weibo.sdk.exception.WeiboException;
import org.json.JSONObject;

class AppInvokeCmd
  extends BaseCmd
{
  private String appPackage;
  private String scheme;
  private String url;
  
  public AppInvokeCmd() {}
  
  public AppInvokeCmd(String paramString)
    throws WeiboException
  {
    super(paramString);
  }
  
  public AppInvokeCmd(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
  }
  
  public String getAppPackage()
  {
    return this.appPackage;
  }
  
  public String getScheme()
  {
    return this.scheme;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public void initFromJsonObj(JSONObject paramJSONObject)
  {
    super.initFromJsonObj(paramJSONObject);
    this.appPackage = paramJSONObject.optString("package");
    this.scheme = paramJSONObject.optString("scheme");
    this.url = paramJSONObject.optString("url");
  }
  
  public void setAppPackage(String paramString)
  {
    this.appPackage = paramString;
  }
  
  public void setScheme(String paramString)
  {
    this.scheme = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/cmd/AppInvokeCmd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */