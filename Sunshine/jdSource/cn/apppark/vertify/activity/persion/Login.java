package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyLoginVo;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import nz;

public class Login
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int LOGIN_WHAT = 1;
  private final String METHOD = "login";
  private final int REQ_REG = 1;
  private final int REQ_SETNIKENAME = 2;
  private Button btn_back;
  private Button btn_sure;
  private EditText et_password;
  private EditText et_phone;
  private nz handler;
  private boolean isFinish = true;
  private BuyLoginVo loginVo;
  private TextView tv_findpass;
  private TextView tv_regfree;
  
  private void checkLoginFormat()
  {
    if (!"".equals(this.et_phone.getText().toString().trim()))
    {
      if (this.isFinish)
      {
        this.isFinish = false;
        this.loadDialog.show();
        subData(1, this.et_phone.getText().toString(), this.et_password.getText().toString());
      }
      return;
    }
    HQCHApplication.instance.initToast("请输入手机号码", 0);
  }
  
  private void checkLoginResult()
  {
    if (this.loginVo != null)
    {
      if ("1".equals(this.loginVo.getNickNameRight()))
      {
        initToast("请填写昵称", 0);
        Intent localIntent = new Intent(this.context, UpdateInfo.class);
        localIntent.putExtra("userId", this.loginVo.getId());
        localIntent.putExtra("type", 1);
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
    this.btn_sure = ((Button)findViewById(2131362476));
    this.btn_back = ((Button)findViewById(2131362475));
    this.et_phone = ((EditText)findViewById(2131362477));
    this.et_password = ((EditText)findViewById(2131362479));
    ButtonColorFilter.setButtonFocusChanged(this.btn_sure);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.tv_regfree = ((TextView)findViewById(2131362480));
    this.tv_findpass = ((TextView)findViewById(2131362481));
    this.btn_sure.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.tv_regfree.setOnClickListener(this);
    this.tv_findpass.setOnClickListener(this);
  }
  
  private void subData(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("phone", paramString1);
    localHashMap.put("password", paramString2);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "login");
    paramString1.doRequest(paramString1);
  }
  
  private void updateLoginInfo()
  {
    ClientPersionInfo localClientPersionInfo = new ClientPersionInfo(this.context);
    localClientPersionInfo.updateUserId(this.loginVo.getId());
    localClientPersionInfo.updatePhone(this.loginVo.getPhone());
    localClientPersionInfo.updateUserSex(this.loginVo.getSex());
    localClientPersionInfo.updateUserSign(this.loginVo.getSignName());
    localClientPersionInfo.updateUserEmail(this.loginVo.getEmail());
    localClientPersionInfo.updateUserNikeName(this.loginVo.getNickName());
    localClientPersionInfo.updateUserHeadFace(this.loginVo.getHeadFace() + "?t=" + System.currentTimeMillis());
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
    case 2131362477: 
    case 2131362478: 
    case 2131362479: 
    default: 
      return;
    case 2131362475: 
      finish();
      return;
    case 2131362476: 
      checkLoginFormat();
      return;
    case 2131362480: 
      startActivityForResult(new Intent(this, RegNew.class), 1);
      return;
    }
    startActivity(new Intent(this, FindPass.class));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903139);
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new nz(this);
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/Login.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */