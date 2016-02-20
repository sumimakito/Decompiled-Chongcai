package cn.apppark.ckj10185912.wxapi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;

public class AppRegister
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    WXAPIFactory.createWXAPI(paramContext, null).registerApp(HQCHApplication.mainActivity.clientBaseVo.getWeixinAppID());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/ckj10185912/wxapi/AppRegister.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */