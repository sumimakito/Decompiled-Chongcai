package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.adapter.BuySubOrderResultAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.HttpPostRequestPool;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import fv;
import fw;
import fx;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuySubOrderResult
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final int INIT_DATA = 1;
  public static final String METHOD = "orderList";
  private BuySubOrderResultAdapter adapter;
  private Button btn_back;
  private Context context = this;
  private BuyOrderVo currentOrderVo;
  private int currentPage = 1;
  private fx handler;
  private String ids;
  private ArrayList<BuyOrderVo> itemList = new ArrayList();
  private ListView listView;
  private LinearLayout ll_success;
  private LoadDataProgress load;
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("ids", this.ids);
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "orderList");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getZFBServiceState(int paramInt, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("orderId", paramString);
    localHashMap.put("memberId", getInfo().getUserId());
    localHashMap.put("appId", "10185912");
    paramString = new HttpPostRequestPool(paramInt, "http://www.apppark.cn/apliay_order.action", this.handler, PublicUtil.map2Json(localHashMap));
    paramString.doRequest(paramString);
  }
  
  private void getZFBSign(int paramInt, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("orderId", paramString);
    localHashMap.put("memberId", getInfo().getUserId());
    localHashMap.put("appId", "10185912");
    paramString = new HttpPostRequestPool(paramInt, "http://www.apppark.cn/apliay_sign.action", this.handler, PublicUtil.map2Json(localHashMap));
    paramString.doRequest(paramString);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362098));
    this.listView = ((ListView)findViewById(2131362100));
    this.listView.setDividerHeight(0);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.ll_success = ((LinearLayout)findViewById(2131362099));
    this.btn_back.setOnClickListener(this);
  }
  
  public void checkExistZFB(int paramInt)
  {
    new Thread(new fw(this)).start();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903077);
    this.ids = getIntent().getStringExtra("ids");
    this.loadDialog = HQCHApplication.createLoadingDialog(HQCHApplication.mainActivity, 2131230756);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new fx(this, null);
    initWidget();
    getData(1, 1);
    this.load.show(2131230756, true, true, "255");
  }
  
  public void payOnline(int paramInt)
  {
    this.currentOrderVo = ((BuyOrderVo)this.itemList.get(paramInt));
    if (this.currentOrderVo != null)
    {
      this.loadDialog.show();
      checkExistZFB(8);
    }
  }
  
  public void payZFB(int paramInt, String paramString1, String paramString2)
  {
    paramString2 = paramString2.replace(" ", "+");
    try
    {
      String str = URLEncoder.encode(paramString2, "UTF-8");
      paramString2 = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    new Thread(new fv(this, paramString1 + "&sign=\"" + paramString2 + "\"&sign_type=\"RSA\"", paramInt)).start();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuySubOrderResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */