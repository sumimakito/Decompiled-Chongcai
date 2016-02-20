package com.alipay.sdk.authjs;

import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

class JsBridge$2
  extends TimerTask
{
  JsBridge$2(JsBridge paramJsBridge, CallInfo paramCallInfo) {}
  
  public void run()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("toastCallBack", "true");
      CallInfo localCallInfo = new CallInfo("callback");
      localCallInfo.a(this.a.a());
      localCallInfo.a(localJSONObject);
      JsBridge.a(this.b).a(localCallInfo);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/authjs/JsBridge$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */