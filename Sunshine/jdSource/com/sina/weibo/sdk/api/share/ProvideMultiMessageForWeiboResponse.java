package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.api.WeiboMultiMessage;

public class ProvideMultiMessageForWeiboResponse
  extends BaseResponse
{
  public WeiboMultiMessage multiMessage;
  
  public ProvideMultiMessageForWeiboResponse() {}
  
  public ProvideMultiMessageForWeiboResponse(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }
  
  final boolean check(Context paramContext, VersionCheckHandler paramVersionCheckHandler)
  {
    if (this.multiMessage == null) {}
    while ((paramVersionCheckHandler != null) && (!paramVersionCheckHandler.checkResponse(paramContext, this.reqPackageName, this.multiMessage))) {
      return false;
    }
    return this.multiMessage.checkArgs();
  }
  
  public void fromBundle(Bundle paramBundle)
  {
    super.fromBundle(paramBundle);
    this.multiMessage = new WeiboMultiMessage(paramBundle);
  }
  
  public int getType()
  {
    return 2;
  }
  
  public void toBundle(Bundle paramBundle)
  {
    super.toBundle(paramBundle);
    paramBundle.putAll(this.multiMessage.toBundle(paramBundle));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */