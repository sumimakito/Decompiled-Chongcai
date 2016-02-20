package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import eu;
import java.util.HashMap;
import java.util.Map;

public class BuyProCommentSub
  extends BuyBaseAct
  implements View.OnClickListener
{
  public static final String METHOD = "commentProduct";
  private static final int SUB_DATA = 1;
  private Button btn_back;
  private Button btn_save;
  private Context context = this;
  private Dialog dialog;
  private EditText et_content;
  private eu handler;
  private String id;
  private ImageView img_star1;
  private ImageView img_star2;
  private ImageView img_star3;
  private int point = 1;
  private TextView tv_state;
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131361865));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(this);
    this.btn_save = ((Button)findViewById(2131362037));
    ButtonColorFilter.setButtonFocusChanged(this.btn_save);
    this.btn_save.setOnClickListener(this);
    this.tv_state = ((TextView)findViewById(2131362041));
    this.et_content = ((EditText)findViewById(2131362042));
    this.img_star1 = ((ImageView)findViewById(2131362038));
    this.img_star2 = ((ImageView)findViewById(2131362039));
    this.img_star3 = ((ImageView)findViewById(2131362040));
    this.img_star1.setOnClickListener(this);
    this.img_star2.setOnClickListener(this);
    this.img_star3.setOnClickListener(this);
  }
  
  private void subData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("id", this.id);
    ((Map)localObject).put("score", Integer.valueOf(this.point));
    ((Map)localObject).put("content", this.et_content.getText().toString());
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "commentProduct");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131361865: 
      finish();
      return;
    case 2131362037: 
      if ("".equals(this.et_content.getText().toString()))
      {
        HQCHApplication.instance.initToast("请输入评价", 0);
        return;
      }
      if (this.dialog == null)
      {
        this.dialog = HQCHApplication.createLoadingDialog(this.context, 2131230756);
        this.dialog.show();
      }
      subData(1);
      return;
    case 2131362038: 
      this.point = 3;
      this.img_star2.setBackgroundResource(2130837546);
      this.img_star3.setBackgroundResource(2130837546);
      this.tv_state.setText("差评");
      return;
    case 2131362039: 
      this.point = 2;
      this.img_star2.setBackgroundResource(2130837594);
      this.img_star3.setBackgroundResource(2130837546);
      this.tv_state.setText("中评");
      return;
    }
    this.point = 1;
    this.img_star2.setBackgroundResource(2130837594);
    this.img_star3.setBackgroundResource(2130837594);
    this.tv_state.setText("好评");
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    this.id = getIntent().getStringExtra("id");
    this.handler = new eu(this, null);
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyProCommentSub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */