package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;

public class SendMessageToWeiboResponse
  extends BaseResponse
{
  public SendMessageToWeiboResponse() {}
  
  public SendMessageToWeiboResponse(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }
  
  final boolean check(Context paramContext, VersionCheckHandler paramVersionCheckHandler)
  {
    return true;
  }
  
  public int getType()
  {
    return 1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/share/SendMessageToWeiboResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */