package cn.apppark.vertify.activity.persion;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.activity.buy.BuyBaseAct;

public class RegNew
  extends BuyBaseAct
  implements View.OnClickListener
{
  private Button btn_back;
  private Button btn_next;
  private EditText et_email;
  private EditText et_password;
  private EditText et_phone;
  private EditText et_repassword;
  
  private void checkLoginFormat()
  {
    if (!this.et_repassword.getText().toString().trim().equals(this.et_password.getText().toString().trim())) {
      HQCHApplication.instance.initToast("两次密码不一致", 0);
    }
    do
    {
      return;
      if ("".equals(this.et_email.getText().toString().trim()))
      {
        HQCHApplication.instance.initToast("请输入邮箱", 0);
        return;
      }
      if ("".equals(this.et_password.getText().toString().trim()))
      {
        HQCHApplication.instance.initToast("请输入密码", 0);
        return;
      }
      if ("".equals(this.et_phone.getText().toString().trim()))
      {
        HQCHApplication.instance.initToast("请输入手机", 0);
        return;
      }
    } while ("".equals(this.et_email.getText().toString().trim()));
    if (!PublicUtil.checkEmail(this.et_email.getText().toString().trim()))
    {
      HQCHApplication.instance.initToast("请输入正确的邮箱", 0);
      return;
    }
    if (!PublicUtil.chekMobilePhone(this.et_phone.getText().toString().trim()))
    {
      HQCHApplication.instance.initToast("请输入正确的手机号码", 0);
      return;
    }
    Intent localIntent = new Intent(this, RegNewStep2.class);
    localIntent.putExtra("phone", this.et_phone.getText().toString().trim());
    localIntent.putExtra("password", this.et_password.getText().toString().trim());
    localIntent.putExtra("email", this.et_email.getText().toString().trim());
    startActivityForResult(localIntent, 1);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_next = ((Button)findViewById(2131362500));
    this.btn_back = ((Button)findViewById(2131362499));
    ButtonColorFilter.setButtonFocusChanged(this.btn_next);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.et_email = ((EditText)findViewById(2131362504));
    this.et_password = ((EditText)findViewById(2131362502));
    this.et_repassword = ((EditText)findViewById(2131362503));
    this.et_phone = ((EditText)findViewById(2131362501));
    this.btn_next.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 1)
    {
      setResult(1);
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362499: 
      finish();
      return;
    }
    checkLoginFormat();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903143);
    this.loadDialog = createLoadingDialog(2131230756);
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/RegNew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */