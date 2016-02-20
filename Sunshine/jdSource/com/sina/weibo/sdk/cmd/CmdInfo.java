package com.sina.weibo.sdk.cmd;

import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.utils.LogUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class CmdInfo
{
  private static final String TAG = BaseCmd.class.getName();
  private int frequency;
  private List<AppInstallCmd> mInstallCmds;
  private List<AppInvokeCmd> mInvokeCmds;
  
  public CmdInfo(String paramString)
    throws WeiboException
  {
    initFromJsonStr(paramString);
  }
  
  private void initFromJsonStr(String paramString)
    throws WeiboException
  {
    if (paramString == null) {}
    do
    {
      return;
      try
      {
        paramString = new JSONObject(paramString);
        if ((paramString.has("error")) || (paramString.has("error_code")))
        {
          LogUtil.w(TAG, "load cmd api has error !!!");
          throw new WeiboException("load cmd api has error !!!");
        }
      }
      catch (JSONException paramString)
      {
        LogUtil.d(TAG, "parse NotificationInfo error: " + paramString.getMessage());
        return;
      }
      paramString = paramString.optJSONObject("cmd");
    } while (paramString == null);
    this.frequency = paramString.optInt("frequency");
    Object localObject = paramString.optJSONArray("app_install");
    int i;
    if (localObject != null)
    {
      this.mInstallCmds = new ArrayList();
      i = 0;
    }
    for (;;)
    {
      if (i >= ((JSONArray)localObject).length())
      {
        paramString = paramString.optJSONArray("app_invoke");
        if (paramString == null) {
          break;
        }
        this.mInvokeCmds = new ArrayList();
        i = 0;
        while (i < paramString.length())
        {
          localObject = paramString.getJSONObject(i);
          this.mInvokeCmds.add(new AppInvokeCmd((JSONObject)localObject));
          i += 1;
        }
        break;
      }
      JSONObject localJSONObject = ((JSONArray)localObject).getJSONObject(i);
      this.mInstallCmds.add(new AppInstallCmd(localJSONObject));
      i += 1;
    }
  }
  
  public int getFrequency()
  {
    return this.frequency;
  }
  
  public List<AppInstallCmd> getInstallCmds()
  {
    return this.mInstallCmds;
  }
  
  public List<AppInvokeCmd> getInvokeCmds()
  {
    return this.mInvokeCmds;
  }
  
  public void setFrequency(int paramInt)
  {
    this.frequency = paramInt;
  }
  
  public void setInstallCmds(List<AppInstallCmd> paramList)
  {
    this.mInstallCmds = paramList;
  }
  
  public void setInvokeCmds(List<AppInvokeCmd> paramList)
  {
    this.mInvokeCmds = paramList;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/cmd/CmdInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */