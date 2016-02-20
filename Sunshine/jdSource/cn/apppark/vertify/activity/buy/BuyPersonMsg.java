package cn.apppark.vertify.activity.buy;

import android.content.Context;
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
import ed;
import java.util.HashMap;
import java.util.Map;

public class BuyPersonMsg
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final String GET_NUMBER = "detail";
  private final int GET_NUMBER_WHAT = 5;
  private Button btn_back;
  private Context context = this;
  private ed handler;
  private LinearLayout ll_msgReplay;
  private LinearLayout ll_mycollection;
  private TextView tv_msgcomment;
  
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
    this.ll_mycollection = ((LinearLayout)findViewById(2131361993));
    this.ll_msgReplay = ((LinearLayout)findViewById(2131361991));
    this.btn_back = ((Button)findViewById(2131361990));
    this.tv_msgcomment = ((TextView)findViewById(2131361992));
    this.ll_mycollection.setOnClickListener(this);
    this.ll_msgReplay.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
  }
  
  public void onClick(View paramView)
  {
    if ((paramView.getId() != 2131361990) && (getInfo().getUserId() == null))
    {
      startActivity(new Intent(this, YYGYContants.getLoginClass()));
      return;
    }
    switch (paramView.getId())
    {
    case 2131361992: 
    default: 
      return;
    case 2131361990: 
      finish();
      return;
    case 2131361993: 
      startActivity(new Intent(this, BuyCollectionMsgList.class));
      return;
    }
    startActivity(new Intent(this, BuyMsgCommentList.class));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903065);
    initWidget();
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new ed(this, null);
  }
  
  protected void onResume()
  {
    getNumber(5);
    super.onResume();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyPersonMsg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */