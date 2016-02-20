package com.alipay.sdk.widget;

import android.app.ProgressDialog;

class Loading$2
  implements Runnable
{
  Loading$2(Loading paramLoading) {}
  
  public void run()
  {
    try
    {
      if ((Loading.a(this.a) != null) && (this.a.a())) {
        Loading.a(this.a).dismiss();
      }
      Loading.a(this.a, null);
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      Loading.a(this.a, null);
      return;
    }
    finally
    {
      localObject = finally;
      Loading.a(this.a, null);
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/widget/Loading$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */