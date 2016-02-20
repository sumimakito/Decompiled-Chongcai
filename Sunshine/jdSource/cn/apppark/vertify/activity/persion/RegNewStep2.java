package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.buy.BuyRegVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import pc;
import pd;

public class RegNewStep2
  extends BuyBaseAct
  implements View.OnClickListener
{
  private String METHOD_CODE = "getCode";
  private String METHOD_REG = "registerNew";
  private final int WHAT_CODE = 2;
  private final int WHAT_REG = 1;
  private Button btn_back;
  private Button btn_sure;
  private String email;
  private EditText et_code;
  private EditText et_nikeName;
  private RadioGroup group_sex;
  private pd handler;
  private RemoteImageView img_code;
  private String password;
  private String phone;
  private BuyRegVo regVo;
  private String sex = "1";
  
  private void checkLoginFormat()
  {
    if (StringUtil.isNull(this.et_nikeName.getText().toString().trim()))
    {
      initToast("请输入昵称", 0);
      return;
    }
    if (StringUtil.isNull(this.et_code.getText().toString().trim()))
    {
      initToast("请输入验证码", 0);
      return;
    }
    this.loadDialog.show();
    subData(1);
  }
  
  private void getCode(int paramInt)
  {
    Object localObject = new HashMap();
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", this.METHOD_CODE);
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    getCode(2);
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_sure = ((Button)findViewById(2131362506));
    this.btn_back = ((Button)findViewById(2131362505));
    ButtonColorFilter.setButtonFocusChanged(this.btn_sure);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.et_nikeName = ((EditText)findViewById(2131362507));
    this.et_code = ((EditText)findViewById(2131362511));
    this.img_code = ((RemoteImageView)findViewById(2131362512));
    this.group_sex = ((RadioGroup)findViewById(2131362508));
    this.img_code.setOnClickListener(this);
    this.btn_sure.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.group_sex.setOnCheckedChangeListener(new pc(this));
  }
  
  private void subData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("nickName", this.et_nikeName.getText().toString());
    ((Map)localObject).put("sex", this.sex);
    ((Map)localObject).put("email", this.email);
    ((Map)localObject).put("password", this.password);
    ((Map)localObject).put("phone", this.phone);
    ((Map)localObject).put("code", this.et_code.getText().toString());
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", this.METHOD_REG);
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362505: 
      finish();
      return;
    case 2131362506: 
      checkLoginFormat();
      return;
    }
    this.loadDialog.show();
    getCode(2);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903144);
    this.loadDialog = createLoadingDialog(2131230756);
    this.phone = getIntent().getStringExtra("phone");
    this.email = getIntent().getStringExtra("email");
    this.password = getIntent().getStringExtra("password");
    this.handler = new pd(this);
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/RegNewStep2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */