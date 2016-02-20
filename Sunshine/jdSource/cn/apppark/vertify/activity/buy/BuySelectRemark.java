package cn.apppark.vertify.activity.buy;

import android.content.Intent;
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

public class BuySelectRemark
  extends BuyBaseAct
  implements View.OnClickListener
{
  private Button btn_back;
  private Button btn_offline;
  private Button btn_online;
  private Button btn_sure;
  private EditText et_remark;
  private String isPayMoney;
  private String isPayinLine;
  private LinearLayout ll_pay;
  private LinearLayout ll_remark;
  private int operateType;
  private int position;
  private String remark;
  private TextView tv_title;
  
  private void changePayState()
  {
    if ("1".equals(this.isPayinLine)) {
      this.btn_online.setVisibility(0);
    }
    while ("1".equals(this.isPayMoney))
    {
      this.btn_offline.setVisibility(0);
      return;
      this.btn_online.setVisibility(8);
    }
    this.btn_offline.setVisibility(8);
  }
  
  private void changeShowState()
  {
    if (this.operateType == BuyBaseParam.OPERATE_GET_REMARK)
    {
      this.tv_title.setText("购买备注");
      this.ll_pay.setVisibility(8);
      if (this.remark != null) {
        this.et_remark.setText(this.remark);
      }
      return;
    }
    if (this.operateType == BuyBaseParam.OPERATE_SEL_PAYTYPE)
    {
      this.tv_title.setText("支付方式选择");
      this.et_remark.setVisibility(8);
      this.ll_remark.setVisibility(8);
      this.btn_sure.setVisibility(8);
      changePayState();
      return;
    }
    this.tv_title.setText("取消理由");
    this.ll_pay.setVisibility(8);
    this.et_remark.setHint("请输入取消订单的原因，如果不需要填写可直接返回");
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.ll_pay = ((LinearLayout)findViewById(2131362094));
    this.ll_remark = ((LinearLayout)findViewById(2131362092));
    this.tv_title = ((TextView)findViewById(2131362090));
    this.btn_sure = ((Button)findViewById(2131362091));
    this.btn_back = ((Button)findViewById(2131362089));
    this.btn_online = ((Button)findViewById(2131362095));
    this.btn_offline = ((Button)findViewById(2131362096));
    ButtonColorFilter.setButtonFocusChanged(this.btn_sure);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.et_remark = ((EditText)findViewById(2131362093));
    this.btn_sure.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.btn_online.setOnClickListener(this);
    this.btn_offline.setOnClickListener(this);
    changeShowState();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362090: 
    case 2131362092: 
    case 2131362093: 
    case 2131362094: 
    default: 
    case 2131362089: 
    case 2131362091: 
      do
      {
        return;
        if (this.operateType == BuyBaseParam.OPERATE_GET_REASON) {
          setResult(1);
        }
        finish();
        return;
        if (this.operateType != BuyBaseParam.OPERATE_GET_REMARK) {
          break;
        }
      } while (this.position == -1);
      Object localObject = this.et_remark.getText().toString();
      paramView = (View)localObject;
      if (localObject == null) {
        paramView = "";
      }
      localObject = new Intent();
      ((Intent)localObject).putExtra("remark", paramView);
      ((Intent)localObject).putExtra("position", this.position);
      setResult(1, (Intent)localObject);
      finish();
      return;
      paramView = new Intent();
      paramView.putExtra("remark", this.et_remark.getText().toString());
      setResult(1, paramView);
      finish();
      return;
    case 2131362096: 
      paramView = new Intent();
      paramView.putExtra("paytype", BuyBaseParam.PAYTYPE_OFFLINE);
      paramView.putExtra("position", this.position);
      setResult(1, paramView);
      finish();
      return;
    }
    paramView = new Intent();
    paramView.putExtra("paytype", BuyBaseParam.PAYTYPE_ONLINE);
    paramView.putExtra("position", this.position);
    setResult(1, paramView);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903076);
    this.position = getIntent().getIntExtra("position", -1);
    this.operateType = getIntent().getIntExtra("operatetype", BuyBaseParam.OPERATE_GET_REMARK);
    if (this.operateType == BuyBaseParam.OPERATE_SEL_PAYTYPE)
    {
      this.isPayinLine = getIntent().getStringExtra("ispayinline");
      this.isPayMoney = getIntent().getStringExtra("ispaymoney");
    }
    for (;;)
    {
      initWidget();
      return;
      this.remark = getIntent().getStringExtra("remark");
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuySelectRemark.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */