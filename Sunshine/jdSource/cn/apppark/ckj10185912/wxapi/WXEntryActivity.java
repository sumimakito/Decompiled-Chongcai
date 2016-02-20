package cn.apppark.ckj10185912.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import com.tencent.mm.sdk.openapi.BaseReq;
import com.tencent.mm.sdk.openapi.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;

public class WXEntryActivity
  extends Activity
  implements IWXAPIEventHandler
{
  private IWXAPI api;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.api = WXAPIFactory.createWXAPI(this, HQCHApplication.mainActivity.clientBaseVo.getWeixinAppID(), false);
    this.api.handleIntent(getIntent(), this);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    this.api.handleIntent(paramIntent, this);
  }
  
  public void onReq(BaseReq paramBaseReq) {}
  
  public void onResp(BaseResp paramBaseResp)
  {
    int i;
    switch (paramBaseResp.errCode)
    {
    case -3: 
    case -1: 
    default: 
      i = 2131230766;
    }
    for (;;)
    {
      Toast.makeText(this, i, 1).show();
      finish();
      return;
      i = 2131230763;
      paramBaseResp = new Intent();
      paramBaseResp.setAction(YYGYContants.SHARE_ACTION_MSG);
      sendBroadcast(paramBaseResp);
      continue;
      i = 2131230764;
      continue;
      i = 2131230765;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/ckj10185912/wxapi/WXEntryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */