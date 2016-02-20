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
import cn.apppark.mcd.vo.buy.BuyRegVo;
import cn.apppark.mcd.widget.MyBtn;
import cn.apppark.mcd.widget.MyEditText2;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import pn;

public class SmsRegNew
  extends SmsBaseAct
  implements View.OnClickListener
{
  private String METHOD_REG = "smsRegist";
  private final int WHAT_REG = 12;
  private Button btn_SmsCode;
  private Button btn_back;
  private MyBtn btn_reg;
  private MyEditText2 et_nikeName;
  private MyEditText2 et_password;
  private MyEditText2 et_phone;
  private EditText et_smsCode;
  private BuyRegVo regVo;
  
  private boolean checkLoginFormat(boolean paramBoolean1, boolean paramBoolean2)
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
    if (StringUtil.isNullWithTrim(this.et_nikeName.getText().toString()))
    {
      initToast("请输入昵称", 0);
      return false;
    }
    if (this.et_nikeName.getText().toString().length() > 10)
    {
      initToast("昵称必须小于10个字符", 0);
      return false;
    }
    if (StringUtil.isNullWithTrim(this.et_password.getText().toString()))
    {
      initToast("请输入密码", 0);
      return false;
    }
    if (!PublicUtil.checkPassword(this.et_password.getText().toString()))
    {
      initToast("密码为6-12位字母或数字", 0);
      return false;
    }
    if ((paramBoolean1) && (StringUtil.isNullWithTrim(this.et_smsCode.getText().toString())))
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
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_reg = ((MyBtn)findViewById(2131362519));
    this.btn_reg.setText("立即注册");
    this.btn_reg.setBgColor(FunctionPublic.convertColor(YYGYContants.PERSIONCENTER_TOP_COLOR));
    this.btn_reg.setOnClickListener(this);
    this.btn_SmsCode = ((Button)findViewById(2131362518));
    this.btn_back = ((Button)findViewById(2131362513));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_SmsCode.setOnClickListener(this);
    this.btn_reg.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.et_nikeName = ((MyEditText2)findViewById(2131362515));
    this.et_password = ((MyEditText2)findViewById(2131362516));
    this.et_password.isPassOpen(true);
    this.et_smsCode = ((EditText)findViewById(2131362517));
    this.et_phone = ((MyEditText2)findViewById(2131362514));
    this.et_phone.isPhoneOpen(true);
    this.et_nikeName.setHint("注册后不可修改");
    this.et_password.setHint("6-10位字母或数字");
    this.et_phone.setHint("请输入您的手机号码");
    this.img_code.setOnClickListener(this);
    this.btn_codeSure.setOnClickListener(this);
    this.btn_codeCancel.setOnClickListener(this);
    this.mHandler = new pn(this);
  }
  
  private void reg(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("phone", this.et_phone.getText().toString());
    ((Map)localObject).put("password", this.et_password.getText().toString());
    ((Map)localObject).put("nickName", this.et_nikeName.getText().toString());
    ((Map)localObject).put("smsCode", this.et_smsCode.getText().toString());
    ((Map)localObject).put("registTime", "");
    localObject = new WebServicePool(paramInt, this.mHandler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/sms.ws", this.METHOD_REG);
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131362513: 
    case 2131362519: 
    case 2131362518: 
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
          } while (!checkLoginFormat(true, false));
          this.loadDialog.show();
          reg(12);
          return;
        } while (!checkLoginFormat(false, false));
        if ("1".equals(this.needPicCode))
        {
          showPicCode(this.et_phone.getText().toString());
          return;
        }
        this.loadDialog.show();
        checkPhoneState(this.et_phone.getText().toString(), 0);
        return;
        this.ll_code.setVisibility(8);
      } while (!checkLoginFormat(false, true));
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
    setContentView(2130903145);
    initCodeWidget();
    initWidget();
    countdown();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/SmsRegNew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */