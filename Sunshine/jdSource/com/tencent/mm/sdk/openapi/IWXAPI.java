package com.tencent.mm.sdk.openapi;

import android.content.Intent;

public abstract interface IWXAPI
{
  public abstract int getWXAppSupportAPI();
  
  public abstract boolean handleIntent(Intent paramIntent, IWXAPIEventHandler paramIWXAPIEventHandler);
  
  public abstract boolean isWXAppInstalled();
  
  public abstract boolean isWXAppSupportAPI();
  
  public abstract boolean openWXApp();
  
  public abstract boolean registerApp(String paramString);
  
  public abstract boolean sendReq(BaseReq paramBaseReq);
  
  public abstract boolean sendResp(BaseResp paramBaseResp);
  
  public abstract void unregisterApp();
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/openapi/IWXAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */