package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.WeiboAppManager.WeiboInfo;

public class ProvideMessageForWeiboRequest
  extends BaseRequest
{
  public ProvideMessageForWeiboRequest() {}
  
  public ProvideMessageForWeiboRequest(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }
  
  final boolean check(Context paramContext, WeiboAppManager.WeiboInfo paramWeiboInfo, VersionCheckHandler paramVersionCheckHandler)
  {
    return true;
  }
  
  public int getType()
  {
    return 2;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/share/ProvideMessageForWeiboRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */