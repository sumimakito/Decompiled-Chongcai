package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.content.Intent;
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
import po;

public class SmsVertifyPhone
  extends SmsBaseAct
  implements View.OnClickListener
{
  private static final int WHAT_VERTIFY = 12;
  private final String METHOD_VERTIFY = "confirmOldPhone";
  private Button btn_back;
  private Button btn_getSmsCode;
  private MyBtn btn_vertify;
  private MyEditText2 et_phone;
  private MyEditText2 et_smscode;
  private String phone;
  
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
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_vertify = ((MyBtn)findViewById(2131362524));
    this.btn_vertify.setText("提交");
    this.btn_vertify.setBgColor(FunctionPublic.convertColor(YYGYContants.PERSIONCENTER_TOP_COLOR));
    this.btn_vertify.setOnClickListener(this);
    this.et_phone = ((MyEditText2)findViewById(2131362521));
    this.et_phone.isPhoneOpen(true);
    this.et_smscode = ((MyEditText2)findViewById(2131362522));
    if (this.phone != null) {
      this.et_phone.setText(this.phone);
    }
    this.btn_back = ((Button)findViewById(2131362520));
    this.btn_getSmsCode = ((Button)findViewById(2131362523));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    ButtonColorFilter.setButtonFocusChanged(this.btn_getSmsCode);
    this.btn_getSmsCode.setOnClickListener(this);
    this.btn_vertify.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.img_code.setOnClickListener(this);
    this.btn_codeSure.setOnClickListener(this);
    this.btn_codeCancel.setOnClickListener(this);
    this.mHandler = new po(this);
  }
  
  private void vertifyPhone(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("phone", this.et_phone.getText().toString());
    ((Map)localObject).put("smsCode", this.et_smscode.getText().toString());
    localObject = new WebServicePool(paramInt, this.mHandler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/sms.ws", "confirmOldPhone");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131362520: 
    case 2131362524: 
    case 2131362523: 
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
          vertifyPhone(12);
          return;
        } while (!checkFormat(false, false));
        if ("1".equals(this.needPicCode))
        {
          showPicCode(this.et_phone.getText().toString());
          return;
        }
        this.loadDialog.show();
        checkPhoneState(this.et_phone.getText().toString(), 2);
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
    setContentView(2130903146);
    this.phone = getIntent().getStringExtra("phone");
    initCodeWidget();
    initWidget();
    countdown();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/SmsVertifyPhone.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */