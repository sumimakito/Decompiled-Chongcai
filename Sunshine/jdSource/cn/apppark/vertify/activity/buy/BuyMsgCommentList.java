package cn.apppark.vertify.activity.buy;

import android.content.Context;
import android.os.Bundle;
import android.widget.Button;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView3;
import cn.apppark.vertify.activity.buy.adapter.BuyMsgCommentAdapter;
import cn.apppark.vertify.network.request.WebServicePool;
import cp;
import cq;
import cr;
import cs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyMsgCommentList
  extends BuyBaseAct
{
  private static final int GET_WHAT = 1;
  private static final String METHOD = "replyList";
  private static final int REF_DATA = 3;
  private BuyMsgCommentAdapter adapter;
  private Button btn_back;
  private Context context = this;
  private int currentPage = 1;
  private cs handler;
  private String id;
  private ArrayList<DynCommentReturnVo> itemList = new ArrayList();
  private PullDownListView3 listView;
  private LoadDataProgress load;
  private ArrayList<DynCommentReturnVo> tempItemList;
  
  private void checkResult(PullDownListView3 paramPullDownListView3, ArrayList<DynCommentReturnVo> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramPullDownListView3.onFootNodata(((DynCommentReturnVo)paramArrayList.get(0)).getCount(), paramArrayList.size());
      return;
    }
    paramPullDownListView3.onFootNodata(0, 0);
  }
  
  private void getData(int paramInt1, int paramInt2, String paramString)
  {
    paramString = new HashMap();
    paramString.put("userId", "10185912");
    paramString.put("currPage", Integer.valueOf(paramInt1));
    paramString.put("pageSize", Integer.valueOf(20));
    paramString = new WebServicePool(paramInt2, this.handler, "json", map2Json(paramString), "http://ws.ckj.hqch.com", "http://www.apppark.cn/info.ws", "replyList");
    paramString.doRequest(paramString);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131361865));
    this.btn_back.setOnClickListener(new BuyMsgCommentList.1(this));
    this.listView = ((PullDownListView3)findViewById(2131361866));
    this.listView.setonRefreshListener(new cp(this), true);
    this.listView.setonFootRefreshListener(new cq(this));
    this.listView.setOnItemClickListener(new cr(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903050);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    initWidget();
    this.handler = new cs(this, null);
    getData(this.currentPage, 1, "replyList");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyMsgCommentList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */