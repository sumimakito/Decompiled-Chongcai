package com.sina.weibo.sdk.auth;

import android.os.Bundle;
import com.sina.weibo.sdk.exception.WeiboException;

public abstract interface WeiboAuthListener
{
  public abstract void onCancel();
  
  public abstract void onComplete(Bundle paramBundle);
  
  public abstract void onWeiboException(WeiboException paramWeiboException);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/auth/WeiboAuthListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */