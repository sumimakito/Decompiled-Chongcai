package cn.apppark.vertify.activity.tieba;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.file.TbHistoryObject2File;
import cn.apppark.mcd.vo.tieba.TMyHistoryVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.SwipeListView;
import cn.apppark.vertify.adapter.TMyHistoryAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import java.util.ArrayList;
import sx;
import sy;
import sz;

public class TMyHistory
  extends TBBaseAct
  implements View.OnClickListener
{
  private final int GET_WHAT = 1;
  Button a;
  private TMyHistoryAdapter adapter;
  private Button btn_back;
  private Context context = this;
  private sz handler;
  private ArrayList<TMyHistoryVo> itemList;
  private SwipeListView listView;
  private LoadDataProgress load;
  private RelativeLayout rel_menu;
  private TextView tv_title;
  
  private void checkResult()
  {
    if (this.itemList.size() == 0) {
      HQCHApplication.instance.initToast("暂无内容", 0);
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void getData(int paramInt)
  {
    this.itemList = TbHistoryObject2File.readFile2Object(this.context, getInfo().getUserId());
    if (this.itemList == null) {
      this.itemList = new ArrayList();
    }
    Message localMessage = Message.obtain();
    localMessage.what = paramInt;
    Bundle localBundle = new Bundle();
    localBundle.putString("soresult", null);
    localMessage.setData(localBundle);
    this.handler.sendMessage(localMessage);
  }
  
  private void initTopMenu()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131362529);
    FunctionPublic.setBackgroundColor(TBaseParam.TOPMENU_BGCOLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362887));
    this.tv_title = ((TextView)findViewById(2131362886));
    this.tv_title.setText("我的浏览历史");
    this.btn_back.setOnClickListener(this);
  }
  
  private void initWidget()
  {
    this.listView = ((SwipeListView)findViewById(2131362879));
    this.a = ((Button)findViewById(2131362880));
    this.a.setOnClickListener(this);
    this.listView.setOnItemClickListener(new sx(this));
  }
  
  private void setData()
  {
    this.adapter = new TMyHistoryAdapter(this.context, this.itemList, this.listView.getRightViewWidth());
    this.adapter.setOnRightItemClickListener(new sy(this));
    this.listView.setAdapter(this.adapter);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      return;
      finish();
      return;
    } while (!TbHistoryObject2File.clearHistory(this.context, getInfo().getUserId()));
    this.itemList.clear();
    this.adapter.notifyDataSetChanged();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903219);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new sz(this, null);
    initTopMenu();
    initWidget();
    getData(1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TMyHistory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */