package com.sina.weibo.sdk.net;

import com.sina.weibo.sdk.exception.WeiboException;

public abstract interface RequestListener
{
  public abstract void onComplete(String paramString);
  
  public abstract void onWeiboException(WeiboException paramWeiboException);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/net/RequestListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */