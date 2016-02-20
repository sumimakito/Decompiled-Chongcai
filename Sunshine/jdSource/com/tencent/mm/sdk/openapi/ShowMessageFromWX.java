package com.tencent.mm.sdk.openapi;

import android.os.Bundle;

public class ShowMessageFromWX
{
  public static class Req
    extends BaseReq
  {
    public WXMediaMessage message;
    
    public Req() {}
    
    public Req(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    final boolean checkArgs()
    {
      if (this.message == null) {
        return false;
      }
      return this.message.checkArgs();
    }
    
    public void fromBundle(Bundle paramBundle)
    {
      super.fromBundle(paramBundle);
      this.message = WXMediaMessage.Builder.fromBundle(paramBundle);
    }
    
    public int getType()
    {
      return 4;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      Bundle localBundle = WXMediaMessage.Builder.toBundle(this.message);
      super.toBundle(localBundle);
      paramBundle.putAll(localBundle);
    }
  }
  
  public static class Resp
    extends BaseResp
  {
    public Resp() {}
    
    public Resp(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    final boolean checkArgs()
    {
      return true;
    }
    
    public int getType()
    {
      return 4;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/openapi/ShowMessageFromWX.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */