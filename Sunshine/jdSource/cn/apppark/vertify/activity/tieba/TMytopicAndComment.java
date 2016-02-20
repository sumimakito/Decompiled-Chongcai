package cn.apppark.vertify.activity.tieba;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyBaseReturnVo;
import cn.apppark.mcd.vo.tieba.TMyCommentVo;
import cn.apppark.mcd.vo.tieba.TMyTopicVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.adapter.TMyCommentAdapter;
import cn.apppark.vertify.adapter.TMyTopicAdapter;
import cn.apppark.vertify.adapter.ViewPagerAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import ta;
import tb;
import tc;
import td;
import te;

public class TMytopicAndComment
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int GET_COMMENT_WHAT = 2;
  private final int GET_TOPIC_WHAT = 1;
  private final int PAGE_CHANGE = 3;
  private TMyCommentAdapter adapter_myComment;
  private TMyTopicAdapter adapter_myTopic;
  private Button btn_back;
  private Context context = this;
  private int currentFacePage;
  private int currentPage_myComment = 1;
  private int currentPage_myTopic = 1;
  private te handler;
  private ArrayList<TMyCommentVo> itemList_myComment = new ArrayList();
  private ArrayList<TMyTopicVo> itemList_myTopic = new ArrayList();
  private PullDownListView4 listView_myComment;
  private PullDownListView4 listView_myTopic;
  private LoadDataProgress load;
  private ArrayList<View> pageViews = new ArrayList();
  private TextView tv_comment;
  private TextView tv_lineComment;
  private TextView tv_lineTopic;
  private TextView tv_title;
  private TextView tv_topic;
  private ViewPager viewPager;
  
  private void checkResult(PullDownListView4 paramPullDownListView4, ArrayList<? extends BuyBaseReturnVo> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0)) {
      HQCHApplication.instance.initToast("暂无内容", 0);
    }
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramPullDownListView4.onFootNodata(((BuyBaseReturnVo)paramArrayList.get(0)).getCount(), paramArrayList.size());
      return;
    }
    paramPullDownListView4.onFootNodata(0, 0);
  }
  
  private void getMyComment(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getMyComment");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getMyTopic(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getMyTopic");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initTopMenu()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131362529);
    FunctionPublic.setBackgroundColor(TBaseParam.TOPMENU_BGCOLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362887));
    this.tv_title = ((TextView)findViewById(2131362886));
    this.tv_title.setText("我的主题");
    this.btn_back.setOnClickListener(this);
  }
  
  private void initWidget()
  {
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new te(this, null);
    this.viewPager = ((ViewPager)findViewById(2131362949));
    this.tv_topic = ((TextView)findViewById(2131362944));
    this.tv_comment = ((TextView)findViewById(2131362945));
    this.tv_lineTopic = ((TextView)findViewById(2131362947));
    this.tv_lineComment = ((TextView)findViewById(2131362948));
    this.tv_topic.setOnClickListener(this);
    this.tv_comment.setOnClickListener(this);
    this.listView_myTopic = new PullDownListView4(this.context);
    this.listView_myTopic.setDividerHeight(0);
    this.listView_myTopic.setVerticalScrollBarEnabled(false);
    this.listView_myTopic.setFadingEdgeLength(0);
    this.listView_myTopic.setonFootRefreshListener(new ta(this));
    this.listView_myTopic.setOnItemClickListener(new tb(this));
    this.listView_myComment = new PullDownListView4(this.context);
    this.listView_myComment.setDividerHeight(0);
    this.listView_myComment.setVerticalScrollBarEnabled(false);
    this.listView_myComment.setFadingEdgeLength(0);
    this.listView_myComment.setonFootRefreshListener(new tc(this));
    this.pageViews.add(this.listView_myTopic);
    this.pageViews.add(this.listView_myComment);
    this.viewPager.setAdapter(new ViewPagerAdapter(this.pageViews));
    this.viewPager.setCurrentItem(0);
    this.viewPager.setOnPageChangeListener(new td(this));
  }
  
  private void setCommentData(ArrayList<TMyCommentVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.itemList_myComment.addAll(paramArrayList);
      this.currentPage_myComment += 1;
    }
    if (this.adapter_myComment == null)
    {
      this.adapter_myComment = new TMyCommentAdapter(this.context, this.itemList_myComment);
      this.listView_myComment.setAdapter(this.adapter_myComment);
      return;
    }
    this.adapter_myComment.notifyDataSetChanged();
  }
  
  private void setTopicData(ArrayList<TMyTopicVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.itemList_myTopic.addAll(paramArrayList);
      this.currentPage_myTopic += 1;
    }
    if (this.adapter_myTopic == null)
    {
      this.adapter_myTopic = new TMyTopicAdapter(this.context, this.itemList_myTopic);
      this.listView_myTopic.setAdapter(this.adapter_myTopic);
      return;
    }
    this.adapter_myTopic.notifyDataSetChanged();
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
    case 2131362944: 
      this.viewPager.setCurrentItem(0, true);
      return;
    }
    this.viewPager.setCurrentItem(1, true);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903231);
    initTopMenu();
    initWidget();
    getMyTopic(this.currentPage_myTopic, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TMytopicAndComment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */