package com.sina.weibo.sdk.component;

import android.webkit.WebViewClient;

abstract class WeiboWebViewClient
  extends WebViewClient
{
  protected BrowserRequestCallBack mCallBack;
  
  public void setBrowserRequestCallBack(BrowserRequestCallBack paramBrowserRequestCallBack)
  {
    this.mCallBack = paramBrowserRequestCallBack;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/component/WeiboWebViewClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */