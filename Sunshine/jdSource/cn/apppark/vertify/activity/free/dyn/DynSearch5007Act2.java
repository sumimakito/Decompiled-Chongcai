package cn.apppark.vertify.activity.free.dyn;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.Dyn5007ReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.adapter.DynSearch5007Adapter2;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.lang.reflect.Type;
import java.util.ArrayList;
import ka;
import kb;
import kc;
import kd;
import ke;

public class DynSearch5007Act2
  extends Activity
{
  private static final int GET_WHAT = 1;
  private static final String METHOD = "search";
  public int a;
  private DynSearch5007Adapter2 adapter;
  String b;
  private Button btn_cancel;
  String c;
  private Context context = this;
  private int currentPage = 1;
  private EditText et_keyWord;
  private ke handler;
  private ArrayList<Dyn5007ReturnVo> itemList = new ArrayList();
  private ArrayList<Dyn5007ReturnVo> itemListTemp;
  private int keyLisTag = 0;
  private PullDownListView listView;
  private LoadDataProgress load;
  private TextView tv_tip;
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("{ \"searchType\": \"" + this.a + "\" , ");
    ((StringBuilder)localObject).append("  \"keyWord\": \"" + this.b + "\" , ");
    ((StringBuilder)localObject).append("  \"item\": " + this.c + " , ");
    ((StringBuilder)localObject).append("  \"currPage\": " + paramInt1 + " , ");
    ((StringBuilder)localObject).append("  \"pageSize\": 20 } ");
    localObject = new WebServicePool(paramInt2, this.handler, "json", ((StringBuilder)localObject).toString(), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "search");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initData(String paramString)
  {
    Type localType = new kd(this).getType();
    if (this.a == 1)
    {
      this.itemListTemp = JsonParserDyn.parseJson2List(paramString, localType, "productItems", "productCount");
      if ((this.currentPage == 1) && (this.itemList != null)) {
        this.itemList.clear();
      }
      if (this.adapter != null) {
        break label235;
      }
      this.itemList.addAll(this.itemListTemp);
      this.adapter = new DynSearch5007Adapter2(this.context, this.itemList, this.a);
      this.listView.setAdapter(this.adapter);
      label108:
      this.currentPage += 1;
      if ((this.itemList == null) || (this.itemList.size() <= 0)) {
        break label264;
      }
      this.listView.onFootNodata(((Dyn5007ReturnVo)this.itemList.get(0)).getCount(), this.itemList.size());
    }
    for (;;)
    {
      if (this.itemList.size() != 0) {
        break label276;
      }
      this.tv_tip.setVisibility(0);
      this.tv_tip.setText("没有找到\"" + this.et_keyWord.getText().toString() + "\"相关结果");
      return;
      this.itemListTemp = JsonParserDyn.parseJson2List(paramString, localType, "infoItems", "infoCount");
      break;
      label235:
      if (this.itemListTemp == null) {
        break label108;
      }
      this.itemList.addAll(this.itemListTemp);
      this.adapter.notifyDataSetChanged();
      break label108;
      label264:
      this.listView.onFootNodata(0, 0);
    }
    label276:
    this.tv_tip.setVisibility(8);
  }
  
  private void initWidget()
  {
    this.btn_cancel = ((Button)findViewById(2131362375));
    this.btn_cancel.setOnClickListener(new DynSearch5007Act2.1(this));
    this.listView = ((PullDownListView)findViewById(2131362376));
    this.listView.setonRefreshListener(null, false);
    this.listView.setonFootRefreshListener(new ka(this));
    this.listView.setOnItemClickListener(new kb(this));
    this.et_keyWord = ((EditText)findViewById(2131362374));
    this.et_keyWord.setOnKeyListener(new kc(this));
  }
  
  private void searchData()
  {
    this.currentPage = 1;
    this.b = this.et_keyWord.getText().toString();
    getData(this.currentPage, 1);
    this.load.show(2131230756, true, true, "255");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903114);
    this.a = getIntent().getIntExtra("searchtype", 1);
    this.b = getIntent().getStringExtra("keyword");
    this.c = getIntent().getStringExtra("param");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.tv_tip = ((TextView)findViewById(2131362373));
    initWidget();
    this.handler = new ke(this, null);
    getData(this.currentPage, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynSearch5007Act2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */