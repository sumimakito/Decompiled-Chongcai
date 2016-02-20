package com.sina.weibo.sdk.api.share;

public abstract interface IWeiboHandler
{
  public static abstract interface Request
  {
    public abstract void onRequest(BaseRequest paramBaseRequest);
  }
  
  public static abstract interface Response
  {
    public abstract void onResponse(BaseResponse paramBaseResponse);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/share/IWeiboHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */