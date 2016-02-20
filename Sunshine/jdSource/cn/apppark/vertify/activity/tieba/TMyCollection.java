package cn.apppark.vertify.activity.tieba;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.tieba.TMyCollectionVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.SwipeListView;
import cn.apppark.vertify.adapter.TCollectionAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import sr;
import ss;
import st;
import su;

public class TMyCollection
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int DEL_WHAT = 2;
  private final int GET_WHAT = 1;
  private TCollectionAdapter adapter;
  private Button btn_back;
  private Context context = this;
  private int currentDelPos;
  private int currentPage = 1;
  private su handler;
  private ArrayList<TMyCollectionVo> itemList = new ArrayList();
  private SwipeListView listView;
  private LoadDataProgress load;
  private TextView tv_title;
  
  private void checkResult()
  {
    if (this.itemList.size() == 0) {
      HQCHApplication.instance.initToast("暂无内容", 0);
    }
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      this.listView.onFootNodata(((TMyCollectionVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void delCollection(int paramInt, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("userId", getInfo().getUserId());
    localHashMap.put("tiebaId", paramString);
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "delCollection");
    paramString.doRequest(paramString);
  }
  
  private void getMyCollection(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(10));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getCollectionList");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initTopMenu()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131362529);
    FunctionPublic.setBackgroundColor(TBaseParam.TOPMENU_BGCOLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362887));
    this.tv_title = ((TextView)findViewById(2131362886));
    this.tv_title.setText("我的收藏");
    this.btn_back.setOnClickListener(this);
  }
  
  private void initWidget()
  {
    this.listView = ((SwipeListView)findViewById(2131362842));
    this.listView.setOnFootrefreshListener(new sr(this));
    this.listView.setOnItemClickListener(new ss(this));
  }
  
  private void setData(ArrayList<TMyCollectionVo> paramArrayList)
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
      this.adapter = new TCollectionAdapter(this.context, this.itemList, this.listView.getRightViewWidth());
      this.adapter.setOnRightItemClickListener(new st(this));
      this.listView.setAdapter(this.adapter);
      return;
    }
    this.adapter.notifyDataSetChanged();
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
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903212);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new su(this, null);
    initTopMenu();
    initWidget();
    getMyCollection(this.currentPage, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TMyCollection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */