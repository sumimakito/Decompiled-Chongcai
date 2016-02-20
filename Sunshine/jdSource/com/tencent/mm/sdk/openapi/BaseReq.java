package com.tencent.mm.sdk.openapi;

import android.os.Bundle;

public abstract class BaseReq
{
  public String transaction;
  
  abstract boolean checkArgs();
  
  public void fromBundle(Bundle paramBundle)
  {
    this.transaction = paramBundle.getString("_wxapi_basereq_transaction");
  }
  
  public abstract int getType();
  
  public void toBundle(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", getType());
    paramBundle.putString("_wxapi_basereq_transaction", this.transaction);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/openapi/BaseReq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */