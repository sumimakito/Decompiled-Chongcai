package com.sina.weibo.sdk.api;

import android.os.Bundle;
import com.sina.weibo.sdk.utils.LogUtil;

public final class WeiboMessage
{
  public BaseMediaObject mediaObject;
  
  public WeiboMessage() {}
  
  public WeiboMessage(Bundle paramBundle)
  {
    toBundle(paramBundle);
  }
  
  public boolean checkArgs()
  {
    if (this.mediaObject == null)
    {
      LogUtil.e("Weibo.WeiboMessage", "checkArgs fail, mediaObject is null");
      return false;
    }
    if ((this.mediaObject != null) && (!this.mediaObject.checkArgs()))
    {
      LogUtil.e("Weibo.WeiboMessage", "checkArgs fail, mediaObject is invalid");
      return false;
    }
    return true;
  }
  
  public Bundle toBundle(Bundle paramBundle)
  {
    if (this.mediaObject != null)
    {
      paramBundle.putParcelable("_weibo_message_media", this.mediaObject);
      paramBundle.putString("_weibo_message_media_extra", this.mediaObject.toExtraMediaString());
    }
    return paramBundle;
  }
  
  public WeiboMessage toObject(Bundle paramBundle)
  {
    this.mediaObject = ((BaseMediaObject)paramBundle.getParcelable("_weibo_message_media"));
    if (this.mediaObject != null) {
      this.mediaObject.toExtraMediaObject(paramBundle.getString("_weibo_message_media_extra"));
    }
    return this;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/WeiboMessage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */