package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.widget.MyBtn;
import cn.apppark.mcd.widget.MyEditText2;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import pk;

public class SmsFindPass
  extends SmsBaseAct
  implements View.OnClickListener
{
  private static final int FINDPASS_WHAT = 12;
  private final String METHOD_PASS = "resetPassword";
  private Button btn_back;
  private MyBtn btn_findPass;
  private Button btn_getSmsCode;
  private MyEditText2 et_pass;
  private MyEditText2 et_phone;
  private MyEditText2 et_smscode;
  
  private boolean checkFormat(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (StringUtil.isNullWithTrim(this.et_phone.getText().toString()))
    {
      initToast("请输入手机", 0);
      return false;
    }
    if (!PublicUtil.chekMobilePhone(this.et_phone.getText().toString()))
    {
      initToast("手机号码格式错误", 0);
      return false;
    }
    if (StringUtil.isNullWithTrim(this.et_pass.getText().toString()))
    {
      initToast("请输入密码", 0);
      return false;
    }
    if (!PublicUtil.checkPassword(this.et_pass.getText().toString()))
    {
      initToast("密码为6-12位字母或数字", 0);
      return false;
    }
    if ((paramBoolean1) && (StringUtil.isNullWithTrim(this.et_smscode.getText().toString())))
    {
      initToast("请输入短信验证码", 0);
      return false;
    }
    if ((paramBoolean2) && (StringUtil.isNullWithTrim(this.et_picCode.getText().toString())))
    {
      initToast("请输入图形验证码", 0);
      return false;
    }
    return true;
  }
  
  private void findPass(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("phone", this.et_phone.getText().toString());
    ((Map)localObject).put("smsCode", this.et_smscode.getText().toString());
    ((Map)localObject).put("password", this.et_pass.getText().toString());
    localObject = new WebServicePool(paramInt, this.mHandler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/sms.ws", "resetPassword");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_findPass = ((MyBtn)findViewById(2131362474));
    this.btn_findPass.setText("提交");
    this.btn_findPass.setBgColor(FunctionPublic.convertColor(YYGYContants.PERSIONCENTER_TOP_COLOR));
    this.btn_findPass.setOnClickListener(this);
    this.et_phone = ((MyEditText2)findViewById(2131362470));
    this.et_phone.isPhoneOpen(true);
    this.et_smscode = ((MyEditText2)findViewById(2131362472));
    this.et_pass = ((MyEditText2)findViewById(2131362471));
    this.et_pass.isPassOpen(true);
    this.et_pass.setHint("6-10位字母或数字");
    this.et_phone.setHint("请输入您的手机号码");
    this.btn_back = ((Button)findViewById(2131362463));
    this.btn_getSmsCode = ((Button)findViewById(2131362473));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_getSmsCode.setOnClickListener(this);
    this.btn_findPass.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.img_code.setOnClickListener(this);
    this.btn_codeSure.setOnClickListener(this);
    this.btn_codeCancel.setOnClickListener(this);
    this.mHandler = new pk(this);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131362463: 
    case 2131362474: 
    case 2131362473: 
    case 2131362490: 
      do
      {
        do
        {
          do
          {
            return;
            finish();
            return;
          } while (!checkFormat(true, false));
          this.loadDialog.show();
          findPass(12);
          return;
        } while (!checkFormat(false, false));
        if ("1".equals(this.needPicCode))
        {
          showPicCode(this.et_phone.getText().toString());
          return;
        }
        this.loadDialog.show();
        checkPhoneState(this.et_phone.getText().toString(), 1);
        return;
        this.ll_code.setVisibility(8);
      } while (!checkFormat(false, false));
      this.loadDialog.show();
      getSmsCode(this.et_phone.getText().toString());
      return;
    case 2131362489: 
      this.ll_code.setVisibility(8);
      return;
    }
    this.loadDialog.show();
    getPicCode(this.et_phone.getText().toString());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903138);
    initCodeWidget();
    initWidget();
    countdown();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/SmsFindPass.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */