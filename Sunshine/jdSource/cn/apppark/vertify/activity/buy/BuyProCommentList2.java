package cn.apppark.vertify.activity.buy;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyProCommentVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.adapter.BuyProComment2Adapter;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import ep;
import eq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyProCommentList2
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final int INIT_DATA = 1;
  public static final String METHOD = "commentList";
  private BuyProComment2Adapter adapter;
  private Button btn_all;
  private Button btn_back;
  private Button btn_bad;
  private Button btn_center;
  private Button btn_good;
  private Context context = this;
  private eq handler;
  private ArrayList<BuyProCommentVo> itemList;
  private PullDownListView list;
  private LoadDataProgress load;
  private String productId;
  private ArrayList<BuyProCommentVo> tempList_bad = new ArrayList();
  private ArrayList<BuyProCommentVo> tempList_center = new ArrayList();
  private ArrayList<BuyProCommentVo> tempList_good = new ArrayList();
  private TextView tv_all;
  private TextView tv_bad;
  private TextView tv_center;
  private TextView tv_good;
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("productId", this.productId);
    ((Map)localObject).put("start", Integer.valueOf(1));
    ((Map)localObject).put("pageSize", Integer.valueOf(999));
    ((Map)localObject).put("type", Integer.valueOf(paramInt1));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "commentList");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131361865));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(this);
    this.btn_all = ((Button)findViewById(2131362014));
    this.btn_good = ((Button)findViewById(2131362016));
    this.btn_center = ((Button)findViewById(2131362018));
    this.btn_bad = ((Button)findViewById(2131362020));
    this.tv_all = ((TextView)findViewById(2131362015));
    this.tv_good = ((TextView)findViewById(2131362017));
    this.tv_center = ((TextView)findViewById(2131362019));
    this.tv_bad = ((TextView)findViewById(2131362021));
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_all);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_good);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_center);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_bad);
    this.btn_all.setOnClickListener(this);
    this.btn_good.setOnClickListener(this);
    this.btn_center.setOnClickListener(this);
    this.btn_bad.setOnClickListener(this);
    this.list = ((PullDownListView)findViewById(2131362022));
    this.list.setDividerHeight(0);
    this.list.setFooterDividersEnabled(false);
    this.list.setHeaderDividersEnabled(false);
    this.list.setonRefreshListener(new ep(this), false);
  }
  
  public void onClick(View paramView)
  {
    this.tv_all.setVisibility(8);
    this.tv_good.setVisibility(8);
    this.tv_center.setVisibility(8);
    this.tv_bad.setVisibility(8);
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131361865: 
      finish();
      return;
    case 2131362014: 
      this.btn_all.setTextColor(-16777216);
      this.btn_good.setTextColor(getResources().getColor(2130837923));
      this.btn_center.setTextColor(getResources().getColor(2130837923));
      this.btn_bad.setTextColor(getResources().getColor(2130837923));
      this.tv_all.setVisibility(0);
      this.adapter = null;
      this.adapter = new BuyProComment2Adapter(this.context, this.itemList, false);
      this.list.setAdapter(this.adapter);
      return;
    case 2131362016: 
      this.btn_all.setTextColor(getResources().getColor(2130837923));
      this.btn_good.setTextColor(-16777216);
      this.btn_center.setTextColor(getResources().getColor(2130837923));
      this.btn_bad.setTextColor(getResources().getColor(2130837923));
      this.tv_good.setVisibility(0);
      this.adapter = null;
      this.adapter = new BuyProComment2Adapter(this.context, this.tempList_good, false);
      this.list.setAdapter(this.adapter);
      return;
    case 2131362018: 
      this.btn_all.setTextColor(getResources().getColor(2130837923));
      this.btn_good.setTextColor(getResources().getColor(2130837923));
      this.btn_center.setTextColor(-16777216);
      this.btn_bad.setTextColor(getResources().getColor(2130837923));
      this.tv_center.setVisibility(0);
      this.adapter = null;
      this.adapter = new BuyProComment2Adapter(this.context, this.tempList_center, false);
      this.list.setAdapter(this.adapter);
      return;
    }
    this.btn_all.setTextColor(getResources().getColor(2130837923));
    this.btn_good.setTextColor(getResources().getColor(2130837923));
    this.btn_center.setTextColor(getResources().getColor(2130837923));
    this.btn_bad.setTextColor(-16777216);
    this.tv_bad.setVisibility(0);
    this.adapter = null;
    this.adapter = new BuyProComment2Adapter(this.context, this.tempList_bad, false);
    this.list.setAdapter(this.adapter);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903068);
    this.productId = getIntent().getStringExtra("id");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new eq(this, null);
    initWidget();
    this.load.show(2131230756, true, true, "255");
    getData(0, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyProCommentList2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */