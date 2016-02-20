package com.tencent.mm.sdk.openapi;

import android.content.Context;

public class WXAPIFactory
{
  private static WXAPIFactory Q = null;
  
  public static IWXAPI createWXAPI(Context paramContext, String paramString)
  {
    if (Q == null) {
      Q = new WXAPIFactory();
    }
    return new WXApiImplV10(paramContext, paramString);
  }
  
  public static IWXAPI createWXAPI(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (Q == null) {
      Q = new WXAPIFactory();
    }
    return new WXApiImplV10(paramContext, paramString, paramBoolean);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/openapi/WXAPIFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */