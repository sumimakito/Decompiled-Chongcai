package com.sina.weibo.sdk.exception;

public class WeiboHttpException
  extends WeiboException
{
  private static final long serialVersionUID = 1L;
  private final int mStatusCode;
  
  public WeiboHttpException(String paramString, int paramInt)
  {
    super(paramString);
    this.mStatusCode = paramInt;
  }
  
  public int getStatusCode()
  {
    return this.mStatusCode;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/exception/WeiboHttpException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */