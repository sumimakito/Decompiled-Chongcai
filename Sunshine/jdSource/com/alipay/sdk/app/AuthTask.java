package com.alipay.sdk.app;

import android.app.Activity;
import com.alipay.sdk.data.MspConfig;
import com.alipay.sdk.sys.GlobalContext;
import com.alipay.sdk.util.AuthHelper;

public class AuthTask
{
  private Activity a;
  
  public AuthTask(Activity paramActivity)
  {
    this.a = paramActivity;
  }
  
  public String auth(String paramString)
  {
    try
    {
      GlobalContext.a().a(this.a, MspConfig.a());
      paramString = AuthHelper.a(this.a, paramString);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/AuthTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */