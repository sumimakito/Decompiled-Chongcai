package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bp;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyAddressVo;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;

public class BuyAddAddress
  extends BuyBaseAct
{
  private static final int ADD_WHAT = 1;
  public static final String SUB_METHOD = "saveOrUpdateContact";
  private String ADD_ADDRESS = "0";
  private BuyAddressVo addressVo;
  private String areaId;
  private Button btn_back;
  private Button btn_default;
  private Button btn_save;
  private Context context = this;
  private EditText et_address;
  private EditText et_code;
  private EditText et_phone;
  private EditText et_username;
  private bp handler;
  private String isDefault = "0";
  private boolean isFinish = true;
  private LinearLayout ll_default;
  private Dialog loadDialog;
  private String operateType;
  private TextView tv_area;
  private TextView tv_name;
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.ll_default = ((LinearLayout)findViewById(2131361802));
    this.btn_save = ((Button)findViewById(2131361796));
    this.btn_back = ((Button)findViewById(2131361794));
    this.btn_default = ((Button)findViewById(2131361803));
    this.et_username = ((EditText)findViewById(2131361797));
    this.et_phone = ((EditText)findViewById(2131361798));
    this.et_code = ((EditText)findViewById(2131361799));
    this.tv_area = ((TextView)findViewById(2131361800));
    this.et_address = ((EditText)findViewById(2131361801));
    ButtonColorFilter.setButtonFocusChanged(this.btn_save);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    if (this.addressVo != null)
    {
      this.et_username.setText(this.addressVo.getName());
      this.et_phone.setText(this.addressVo.getPhone());
      this.et_code.setText(this.addressVo.getPostalcode());
      this.tv_area.setText(this.addressVo.getAddress1());
      this.et_address.setText(this.addressVo.getAddress2());
      if (!"1".equals(this.addressVo.getIsDefault())) {
        break label310;
      }
      this.btn_default.setBackgroundResource(2130837760);
    }
    for (;;)
    {
      this.ll_default.setOnClickListener(new BuyAddAddress.1(this));
      this.btn_save.setOnClickListener(new BuyAddAddress.2(this));
      this.btn_back.setOnClickListener(new BuyAddAddress.3(this));
      this.tv_area.setOnClickListener(new BuyAddAddress.4(this));
      return;
      label310:
      this.btn_default.setBackgroundResource(2130837781);
    }
  }
  
  private void subData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("name", this.et_username.getText().toString());
    ((Map)localObject).put("id", this.operateType);
    ((Map)localObject).put("phone", this.et_phone.getText().toString());
    ((Map)localObject).put("postalcode", this.et_code.getText().toString());
    ((Map)localObject).put("areaId", this.areaId);
    ((Map)localObject).put("address2", this.et_address.getText().toString());
    ((Map)localObject).put("isDefault", this.isDefault);
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "saveOrUpdateContact");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 1)
    {
      String str = paramIntent.getStringExtra("name");
      this.areaId = paramIntent.getStringExtra("id");
      this.tv_area.setText(str);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    this.tv_name = ((TextView)findViewById(2131361795));
    this.addressVo = ((BuyAddressVo)getIntent().getSerializableExtra("addressvo"));
    if (this.addressVo != null)
    {
      this.operateType = this.addressVo.getId();
      this.areaId = this.addressVo.getAreaId();
      this.isDefault = this.addressVo.getIsDefault();
      this.tv_name.setText("修改地址");
    }
    for (;;)
    {
      this.loadDialog = createLoadingDialog(2131230756);
      this.handler = new bp(this);
      initWidget();
      return;
      this.operateType = this.ADD_ADDRESS;
      this.isDefault = "0";
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyAddAddress.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */