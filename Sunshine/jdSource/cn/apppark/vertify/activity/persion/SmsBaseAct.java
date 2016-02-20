package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.RetVo;
import cn.apppark.mcd.vo.buy.BuyRegVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import pj;

public class SmsBaseAct
  extends BuyBaseAct
{
  protected static final int WHAT_PHONESTATE = 3;
  protected static final int WHAT_PICCODE = 1;
  protected static final int WHAT_SMSCODE = 2;
  protected static final int WHAT_WAITTIME = 4;
  protected String METHOD_PHONESTATE = "checkPhoneState";
  protected String METHOD_PICCODE = "getImageCode";
  protected String METHOD_SMS = "sendSMS";
  protected Button btn_codeCancel;
  protected Button btn_codeSure;
  protected EditText et_picCode;
  protected RemoteImageView img_code;
  protected LinearLayout ll_code;
  public Handler mHandler;
  protected String needPicCode = "0";
  public int waitSecond;
  
  protected void checkPhoneState(String paramString, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("phone", paramString);
    localHashMap.put("phoneCheckType", Integer.valueOf(paramInt));
    paramString = new WebServicePool(3, this.mHandler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/sms.ws", this.METHOD_PHONESTATE);
    paramString.doRequest(paramString);
  }
  
  public void checkPhoneStateResult(String paramString1, String paramString2)
  {
    paramString1 = getRetResult(paramString1, "数据获取失败");
    if (paramString1 != null)
    {
      if (paramString1.getRetFlag() != 1) {
        break label57;
      }
      if ("1".equals(paramString1.getNeedImageCode()))
      {
        this.needPicCode = "1";
        showPicCode(paramString2);
      }
    }
    else
    {
      return;
    }
    this.loadDialog.show();
    getSmsCode(paramString2);
    return;
    label57:
    initToast(paramString1.getRetMsg(), 0);
  }
  
  public void checkPicResult(String paramString)
  {
    if (checkResult(paramString, "图片验证码获取失败,请重试", null))
    {
      paramString = (BuyRegVo)JsonParserBuy.parseJson2Vo(paramString, BuyRegVo.class);
      if (paramString != null) {
        this.img_code.setImageUrl(paramString.getImageURL());
      }
      return;
    }
    this.img_code.setImageUrl(null);
  }
  
  public void checkSmsCodeResult(String paramString1, int paramInt, String paramString2)
  {
    paramString1 = getRetResult(paramString1, "获取短信验证码失败");
    if (paramString1 != null)
    {
      if (paramString1.getRetFlag() == 1)
      {
        YYGYContants.SMS_LAST_SENDTIME = System.currentTimeMillis();
        YYGYContants.SMS_COUTTIME = paramString1.getWaitTime() * 60;
        countdown();
        initToast(paramString1.getRetMsg(), 1);
      }
    }
    else {
      return;
    }
    if ("1".equals(paramString1.getNeedImageCode()))
    {
      this.needPicCode = "1";
      showPicCode(paramString2);
      return;
    }
    initToast(paramString1.getRetMsg(), 0);
  }
  
  protected void countdown()
  {
    int i = (int)((System.currentTimeMillis() - YYGYContants.SMS_LAST_SENDTIME) / 1000L);
    if ((i >= 0) && (i < YYGYContants.SMS_COUTTIME)) {
      if (i != 0) {
        break label56;
      }
    }
    label56:
    for (i = YYGYContants.SMS_COUTTIME;; i = YYGYContants.SMS_COUTTIME - i)
    {
      this.waitSecond = i;
      new Thread(new pj(this)).start();
      return;
    }
  }
  
  protected void getPicCode(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("phone", paramString);
    paramString = new WebServicePool(1, this.mHandler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/sms.ws", this.METHOD_PICCODE);
    paramString.doRequest(paramString);
  }
  
  protected void getSmsCode(String paramString)
  {
    String str = ClientInitInfoHelpler.encryptByMD5(paramString, "10185912");
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("phone", paramString);
    localHashMap.put("imageCode", this.et_picCode.getText().toString());
    localHashMap.put("verifyCode", str);
    paramString = new WebServicePool(2, this.mHandler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/sms.ws", this.METHOD_SMS);
    paramString.doRequest(paramString);
  }
  
  protected void initCodeWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.ll_code = ((LinearLayout)findViewById(2131362488));
    this.et_picCode = ((EditText)findViewById(2131362491));
    this.img_code = ((RemoteImageView)findViewById(2131362492));
    this.btn_codeSure = ((Button)findViewById(2131362490));
    this.btn_codeCancel = ((Button)findViewById(2131362489));
    ButtonColorFilter.setButtonFocusChanged(this.btn_codeSure);
    ButtonColorFilter.setButtonFocusChanged(this.btn_codeCancel);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.loadDialog = createLoadingDialog(2131230756);
  }
  
  protected void onDestroy()
  {
    this.waitSecond = -1;
    super.onDestroy();
  }
  
  protected void showPicCode(String paramString)
  {
    this.loadDialog.show();
    this.et_picCode.setText("");
    this.ll_code.setVisibility(0);
    getPicCode(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/SmsBaseAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */