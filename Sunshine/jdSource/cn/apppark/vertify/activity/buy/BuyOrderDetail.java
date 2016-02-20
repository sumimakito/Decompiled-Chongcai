package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.buy.BuyAddressVo;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.adapter.BuyOrderDetailAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.HttpPostRequestPool;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import dp;
import dq;
import dr;
import ds;
import dt;
import du;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyOrderDetail
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int CANCEL_ORDER_WHAT = 2;
  private final int DELETE_ORDER_WHAT = 3;
  private final int GETDETAIL_WHAT = 1;
  private final String METHOD_CANCEL_ORDER = "cancelOrder_sd";
  private final String METHOD_GETDETAIL = "order_sd";
  private final String METHOD_RECEIVE = "receipt";
  private final int RECEIVE_DATA = 4;
  private BuyOrderDetailAdapter adapter;
  private BuyAddressVo addressVo;
  private Button btn_back;
  private Button btn_cancel;
  private Button btn_comment;
  private Button btn_delete;
  private Button btn_mail;
  private Button btn_payonline;
  private Button btn_sure;
  private int currentPage = 1;
  private du handler;
  private ArrayList<BuyOrderVo> itemList = new ArrayList();
  private ArrayList<BuyOrderVo> itemListTemp;
  private ListView listView;
  private LinearLayout ll_bottom;
  private LinearLayout ll_resaon;
  private LoadDataProgress load;
  private Dialog loadDialog;
  private String orderId;
  private String orderStatus;
  private BuyOrderVo orderVo;
  private RelativeLayout rel_payweixin;
  private RelativeLayout rel_payzhifubao;
  private TextView tv_address;
  private TextView tv_note;
  private TextView tv_ordernumber;
  private TextView tv_orderstate;
  private TextView tv_pay_weixin;
  private TextView tv_paytype;
  private TextView tv_payzhifubao;
  private TextView tv_phone;
  private TextView tv_reason;
  private TextView tv_receiver;
  private TextView tv_time;
  private TextView tv_totalnumber;
  private TextView tv_totalprice;
  
  private void cancelOrder(int paramInt, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("reason", paramString2);
    localHashMap.put("memberId", getInfo().getUserId());
    localHashMap.put("id", paramString1);
    paramString1 = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "cancelOrder_sd");
    paramString1.doRequest(paramString1);
  }
  
  private void deleteOrder(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("orderId", this.orderId);
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("appId", "10185912");
    localObject = new HttpPostRequestPool(paramInt, "http://www.apppark.cn/apliay_deleteOrder.action", this.handler, PublicUtil.map2Json((Map)localObject));
    ((HttpPostRequestPool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("id", this.orderId);
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "order_sd");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getZFBServiceState(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("orderId", this.orderId);
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("appId", "10185912");
    localObject = new HttpPostRequestPool(paramInt, "http://www.apppark.cn/apliay_order.action", this.handler, PublicUtil.map2Json((Map)localObject));
    ((HttpPostRequestPool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getZFBSign(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("orderId", this.orderId);
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("appId", "10185912");
    System.out.println("map......." + PublicUtil.map2Json((Map)localObject));
    localObject = new HttpPostRequestPool(paramInt, "http://www.apppark.cn/apliay_sign.action", this.handler, PublicUtil.map2Json((Map)localObject));
    ((HttpPostRequestPool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    Object localObject = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)localObject);
    this.ll_bottom = ((LinearLayout)findViewById(2131361887));
    this.btn_back = ((Button)findViewById(2131361885));
    this.btn_delete = ((Button)findViewById(2131361893));
    this.btn_mail = ((Button)findViewById(2131361888));
    this.btn_cancel = ((Button)findViewById(2131361889));
    this.btn_comment = ((Button)findViewById(2131361892));
    this.btn_sure = ((Button)findViewById(2131361891));
    this.btn_payonline = ((Button)findViewById(2131361890));
    this.btn_delete.setVisibility(8);
    this.btn_mail.setVisibility(8);
    this.btn_cancel.setVisibility(8);
    this.btn_comment.setVisibility(8);
    this.btn_sure.setVisibility(8);
    this.btn_payonline.setVisibility(8);
    ButtonColorFilter.setButtonFocusChanged(this.btn_delete);
    ButtonColorFilter.setButtonFocusChanged(this.btn_mail);
    ButtonColorFilter.setButtonFocusChanged(this.btn_cancel);
    ButtonColorFilter.setButtonFocusChanged(this.btn_comment);
    ButtonColorFilter.setButtonFocusChanged(this.btn_sure);
    ButtonColorFilter.setButtonFocusChanged(this.btn_payonline);
    this.btn_back.setOnClickListener(this);
    this.btn_delete.setOnClickListener(this);
    this.btn_mail.setOnClickListener(this);
    this.btn_cancel.setOnClickListener(this);
    this.btn_comment.setOnClickListener(this);
    this.btn_sure.setOnClickListener(this);
    this.btn_payonline.setOnClickListener(this);
    this.listView = ((ListView)findViewById(2131361886));
    this.listView.setDividerHeight(0);
    this.tv_time = ((TextView)findViewById(2131361902));
    localObject = (LayoutInflater)this.context.getSystemService("layout_inflater");
    View localView = ((LayoutInflater)localObject).inflate(2130903056, null);
    this.tv_orderstate = ((TextView)localView.findViewById(2131361901));
    this.tv_ordernumber = ((TextView)localView.findViewById(2131361900));
    this.tv_time = ((TextView)localView.findViewById(2131361902));
    this.tv_note = ((TextView)localView.findViewById(2131361903));
    this.tv_reason = ((TextView)localView.findViewById(2131361905));
    this.ll_resaon = ((LinearLayout)localView.findViewById(2131361904));
    this.ll_resaon.setVisibility(8);
    this.listView.addHeaderView(localView);
    localObject = ((LayoutInflater)localObject).inflate(2130903057, null);
    this.tv_phone = ((TextView)((View)localObject).findViewById(2131361909));
    this.tv_address = ((TextView)((View)localObject).findViewById(2131361910));
    this.tv_receiver = ((TextView)((View)localObject).findViewById(2131361908));
    this.tv_paytype = ((TextView)((View)localObject).findViewById(2131361912));
    this.tv_totalprice = ((TextView)((View)localObject).findViewById(2131361907));
    this.tv_totalnumber = ((TextView)((View)localObject).findViewById(2131361906));
    this.rel_payzhifubao = ((RelativeLayout)((View)localObject).findViewById(2131361913));
    this.rel_payweixin = ((RelativeLayout)((View)localObject).findViewById(2131361916));
    this.tv_payzhifubao = ((TextView)((View)localObject).findViewById(2131361914));
    this.tv_pay_weixin = ((TextView)((View)localObject).findViewById(2131361917));
    this.rel_payzhifubao.setOnClickListener(this);
    this.rel_payweixin.setOnClickListener(this);
    this.listView.addFooterView((View)localObject);
  }
  
  private void receiveData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("groupId", ((BuyOrderVo)this.itemList.get(0)).getGroupId());
    ((Map)localObject).put("id", this.orderId);
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "receipt");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void updateState()
  {
    this.tv_ordernumber.setText(this.orderVo.getOrderNumber());
    this.tv_note.setText(this.orderVo.getMsg());
    this.tv_time.setText(this.orderVo.getClinchTime());
    this.tv_totalprice.setText(" ￥" + this.orderVo.getTotalPrice());
    this.tv_totalnumber.setText("共" + this.orderVo.getTotalNumber() + "件商品");
    if (this.orderVo.getType() == BuyBaseParam.PAYTYPE_OFFLINE)
    {
      this.tv_paytype.setText(2131230771);
      this.rel_payweixin.setVisibility(8);
      this.rel_payzhifubao.setVisibility(8);
    }
    for (;;)
    {
      this.btn_delete.setVisibility(8);
      this.ll_bottom.setVisibility(0);
      switch (FunctionPublic.str2int(this.orderVo.getStatus()))
      {
      default: 
        return;
        this.tv_paytype.setText(2131230770);
        this.rel_payzhifubao.setVisibility(0);
      }
    }
    this.tv_orderstate.setBackgroundResource(2130837851);
    this.tv_reason.setText(this.orderVo.getReason());
    this.ll_resaon.setVisibility(0);
    this.btn_delete.setVisibility(0);
    return;
    this.tv_orderstate.setBackgroundResource(2130837854);
    this.ll_bottom.setVisibility(8);
    return;
    if (this.orderVo.getType() == BuyBaseParam.PAYTYPE_ONLINE) {
      this.tv_orderstate.setBackgroundResource(2130837855);
    }
    for (;;)
    {
      this.ll_bottom.setVisibility(8);
      return;
      this.tv_orderstate.setBackgroundResource(2130837857);
    }
    this.tv_orderstate.setBackgroundResource(2130837856);
    this.btn_mail.setVisibility(0);
    this.btn_sure.setVisibility(0);
    return;
    this.tv_orderstate.setBackgroundResource(2130837852);
    this.btn_comment.setVisibility(0);
    return;
    this.tv_orderstate.setBackgroundResource(2130837853);
    this.btn_cancel.setVisibility(0);
    this.btn_payonline.setVisibility(0);
  }
  
  public void cancel(String paramString, int paramInt)
  {
    createMsgDialog("温馨提示", "确定取消该订单?", new dp(this));
  }
  
  public void checkExistZFB(int paramInt)
  {
    new Thread(new dr(this)).start();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    String str = null;
    if (paramIntent != null) {
      str = paramIntent.getStringExtra("remark");
    }
    this.loadDialog.show();
    cancelOrder(2, this.orderId, str);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131361885: 
      finish();
      return;
    case 2131361893: 
      createMsgDialog("温馨提示", "确认删除该订单?", new ds(this));
      return;
    case 2131361888: 
      if ((this.orderVo != null) && (this.orderVo.getLogId() != null))
      {
        paramView = new Intent(this, BuyWebView.class);
        paramView.putExtra("title", "查物流");
        paramView.putExtra("urlStr", this.orderVo.getLogisticUrl());
        startActivity(paramView);
        return;
      }
      HQCHApplication.instance.initToast("暂无物流信息", 0);
      return;
    case 2131361889: 
      cancel(this.orderId, 2);
      return;
    case 2131361892: 
      startActivity(new Intent(this, BuyProCommentList.class));
      return;
    case 2131361891: 
      createMsgDialog("温馨提示", "确认收货?", new dt(this));
      return;
    case 2131361890: 
      this.loadDialog.show();
      checkExistZFB(8);
      return;
    case 2131361913: 
      this.tv_payzhifubao.setBackgroundResource(2130837760);
      this.tv_pay_weixin.setBackgroundResource(2130837781);
      return;
    }
    this.tv_payzhifubao.setBackgroundResource(2130837781);
    this.tv_pay_weixin.setBackgroundResource(2130837760);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903054);
    this.loadDialog = HQCHApplication.createLoadingDialog(this, 2131230756);
    this.orderId = getIntent().getStringExtra("id");
    this.orderStatus = getIntent().getStringExtra("orderstatus");
    if ((this.orderId == null) || (this.orderStatus == null))
    {
      finish();
      return;
    }
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new du(this, null);
    initWidget();
    getData(1, 1);
    this.load.show(2131230756, true, true, "255");
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
    new Thread(new dq(this, paramString1 + "&sign=\"" + paramString2 + "\"&sign_type=\"RSA\"", paramInt)).start();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyOrderDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */