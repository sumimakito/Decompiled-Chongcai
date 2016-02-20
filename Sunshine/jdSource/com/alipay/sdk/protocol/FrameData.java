package com.alipay.sdk.protocol;

import com.alipay.sdk.data.Request;
import com.alipay.sdk.data.Response;
import org.json.JSONObject;

public class FrameData
{
  private Request a;
  private Response b;
  private JSONObject c;
  
  public FrameData(Request paramRequest, Response paramResponse)
  {
    this.a = paramRequest;
    this.b = paramResponse;
  }
  
  public final Request a()
  {
    return this.a;
  }
  
  public void a(JSONObject paramJSONObject)
  {
    this.c = paramJSONObject;
  }
  
  public final Response b()
  {
    return this.b;
  }
  
  public final JSONObject c()
  {
    return this.c;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/protocol/FrameData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */