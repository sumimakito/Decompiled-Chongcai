package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyLoginVo;
import cn.apppark.mcd.widget.MyBtn;
import cn.apppark.mcd.widget.MyEditText2;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import pl;
import pm;

public class SmsLogin
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int LOGIN_WHAT = 1;
  private final String METHOD_LOGIN = "smsLogin";
  private final int REQ_REG = 1;
  private final int REQ_VERTIFY = 2;
  private Button btn_back;
  private Button btn_findPass;
  private MyBtn btn_sure;
  private MyEditText2 et_password;
  private MyEditText2 et_phone;
  private pm mHandler;
  private BuyLoginVo mLoginVo;
  private TextView tv_regfree;
  
  private void checkLoginFormat()
  {
    if (!"".equals(this.et_phone.getText().toString().trim()))
    {
      this.loadDialog.show();
      subData(1, this.et_phone.getText().toString(), this.et_password.getText().toString());
      return;
    }
    initToast("请输入手机号码", 0);
  }
  
  private void checkLoginResult()
  {
    if (this.mLoginVo != null)
    {
      if (this.mLoginVo.getPhoneState() == 1)
      {
        Intent localIntent = new Intent(this, SmsVertifyPhone.class);
        localIntent.putExtra("phone", this.et_phone.getText().toString());
        startActivityForResult(localIntent, 2);
        return;
      }
      initToast("登陆成功", 0);
      updateLoginInfo();
      setResult(1);
      finish();
      return;
    }
    initToast("登陆失败", 0);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_sure = ((MyBtn)findViewById(2131362487));
    this.btn_sure.setText("立即登录");
    this.btn_sure.setBgColor(FunctionPublic.convertColor(YYGYContants.PERSIONCENTER_TOP_COLOR));
    this.btn_sure.setOnClickListener(this);
    this.btn_back = ((Button)findViewById(2131362482));
    this.et_phone = ((MyEditText2)findViewById(2131362484));
    this.et_password = ((MyEditText2)findViewById(2131362485));
    this.et_password.isPassOpen(true);
    this.et_password.setMyOnKeyEnter(new pl(this));
    this.tv_regfree = ((TextView)findViewById(2131362483));
    this.btn_findPass = ((Button)findViewById(2131362486));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    ButtonColorFilter.setButtonFocusChanged(this.btn_findPass);
    this.btn_sure.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.tv_regfree.setOnClickListener(this);
    this.btn_findPass.setOnClickListener(this);
  }
  
  private void subData(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("phone", paramString1);
    localHashMap.put("password", paramString2);
    paramString1 = new WebServicePool(paramInt, this.mHandler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/sms.ws", "smsLogin");
    paramString1.doRequest(paramString1);
  }
  
  private void updateLoginInfo()
  {
    ClientPersionInfo localClientPersionInfo = new ClientPersionInfo(this.context);
    localClientPersionInfo.updateUserId(this.mLoginVo.getId());
    localClientPersionInfo.updatePhone(this.mLoginVo.getPhone());
    localClientPersionInfo.updateUserSex(this.mLoginVo.getSex());
    localClientPersionInfo.updateUserSign(this.mLoginVo.getSignName());
    localClientPersionInfo.updateUserEmail(this.mLoginVo.getEmail());
    localClientPersionInfo.updateUserNikeName(this.mLoginVo.getNickName());
    localClientPersionInfo.updateUserHeadFace(this.mLoginVo.getHeadFace() + "?t=" + System.currentTimeMillis());
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == 1))
    {
      setResult(1);
      finish();
    }
    while (paramInt1 != 2) {
      return;
    }
    if (paramInt2 == 1)
    {
      initToast("登陆成功", 0);
      updateLoginInfo();
      setResult(1);
      finish();
      return;
    }
    initToast("登陆失败,请重试", 0);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362484: 
    case 2131362485: 
    default: 
      return;
    case 2131362482: 
      finish();
      return;
    case 2131362487: 
      checkLoginFormat();
      return;
    case 2131362483: 
      startActivityForResult(new Intent(this, SmsRegNew.class), 1);
      return;
    }
    startActivity(new Intent(this, SmsFindPass.class));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903140);
    this.loadDialog = createLoadingDialog(2131230756);
    this.mHandler = new pm(this);
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/SmsLogin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */