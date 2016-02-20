package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.adapter.BuyOrderManagerAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import dh;
import di;
import dj;
import dk;
import dl;
import dm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyMyOrderList
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final int DEL_DATA = 3;
  private static final int INIT_DATA = 1;
  public static final String METHOD_DEL = "cancelOrder_sd";
  public static final String METHOD_ORDERLIST = "orderList_sd";
  private BuyOrderManagerAdapter adapter;
  private Button btn_back;
  private Context context = this;
  private int currentDelPositon;
  private int currentPage = 1;
  private dm handler;
  private boolean isFinish = true;
  private ArrayList<BuyOrderVo> itemList = new ArrayList();
  private PullDownListView listView;
  private LinearLayout ll_null;
  private LoadDataProgress load;
  private Dialog loadDialog;
  
  private void changeTipState()
  {
    if (this.itemList.size() == 0)
    {
      this.ll_null.setVisibility(0);
      return;
    }
    this.ll_null.setVisibility(8);
  }
  
  private void checkResult()
  {
    if (this.itemList.size() == 0) {
      HQCHApplication.instance.initToast("暂无内容", 0);
    }
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      this.listView.onFootNodata(((BuyOrderVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void delData(String paramString, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", getInfo().getUserId());
    localHashMap.put("id", paramString);
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "cancelOrder_sd");
    paramString.doRequest(paramString);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", "10");
    ((Map)localObject).put("isNew", Integer.valueOf(1));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "orderList_sd");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.ll_null = ((LinearLayout)findViewById(2131361832));
    this.ll_null.setVisibility(8);
    this.btn_back = ((Button)findViewById(2131361920));
    this.listView = ((PullDownListView)findViewById(2131361921));
    this.listView.setDividerHeight(0);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(this);
    this.listView.setonRefreshListener(new dh(this), true);
    this.listView.setonFootRefreshListener(new di(this));
    this.listView.setOnItemClickListener(new dj(this));
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 1);
  }
  
  private void setData(ArrayList<BuyOrderVo> paramArrayList)
  {
    if (this.currentPage == 1) {
      this.itemList.clear();
    }
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.itemList.addAll(paramArrayList);
      this.currentPage += 1;
    }
    if (this.adapter == null)
    {
      this.adapter = new BuyOrderManagerAdapter(this.context, this.itemList);
      this.listView.setAdapter(this.adapter);
      return;
    }
    this.adapter.notifyDataSetChanged();
  }
  
  public void del(String paramString, int paramInt)
  {
    if (this.isFinish)
    {
      this.currentDelPositon = paramInt;
      new DialogTwoBtn.Builder(HQCHApplication.mainActivity).setTitle(HQCHApplication.mainActivity.getString(2131230724)).setMessage("确定删除该订单? ").setPositiveButton(2131230728, new dl(this)).setNegativeButton(2131230729, new dk(this)).show();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 1)
    {
      this.listView.autoHeadRefresh();
      this.currentPage = 1;
      getData(this.currentPage, 1);
    }
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
    setContentView(2130903058);
    this.loadDialog = HQCHApplication.createLoadingDialog(HQCHApplication.mainActivity, 2131230756);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new dm(this, null);
    initWidget();
    getData(1, 1);
    this.load.show(2131230756, true, true, "255");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyMyOrderList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */