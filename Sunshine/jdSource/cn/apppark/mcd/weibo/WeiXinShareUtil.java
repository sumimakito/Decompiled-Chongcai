package cn.apppark.mcd.weibo;

import android.app.Activity;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.SendMessageToWX.Req;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.tencent.mm.sdk.openapi.WXMediaMessage;
import com.tencent.mm.sdk.openapi.WXWebpageObject;

public class WeiXinShareUtil
{
  private String APP_KEY;
  Activity a;
  private IWXAPI api;
  
  public WeiXinShareUtil(Activity paramActivity, String paramString)
  {
    this.a = paramActivity;
    this.APP_KEY = paramString;
  }
  
  private String buildTransaction(String paramString)
  {
    if (paramString == null) {
      return String.valueOf(System.currentTimeMillis());
    }
    return paramString + System.currentTimeMillis();
  }
  
  private void getWeiXin()
  {
    this.api = WXAPIFactory.createWXAPI(this.a, this.APP_KEY, false);
    if (!this.api.registerApp(HQCHApplication.mainActivity.clientBaseVo.getWeixinAppID())) {
      this.api.unregisterApp();
    }
  }
  
  public void sendWeiXinImgText(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    getWeiXin();
    if ((paramString1 == null) || (paramString1.length() == 0)) {
      return;
    }
    paramString3 = new WXWebpageObject();
    paramString3.webpageUrl = paramString4;
    paramString3 = new WXMediaMessage(paramString3);
    paramString3.title = paramString1;
    paramString3.description = paramString2;
    paramString1 = new SendMessageToWX.Req();
    paramString1.transaction = buildTransaction("webpage");
    paramString1.message = paramString3;
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      paramString1.scene = i;
      this.api.sendReq(paramString1);
      return;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/weibo/WeiXinShareUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */