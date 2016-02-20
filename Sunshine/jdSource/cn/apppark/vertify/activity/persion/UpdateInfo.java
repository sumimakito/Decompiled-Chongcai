package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import pp;
import pq;

public class UpdateInfo
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int MAX_SIGNNUM = 16;
  private final String METHOD_UPDATA_EMAIL = "updateEmail";
  private final String METHOD_UPDATA_NIKENAME = "updateNickName";
  private final String METHOD_UPDATA_PASSWORD = "updatePassword";
  private final String METHOD_UPDATA_SEX = "updateSex";
  private final String METHOD_UPDATA_SIGN = "updateSignName";
  private final int UPDATA_EMAIL_WHAT = 3;
  private final int UPDATA_NIKENAME_WHAT = 1;
  private final int UPDATA_PASSWORD_WHAT = 2;
  private final int UPDATA_SEX_WHAT = 4;
  private final int UPDATA_SIGN_WHAT = 5;
  public ClientPersionInfo a;
  private Button btn_back;
  private Button btn_sure;
  private EditText et_email;
  private EditText et_newpass;
  private EditText et_nikeName;
  private EditText et_oldpass;
  private EditText et_renewpass;
  private EditText et_sign;
  private TextView famel;
  private pq handler;
  private LinearLayout ll_email;
  private LinearLayout ll_famale;
  private LinearLayout ll_male;
  private LinearLayout ll_nikeName;
  private LinearLayout ll_sex;
  private LinearLayout ll_updatePass;
  private TextView male;
  private int operateType;
  private RelativeLayout rel_sign;
  private String sex = "1";
  private TextView tv_sign;
  private TextView tv_title;
  private String userId;
  
  private void checkFormat()
  {
    switch (this.operateType)
    {
    default: 
      return;
    case 1: 
      if (StringUtil.isNotNull(this.et_nikeName.getText().toString()))
      {
        updateNikeName(1, this.et_nikeName.getText().toString(), this.a.getUserId());
        this.loadDialog.show();
        return;
      }
      initToast("请输入昵称", 0);
      return;
    case 2: 
      if (StringUtil.isNull(this.et_oldpass.getText().toString()))
      {
        initToast("请输入旧密码", 0);
        return;
      }
      if (StringUtil.isNull(this.et_newpass.getText().toString()))
      {
        initToast("请输入新密码", 0);
        return;
      }
      if (StringUtil.isNull(this.et_renewpass.getText().toString()))
      {
        initToast("请输入确认密码", 0);
        return;
      }
      if (!this.et_newpass.getText().toString().equals(this.et_renewpass.getText().toString()))
      {
        initToast("两次密码不一致", 0);
        return;
      }
      this.loadDialog.show();
      updatePassowrd(2, this.et_newpass.getText().toString(), this.et_oldpass.getText().toString(), this.a.getUserId());
      return;
    case 3: 
      if (StringUtil.isNull(this.et_email.getText().toString()))
      {
        initToast("请输入邮箱", 0);
        return;
      }
      if (!PublicUtil.checkEmail(this.et_email.getText().toString()))
      {
        initToast("邮箱格式错误", 0);
        return;
      }
      this.loadDialog.show();
      updateEmail(3, this.et_email.getText().toString(), this.a.getUserId());
      return;
    case 4: 
      this.loadDialog.show();
      updateSex(4, this.sex, this.a.getUserId());
      return;
    }
    if (StringUtil.isNull(this.et_sign.getText().toString()))
    {
      initToast("请输入个性签名", 0);
      return;
    }
    this.loadDialog.show();
    updateSignName(5, this.et_sign.getText().toString(), this.a.getUserId());
  }
  
  private void initWidget()
  {
    Object localObject = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)localObject);
    this.tv_title = ((TextView)findViewById(2131362130));
    this.btn_sure = ((Button)findViewById(2131362131));
    this.btn_back = ((Button)findViewById(2131362129));
    ButtonColorFilter.setButtonFocusChanged(this.btn_sure);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_sure.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.rel_sign = ((RelativeLayout)findViewById(2131362145));
    this.et_sign = ((EditText)findViewById(2131362146));
    this.tv_sign = ((TextView)findViewById(2131362147));
    this.ll_nikeName = ((LinearLayout)findViewById(2131362132));
    this.et_nikeName = ((EditText)findViewById(2131362133));
    this.et_email = ((EditText)findViewById(2131362135));
    this.ll_email = ((LinearLayout)findViewById(2131362134));
    this.ll_sex = ((LinearLayout)findViewById(2131362140));
    this.ll_male = ((LinearLayout)findViewById(2131362141));
    this.ll_famale = ((LinearLayout)findViewById(2131362143));
    this.famel = ((TextView)findViewById(2131362144));
    this.male = ((TextView)findViewById(2131362142));
    this.ll_male.setOnClickListener(this);
    this.ll_famale.setOnClickListener(this);
    this.ll_updatePass = ((LinearLayout)findViewById(2131362136));
    this.et_oldpass = ((EditText)findViewById(2131362137));
    this.et_newpass = ((EditText)findViewById(2131362138));
    this.et_renewpass = ((EditText)findViewById(2131362139));
    switch (this.operateType)
    {
    }
    for (;;)
    {
      localObject = new pp(this);
      this.et_sign.addTextChangedListener((TextWatcher)localObject);
      return;
      this.userId = getIntent().getStringExtra("userId");
      this.ll_nikeName.setVisibility(0);
      this.et_nikeName.setText(this.a.getUserNikeName());
      this.tv_title.setText("修改昵称");
      continue;
      this.ll_updatePass.setVisibility(0);
      this.tv_title.setText("修改密码");
      continue;
      this.et_email.setVisibility(0);
      this.ll_email.setVisibility(0);
      this.et_email.setText(this.a.getUserEmail());
      this.tv_title.setText("修改邮箱");
      continue;
      this.ll_sex.setVisibility(0);
      this.sex = getInfo().getUserSex();
      if ("0".equals(getInfo().getUserSex()))
      {
        this.famel.setBackgroundResource(2130837760);
        this.male.setBackgroundResource(2130837781);
      }
      for (;;)
      {
        this.tv_title.setText("修改性别");
        break;
        this.male.setBackgroundResource(2130837760);
        this.famel.setBackgroundResource(2130837781);
      }
      this.rel_sign.setVisibility(0);
      this.tv_title.setText("修改个性签名");
      if (this.a.getUserSign() != null)
      {
        this.et_sign.setText(this.a.getUserSign());
        this.tv_sign.setText(16 - this.a.getUserSign().length());
      }
    }
  }
  
  private void updateEmail(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("id", paramString2);
    localHashMap.put("email", paramString1);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "updateEmail");
    paramString1.doRequest(paramString1);
  }
  
  private void updateNikeName(int paramInt, String paramString1, String paramString2)
  {
    paramString2 = new HashMap();
    paramString2.put("appId", "10185912");
    paramString2.put("id", this.userId);
    paramString2.put("nickName", paramString1);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(paramString2), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "updateNickName");
    paramString1.doRequest(paramString1);
  }
  
  private void updatePassowrd(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("id", paramString3);
    localHashMap.put("oldPassword", paramString2);
    localHashMap.put("password", paramString1);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "updatePassword");
    paramString1.doRequest(paramString1);
  }
  
  private void updateSex(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("id", paramString2);
    localHashMap.put("sex", paramString1);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "updateSex");
    paramString1.doRequest(paramString1);
  }
  
  private void updateSignName(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("id", paramString2);
    localHashMap.put("signName", paramString1);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "updateSignName");
    paramString1.doRequest(paramString1);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362129: 
      finish();
      return;
    case 2131362131: 
      checkFormat();
      return;
    case 2131362143: 
      this.famel.setBackgroundResource(2130837760);
      this.male.setBackgroundResource(2130837781);
      this.sex = "0";
      return;
    }
    this.famel.setBackgroundResource(2130837781);
    this.male.setBackgroundResource(2130837760);
    this.sex = "1";
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903082);
    this.operateType = getIntent().getIntExtra("type", 1);
    this.a = new ClientPersionInfo(this.context);
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new pq(this);
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/UpdateInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */