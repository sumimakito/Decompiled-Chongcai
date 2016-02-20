package com.alipay.sdk.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

class PayTask$5
  extends BroadcastReceiver
{
  PayTask$5(PayTask paramPayTask) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equalsIgnoreCase("android.intent.action.PACKAGE_ADDED"))
    {
      paramContext = new PayTask.5.1(this);
      PayTask.e(this.a).post(paramContext);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/PayTask$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */