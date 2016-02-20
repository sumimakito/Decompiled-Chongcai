package cn.apppark.vertify.activity.free.dyn;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import cn.apppark.mcd.vo.dyn.Dyn5007ReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.adapter.DynSearch5007Adapter;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.Timer;
import jt;
import ju;
import jv;
import jw;
import jx;

public class DynSearch5007Act
  extends Activity
{
  private static final int GET_WHAT = 1;
  private static final String METHOD = "search";
  private static final int SEARCH_WHAT = 3;
  private DynSearch5007Adapter adapter;
  private Button btn_cancel;
  private Context context = this;
  private EditText et_keyWord;
  private jx handler;
  private ArrayList<Dyn5007ReturnVo> itemList = new ArrayList();
  private int keyLisTag = 0;
  private PullDownListView listView;
  private LoadDataProgress load;
  private String param;
  private ArrayList<Dyn5007ReturnVo> temp_msgList;
  private ArrayList<Dyn5007ReturnVo> temp_productlist;
  private TextView tv_tip;
  
  private void getData(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = "{ \"pageSize\":\"5\",  \"currPage\":\"1\", \"searchType\":\"0\", \"keyWord\":\"" + paramString2 + "\", \"item\":" + this.param + " }";
    paramString1 = new WebServicePool(paramInt, this.handler, "json", paramString1, "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "search");
    paramString1.doRequest(paramString1);
  }
  
  private void initData()
  {
    this.itemList.clear();
    Dyn5007ReturnVo localDyn5007ReturnVo;
    int i;
    if ((this.temp_productlist != null) && (this.temp_productlist.size() > 0))
    {
      localDyn5007ReturnVo = new Dyn5007ReturnVo();
      localDyn5007ReturnVo.setShowType(1);
      localDyn5007ReturnVo.setNextShowType(0);
      localDyn5007ReturnVo.setTitle("产品");
      this.itemList.add(localDyn5007ReturnVo);
      i = 0;
      while ((i < this.temp_productlist.size()) && (i < 5))
      {
        ((Dyn5007ReturnVo)this.temp_productlist.get(i)).setShowType(3);
        ((Dyn5007ReturnVo)this.temp_productlist.get(i)).setNextShowType(1);
        this.itemList.add(this.temp_productlist.get(i));
        i += 1;
      }
      if (((Dyn5007ReturnVo)this.temp_productlist.get(0)).getCount() > 5)
      {
        localDyn5007ReturnVo = new Dyn5007ReturnVo();
        localDyn5007ReturnVo.setShowType(2);
        localDyn5007ReturnVo.setNextShowType(3);
        localDyn5007ReturnVo.setTitle("更多相关产品");
        this.itemList.add(localDyn5007ReturnVo);
      }
      localDyn5007ReturnVo = new Dyn5007ReturnVo();
      localDyn5007ReturnVo.setShowType(0);
      localDyn5007ReturnVo.setNextShowType(0);
      this.itemList.add(localDyn5007ReturnVo);
    }
    if ((this.temp_msgList != null) && (this.temp_msgList.size() > 0))
    {
      localDyn5007ReturnVo = new Dyn5007ReturnVo();
      localDyn5007ReturnVo.setShowType(1);
      localDyn5007ReturnVo.setNextShowType(0);
      localDyn5007ReturnVo.setTitle("文章");
      this.itemList.add(localDyn5007ReturnVo);
      i = 0;
      while ((i < this.temp_msgList.size()) && (i < 5))
      {
        ((Dyn5007ReturnVo)this.temp_msgList.get(i)).setShowType(4);
        ((Dyn5007ReturnVo)this.temp_msgList.get(i)).setNextShowType(2);
        this.itemList.add(this.temp_msgList.get(i));
        i += 1;
      }
      if (((Dyn5007ReturnVo)this.temp_msgList.get(0)).getCount() > 5)
      {
        localDyn5007ReturnVo = new Dyn5007ReturnVo();
        localDyn5007ReturnVo.setShowType(2);
        localDyn5007ReturnVo.setNextShowType(4);
        localDyn5007ReturnVo.setTitle("更多相关文章");
        this.itemList.add(localDyn5007ReturnVo);
      }
    }
    if (this.adapter == null)
    {
      this.adapter = new DynSearch5007Adapter(this.context, this.itemList);
      this.listView.setAdapter(this.adapter);
    }
    while (this.itemList.size() == 0)
    {
      this.tv_tip.setVisibility(0);
      this.tv_tip.setText("没有找到\"" + this.et_keyWord.getText().toString() + "\"相关结果");
      return;
      this.adapter.notifyDataSetChanged();
    }
    this.tv_tip.setVisibility(8);
  }
  
  private void initWidget()
  {
    this.btn_cancel = ((Button)findViewById(2131362371));
    this.btn_cancel.setOnClickListener(new DynSearch5007Act.1(this));
    this.listView = ((PullDownListView)findViewById(2131362372));
    this.listView.onFootNodata(0, 0);
    this.listView.setonRefreshListener(new jt(this), false);
    this.listView.setOnItemClickListener(new ju(this));
    this.et_keyWord = ((EditText)findViewById(2131362370));
    this.et_keyWord.setOnKeyListener(new jv(this));
    this.et_keyWord.requestFocus();
    new Timer().schedule(new jw(this), 1000L);
  }
  
  private void searchData()
  {
    getData(1, "search", this.et_keyWord.getText().toString());
    this.load.show(2131230756, true, true, "255");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903113);
    this.param = getIntent().getStringExtra("param");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.tv_tip = ((TextView)findViewById(2131362373));
    this.load.hidden();
    initWidget();
    this.handler = new jx(this, null);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynSearch5007Act.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */