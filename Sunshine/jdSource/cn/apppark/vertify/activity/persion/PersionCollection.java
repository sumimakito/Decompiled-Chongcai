package cn.apppark.vertify.activity.persion;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.base.BaseReturnVo;
import cn.apppark.mcd.vo.buy.BuyCollectionVo;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.tieba.TMyCollectionVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.activity.buy.adapter.BuyCollectionAdapter;
import cn.apppark.vertify.activity.buy.adapter.BuyCollectionMsgAdapter;
import cn.apppark.vertify.activity.tieba.TBBaseAct;
import cn.apppark.vertify.adapter.TCollectionAdapter;
import cn.apppark.vertify.adapter.ViewPagerAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import oa;
import ob;
import oc;
import od;
import oe;
import of;
import og;
import oh;

public class PersionCollection
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int GET_MSG_WHAT = 2;
  private final int GET_PRODUCT_WHAT = 3;
  private final int GET_TOPIC_WHAT = 1;
  private final int PAGE_CHANGE = 0;
  boolean a = true;
  private BuyCollectionMsgAdapter adapter_msg;
  private BuyCollectionAdapter adapter_product;
  private TCollectionAdapter adapter_topic;
  boolean b = true;
  private Button btn_back;
  boolean c = true;
  private ArrayList<RelativeLayout> cell = new ArrayList();
  private Context context = this;
  private int curPage_msg = 1;
  private int curPage_product = 1;
  private int curPage_topic = 1;
  private int currentFacePage;
  private oh handler;
  private ArrayList<DynMsgListReturnVo> item_msgs = new ArrayList();
  private ArrayList<BuyCollectionVo> item_product = new ArrayList();
  private ArrayList<TMyCollectionVo> item_topic = new ArrayList();
  private ArrayList<TextView> line = new ArrayList();
  private PullDownListView4 list_msg;
  private PullDownListView4 list_product;
  private PullDownListView4 list_topic;
  private LinearLayout ll_title;
  private LoadDataProgress load;
  private ArrayList<View> pageViews = new ArrayList();
  private RelativeLayout rel_msg;
  private RelativeLayout rel_product;
  private RelativeLayout rel_topic;
  private ArrayList<TextView> titleText = new ArrayList();
  private TextView tv_lineMsg;
  private TextView tv_lineProduct;
  private TextView tv_lineTopic;
  private TextView tv_msg;
  private TextView tv_product;
  private TextView tv_title;
  private TextView tv_topic;
  private ViewPager viewPager;
  
  private void changeMenuBgState(int paramInt)
  {
    int i = 0;
    while (i < this.titleText.size())
    {
      ((TextView)this.titleText.get(i)).setTextColor(-7829368);
      ((TextView)this.line.get(i)).setVisibility(8);
      i += 1;
    }
    ((TextView)this.titleText.get(paramInt)).setTextColor(-16777216);
    ((TextView)this.line.get(paramInt)).setVisibility(0);
  }
  
  private void checkResult(PullDownListView4 paramPullDownListView4, ArrayList<? extends BaseReturnVo> paramArrayList)
  {
    if (paramArrayList != null) {
      paramArrayList.size();
    }
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramPullDownListView4.onFootNodata(((BaseReturnVo)paramArrayList.get(0)).getCount(), paramArrayList.size());
      return;
    }
    paramPullDownListView4.onFootNodata(0, 0);
  }
  
  private PullDownListView4 getListView()
  {
    PullDownListView4 localPullDownListView4 = new PullDownListView4(this.context);
    localPullDownListView4.setHeaderDividersEnabled(false);
    localPullDownListView4.setFooterDividersEnabled(false);
    localPullDownListView4.setDivider(getResources().getDrawable(2130837733));
    localPullDownListView4.setVerticalScrollBarEnabled(false);
    localPullDownListView4.setFadingEdgeLength(0);
    return localPullDownListView4;
  }
  
  private void getMsgCollection(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "newsFavorites");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getMyTopicCollection(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getCollectionList");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getProductCollection(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", getInfo().getUserId());
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "myFavorites");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initBaseView()
  {
    if (this.a)
    {
      getMsgCollection(this.curPage_msg, 2);
      this.titleText.add(this.tv_msg);
      this.line.add(this.tv_lineMsg);
      this.cell.add(this.rel_msg);
      this.rel_topic.setOnClickListener(this);
      this.list_msg = getListView();
      this.list_msg.setonFootRefreshListener(new ob(this));
      this.list_msg.setOnItemClickListener(new oc(this));
      this.pageViews.add(this.list_msg);
      if (!this.b) {
        break label363;
      }
      getProductCollection(this.curPage_product, 3);
      this.titleText.add(this.tv_product);
      this.line.add(this.tv_lineProduct);
      this.cell.add(this.rel_product);
      this.rel_product.setOnClickListener(this);
      this.list_product = getListView();
      this.list_product.setonFootRefreshListener(new od(this));
      this.list_product.setOnItemClickListener(new oe(this));
      this.pageViews.add(this.list_product);
      label220:
      if (!this.c) {
        break label375;
      }
      getMyTopicCollection(this.curPage_topic, 1);
      this.titleText.add(this.tv_topic);
      this.line.add(this.tv_lineTopic);
      this.cell.add(this.rel_topic);
      this.rel_msg.setOnClickListener(this);
      this.list_topic = getListView();
      this.list_topic.setonFootRefreshListener(new of(this));
      this.list_topic.setOnItemClickListener(new og(this));
      this.pageViews.add(this.list_topic);
    }
    for (;;)
    {
      if (this.pageViews.size() > 1) {
        break label387;
      }
      this.ll_title.setVisibility(8);
      return;
      this.rel_msg.setVisibility(8);
      break;
      label363:
      this.rel_product.setVisibility(8);
      break label220;
      label375:
      this.rel_topic.setVisibility(8);
    }
    label387:
    this.ll_title.setVisibility(0);
  }
  
  private void initTopMenu()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131362529);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362887));
    this.tv_title = ((TextView)findViewById(2131362886));
    this.tv_title.setText("我的收藏");
    this.btn_back.setOnClickListener(this);
  }
  
  private void initWidget()
  {
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new oh(this, null);
    this.viewPager = ((ViewPager)findViewById(2131362540));
    this.tv_topic = ((TextView)findViewById(2131362538));
    this.tv_product = ((TextView)findViewById(2131362535));
    this.tv_msg = ((TextView)findViewById(2131362532));
    this.tv_lineTopic = ((TextView)findViewById(2131362539));
    this.tv_lineProduct = ((TextView)findViewById(2131362536));
    this.tv_lineMsg = ((TextView)findViewById(2131362533));
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_lineTopic);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_lineProduct);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_lineMsg);
    this.ll_title = ((LinearLayout)findViewById(2131362530));
    this.rel_topic = ((RelativeLayout)findViewById(2131362537));
    this.rel_product = ((RelativeLayout)findViewById(2131362534));
    this.rel_msg = ((RelativeLayout)findViewById(2131362531));
    initBaseView();
    this.viewPager.setAdapter(new ViewPagerAdapter(this.pageViews));
    this.viewPager.setCurrentItem(0);
    this.viewPager.setOnPageChangeListener(new oa(this));
  }
  
  private void setMsgCollectionData(ArrayList<DynMsgListReturnVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.item_msgs.addAll(paramArrayList);
      this.curPage_msg += 1;
    }
    if (this.adapter_msg == null)
    {
      this.adapter_msg = new BuyCollectionMsgAdapter(this.context, this.item_msgs);
      this.list_msg.setAdapter(this.adapter_msg);
    }
    this.adapter_msg.notifyDataSetChanged();
  }
  
  private void setProductCollectionData(ArrayList<BuyCollectionVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.item_product.addAll(paramArrayList);
      this.curPage_product += 1;
    }
    if (this.adapter_product == null)
    {
      this.adapter_product = new BuyCollectionAdapter(this.context, this.item_product);
      this.list_product.setAdapter(this.adapter_product);
      return;
    }
    this.adapter_product.notifyDataSetChanged();
  }
  
  private void setTopicData(ArrayList<TMyCollectionVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.item_topic.addAll(paramArrayList);
      this.curPage_topic += 1;
    }
    if (this.adapter_topic == null)
    {
      this.adapter_topic = new TCollectionAdapter(this.context, this.item_topic);
      this.list_topic.setAdapter(this.adapter_topic);
      return;
    }
    this.adapter_topic.notifyDataSetChanged();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362887: 
      finish();
      return;
    case 2131362531: 
      this.viewPager.setCurrentItem(0, true);
      return;
    case 2131362534: 
      this.viewPager.setCurrentItem(1, true);
      return;
    }
    this.viewPager.setCurrentItem(2, true);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903148);
    this.a = getIntent().getBooleanExtra("haveinfo", true);
    this.b = getIntent().getBooleanExtra("haveproduct", true);
    this.c = getIntent().getBooleanExtra("havetieba", true);
    initTopMenu();
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/PersionCollection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */