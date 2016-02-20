package cn.apppark.vertify.activity.buy;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import dg;
import java.util.HashMap;
import java.util.Map;

public class BuyMyCenter
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final String GET_NUMBER = "detail";
  private final int GET_NUMBER_WHAT = 5;
  private Button btn_back;
  private dg handler;
  private LinearLayout ll_address;
  private LinearLayout ll_buycar;
  private LinearLayout ll_history;
  private LinearLayout ll_mycollection;
  private LinearLayout ll_myorder;
  private LinearLayout ll_productReplay;
  private TextView tv_commentcount;
  
  private void getNumber(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("id", getInfo().getUserId());
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "detail");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.tv_commentcount = ((TextView)findViewById(2131361946));
    this.ll_myorder = ((LinearLayout)findViewById(2131361941));
    this.ll_mycollection = ((LinearLayout)findViewById(2131361944));
    this.ll_history = ((LinearLayout)findViewById(2131361943));
    this.ll_address = ((LinearLayout)findViewById(2131361947));
    this.ll_buycar = ((LinearLayout)findViewById(2131361942));
    this.ll_productReplay = ((LinearLayout)findViewById(2131361945));
    this.btn_back = ((Button)findViewById(2131361940));
    this.ll_myorder.setOnClickListener(this);
    this.ll_mycollection.setOnClickListener(this);
    this.ll_history.setOnClickListener(this);
    this.ll_address.setOnClickListener(this);
    this.ll_buycar.setOnClickListener(this);
    this.ll_productReplay.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
  }
  
  public void onClick(View paramView)
  {
    if ((paramView.getId() != 2131361940) && (getInfo().getUserId() == null))
    {
      startActivity(new Intent(this, YYGYContants.getLoginClass()));
      return;
    }
    switch (paramView.getId())
    {
    case 2131361946: 
    default: 
      return;
    case 2131361940: 
      finish();
      return;
    case 2131361941: 
      startActivity(new Intent(this, BuyMyOrderList.class));
      return;
    case 2131361944: 
      startActivity(new Intent(this, BuyProductCollection.class));
      return;
    case 2131361943: 
      startActivity(new Intent(this, BuyViewHistory.class));
      return;
    case 2131361947: 
      startActivity(new Intent(this, BuyAddressList.class));
      return;
    case 2131361942: 
      startActivity(new Intent(this, BuyBuyCar.class));
      return;
    }
    startActivity(new Intent(this, BuyProCommentList.class));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903061);
    initWidget();
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new dg(this, null);
  }
  
  protected void onResume()
  {
    getNumber(5);
    super.onResume();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyMyCenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */