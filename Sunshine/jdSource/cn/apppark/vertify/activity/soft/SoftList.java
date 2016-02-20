package cn.apppark.vertify.activity.soft;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.adapter.SoftAdapter;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import ri;
import rj;
import rk;
import rl;

public class SoftList
  extends Activity
{
  private static final String method_must = "subjectApp";
  private static final int must_ref_what = 6;
  private static final int must_what = 5;
  private SoftAdapter adapter_must;
  private Button btn_back;
  private Context context = this;
  private int currentPage_must = 1;
  private rl handler;
  private ArrayList<SoftReturnVo> itemList_must = new ArrayList();
  private PullDownListView listView_must;
  private LoadDataProgress load;
  private String subjectId;
  private ArrayList<SoftReturnVo> tempItemList_must;
  
  private void checkResult(PullDownListView paramPullDownListView, ArrayList<SoftReturnVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramPullDownListView.onFootNodata(((SoftReturnVo)paramArrayList.get(0)).getCount(), paramArrayList.size());
      return;
    }
    paramPullDownListView.onFootNodata(0, 0);
  }
  
  private void getData(int paramInt1, int paramInt2, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("type", "2");
    localHashMap.put("subjectId", this.subjectId);
    localHashMap.put("currPage", Integer.valueOf(paramInt1));
    localHashMap.put("pageSize", Integer.valueOf(20));
    paramString = new WebServicePool(paramInt2, this.handler, "json", PublicUtil.map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/ad.ws", paramString);
    paramString.doRequest(paramString);
  }
  
  private void initWidget()
  {
    this.btn_back = ((Button)findViewById(2131362800));
    this.btn_back.setOnClickListener(new SoftList.1(this));
    this.listView_must = ((PullDownListView)findViewById(2131362830));
    this.listView_must.setonRefreshListener(new ri(this), true);
    this.listView_must.setonFootRefreshListener(new rj(this));
    this.listView_must.setOnItemClickListener(new rk(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903209);
    this.subjectId = getIntent().getStringExtra("subjectid");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    initWidget();
    this.handler = new rl(this, null);
    getData(this.currentPage_must, 5, "subjectApp");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/SoftList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */