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
import cn.apppark.mcd.vo.tieba.TMyMsgVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.adapter.TMsgAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import sm;
import sn;
import so;

public class TMsg
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int GET_WHAT = 1;
  private TMsgAdapter adapter;
  private Button btn_back;
  private Button btn_edit;
  private Context context = this;
  private int currentPage = 1;
  private so handler;
  private ArrayList<TMyMsgVo> itemList = new ArrayList();
  private PullDownListView4 listView;
  private LoadDataProgress load;
  private RelativeLayout rel_menu;
  private TextView tv_title;
  
  private void checkResult()
  {
    if (this.itemList.size() == 0) {
      HQCHApplication.instance.initToast("暂无内容", 0);
    }
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      this.listView.onFootNodata(((TMyMsgVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("tiebaId", TBaseParam.TB_ID);
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "msgList");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initTopMenu()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131362529);
    FunctionPublic.setBackgroundColor(TBaseParam.TOPMENU_BGCOLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362887));
    this.btn_edit = ((Button)findViewById(2131362890));
    this.tv_title = ((TextView)findViewById(2131362886));
    this.tv_title.setText("回复我的");
    this.btn_back.setOnClickListener(this);
    this.btn_edit.setOnClickListener(this);
  }
  
  private void initWidget()
  {
    this.listView = ((PullDownListView4)findViewById(2131362930));
    this.listView.setDividerHeight(0);
    this.listView.setonRefreshListener(null, false);
    this.listView.setonFootRefreshListener(new sm(this));
    this.listView.setOnItemClickListener(new sn(this));
  }
  
  private void setData(ArrayList<TMyMsgVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.itemList.addAll(paramArrayList);
      this.currentPage += 1;
    }
    if (this.adapter == null)
    {
      this.adapter = new TMsgAdapter(this.context, this.itemList);
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
    setContentView(2130903227);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new so(this, null);
    initTopMenu();
    initWidget();
    getData(this.currentPage, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TMsg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */