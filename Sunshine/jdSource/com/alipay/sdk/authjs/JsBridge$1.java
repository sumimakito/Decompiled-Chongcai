package com.alipay.sdk.authjs;

import org.json.JSONException;

class JsBridge$1
  implements Runnable
{
  JsBridge$1(JsBridge paramJsBridge, CallInfo paramCallInfo) {}
  
  public void run()
  {
    CallInfo.CallError localCallError = JsBridge.a(this.b, this.a);
    if (localCallError != CallInfo.CallError.a) {}
    try
    {
      JsBridge.a(this.b, this.a.a(), localCallError);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/authjs/JsBridge$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */