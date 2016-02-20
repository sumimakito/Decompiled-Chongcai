package com.sina.weibo.sdk.cmd;

import com.sina.weibo.sdk.exception.WeiboException;
import org.json.JSONException;
import org.json.JSONObject;

class BaseCmd
{
  private long mNotificationDelay;
  private String mNotificationText;
  private String mNotificationTitle;
  
  public BaseCmd() {}
  
  public BaseCmd(String paramString)
    throws WeiboException
  {
    initFromJsonStr(paramString);
  }
  
  public BaseCmd(JSONObject paramJSONObject)
  {
    initFromJsonObj(paramJSONObject);
  }
  
  public long getNotificationDelay()
  {
    return this.mNotificationDelay;
  }
  
  public String getNotificationText()
  {
    return this.mNotificationText;
  }
  
  public String getNotificationTitle()
  {
    return this.mNotificationTitle;
  }
  
  protected void initFromJsonObj(JSONObject paramJSONObject)
  {
    this.mNotificationText = paramJSONObject.optString("notification_text");
    this.mNotificationTitle = paramJSONObject.optString("notification_title");
    this.mNotificationDelay = paramJSONObject.optLong("notification_delay");
  }
  
  protected void initFromJsonStr(String paramString)
    throws WeiboException
  {
    if (paramString == null) {
      return;
    }
    try
    {
      paramString = new JSONObject(paramString);
      try
      {
        initFromJsonObj(paramString);
        return;
      }
      catch (JSONException paramString) {}
    }
    catch (JSONException paramString)
    {
      for (;;) {}
    }
    paramString.printStackTrace();
    throw new WeiboException("pase cmd has error !!!");
  }
  
  public void setNotificationDelay(long paramLong)
  {
    this.mNotificationDelay = paramLong;
  }
  
  public void setNotificationText(String paramString)
  {
    this.mNotificationText = paramString;
  }
  
  public void setNotificationTitle(String paramString)
  {
    this.mNotificationTitle = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/cmd/BaseCmd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */