package com.sina.weibo.sdk.exception;

public class WeiboDialogException
  extends WeiboException
{
  private static final long serialVersionUID = 1L;
  private int mErrorCode;
  private String mFailingUrl;
  
  public WeiboDialogException(String paramString1, int paramInt, String paramString2)
  {
    super(paramString1);
    this.mErrorCode = paramInt;
    this.mFailingUrl = paramString2;
  }
  
  public int getErrorCode()
  {
    return this.mErrorCode;
  }
  
  public String getFailingUrl()
  {
    return this.mFailingUrl;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/exception/WeiboDialogException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */