package cn.apppark.vertify.activity.persion;

import android.app.Dialog;
import android.os.Bundle;
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
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import ny;

public class FindPass
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final int FINDPASS_WHAT = 1;
  private final String METHOD = "findPassword";
  private Button btn_back;
  private Button btn_sure;
  private EditText et_email;
  private EditText et_phone;
  private ny handler;
  private boolean isFinish = true;
  private LinearLayout ll_email;
  private TextView tv_tipsuccess;
  
  private void checkFormat()
  {
    if ("".equals(this.et_phone.getText().toString().trim())) {
      initToast("请输入手机", 0);
    }
    do
    {
      return;
      if ("".equals(this.et_email.getText().toString().trim()))
      {
        initToast("请输入邮箱", 0);
        return;
      }
      if (!PublicUtil.chekMobilePhone(this.et_phone.getText().toString().trim()))
      {
        initToast("手机格式错误", 0);
        return;
      }
      if (!PublicUtil.checkEmail(this.et_email.getText().toString().trim()))
      {
        initToast("邮箱格式错误", 0);
        return;
      }
    } while (!this.isFinish);
    this.isFinish = false;
    this.loadDialog.show();
    subData(1, this.et_email.getText().toString(), this.et_phone.getText().toString());
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_sure = ((Button)findViewById(2131362464));
    this.btn_back = ((Button)findViewById(2131362463));
    this.et_phone = ((EditText)findViewById(2131362466));
    this.et_email = ((EditText)findViewById(2131362467));
    this.tv_tipsuccess = ((TextView)findViewById(2131362468));
    this.tv_tipsuccess.setVisibility(8);
    this.ll_email = ((LinearLayout)findViewById(2131362465));
    ButtonColorFilter.setButtonFocusChanged(this.btn_sure);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_sure.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
  }
  
  private void subData(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("phone", paramString2);
    localHashMap.put("email", paramString1);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "findPassword");
    paramString1.doRequest(paramString1);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362463: 
      finish();
      return;
    }
    checkFormat();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903137);
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new ny(this);
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/FindPass.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */