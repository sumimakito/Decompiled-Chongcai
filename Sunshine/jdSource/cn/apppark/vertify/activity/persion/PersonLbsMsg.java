package cn.apppark.vertify.activity.persion;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.free.LBSReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.activity.free.dyn.DynPersonCenter5006;
import cn.apppark.vertify.activity.tieba.TBBaseAct;
import cn.apppark.vertify.adapter.PersonLbsMsgAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import ox;
import oy;
import oz;
import pa;

public class PersonLbsMsg
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int GET_WHAT = 1;
  private PersonLbsMsgAdapter adapter;
  private Button btn_back;
  private Button btn_edit;
  private Context context = this;
  private int currentPage = 1;
  private pa handler;
  private ArrayList<LBSReturnVo> itemList = new ArrayList();
  private PullDownListView4 listView;
  private LoadDataProgress load;
  private TextView tv_title;
  
  private void checkResult()
  {
    if (this.itemList.size() == 0)
    {
      this.load.showError(2131230759, true, false, "255");
      this.load.setInterfaceRef(new oz(this));
    }
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      getInfo().updateLastPushMsgTime(PublicUtil.getFormatTime());
      this.listView.onFootNodata(((LBSReturnVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void getMsgList(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "getMyMsg");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initTopMenu()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131362529);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362887));
    this.btn_edit = ((Button)findViewById(2131362890));
    this.tv_title = ((TextView)findViewById(2131362886));
    this.tv_title.setText("系统通知");
    this.btn_back.setOnClickListener(this);
    this.btn_edit.setOnClickListener(this);
  }
  
  private void initWidget()
  {
    this.listView = ((PullDownListView4)findViewById(2131362560));
    this.listView.setDividerHeight(0);
    this.listView.setonRefreshListener(null, false);
    this.listView.setonFootRefreshListener(new ox(this));
    this.listView.setOnItemClickListener(new oy(this));
  }
  
  private void setData(ArrayList<LBSReturnVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      this.itemList.addAll(paramArrayList);
      this.currentPage += 1;
    }
    if (this.adapter == null)
    {
      this.adapter = new PersonLbsMsgAdapter(this.context, this.itemList);
      this.listView.setAdapter(this.adapter);
      return;
    }
    this.adapter.notifyDataSetChanged();
  }
  
  private void setLoadInterface()
  {
    this.load.setInterfaceRef(new oz(this));
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    setResult(DynPersonCenter5006.REQUEST_PUSH_MSG);
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903152);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new pa(this, null);
    initTopMenu();
    initWidget();
    getMsgList(this.currentPage, 1);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      setResult(DynPersonCenter5006.REQUEST_PUSH_MSG);
      finish();
    }
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/PersonLbsMsg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */