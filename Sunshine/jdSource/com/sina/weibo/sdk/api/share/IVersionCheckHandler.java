package com.sina.weibo.sdk.api.share;

import android.content.Context;
import com.sina.weibo.sdk.WeiboAppManager.WeiboInfo;
import com.sina.weibo.sdk.api.WeiboMessage;
import com.sina.weibo.sdk.api.WeiboMultiMessage;

abstract interface IVersionCheckHandler
{
  public abstract boolean checkRequest(Context paramContext, WeiboAppManager.WeiboInfo paramWeiboInfo, WeiboMessage paramWeiboMessage);
  
  public abstract boolean checkRequest(Context paramContext, WeiboAppManager.WeiboInfo paramWeiboInfo, WeiboMultiMessage paramWeiboMultiMessage);
  
  public abstract boolean checkResponse(Context paramContext, String paramString, WeiboMessage paramWeiboMessage);
  
  public abstract boolean checkResponse(Context paramContext, String paramString, WeiboMultiMessage paramWeiboMultiMessage);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/share/IVersionCheckHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */