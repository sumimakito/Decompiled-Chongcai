package com.sina.weibo.sdk.api.share;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.exception.WeiboException;

public abstract interface IWeiboShareListener
{
  public abstract void onAuthorizeCancel();
  
  public abstract void onAuthorizeComplete(Oauth2AccessToken paramOauth2AccessToken);
  
  public abstract void onAuthorizeException(WeiboException paramWeiboException);
  
  public abstract void onTokenError(String paramString);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/share/IWeiboShareListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */