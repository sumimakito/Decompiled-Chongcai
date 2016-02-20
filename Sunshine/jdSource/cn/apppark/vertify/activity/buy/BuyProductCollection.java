package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyCollectionVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.SwipeListView;
import cn.apppark.vertify.activity.buy.adapter.BuyCollectionAdapter2;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import ev;
import ew;
import ex;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyProductCollection
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final int DEL_DATA = 3;
  private static final int INIT_DATA = 1;
  public static final String METHOD = "myFavorites";
  public static final String METHOD_DEL = "deleteFavorites";
  private static final int REF_DATA = 2;
  private BuyCollectionAdapter2 adapter;
  private Button btn_back;
  private Context context = this;
  private int currentDelPositon;
  private int currentPage = 1;
  private ex handler;
  private boolean isFinish = true;
  private ArrayList<BuyCollectionVo> itemList = new ArrayList();
  private ArrayList<BuyCollectionVo> itemListTemp;
  private SwipeListView listView;
  private LinearLayout ll_null;
  private LoadDataProgress load;
  private Dialog loadDialog;
  
  private void checkResult()
  {
    if (this.itemList.size() == 0)
    {
      HQCHApplication.instance.initToast("暂无收藏", 0);
      this.ll_null.setVisibility(0);
    }
    while ((this.itemList != null) && (this.itemList.size() > 0))
    {
      this.listView.onFootNodata(((BuyCollectionVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
      this.ll_null.setVisibility(8);
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void delData(String paramString, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", getInfo().getUserId());
    localHashMap.put("id", paramString);
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "deleteFavorites");
    paramString.doRequest(paramString);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(10));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "myFavorites");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.ll_null = ((LinearLayout)findViewById(2131361832));
    this.ll_null.setVisibility(8);
    this.btn_back = ((Button)findViewById(2131361847));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(this);
    this.listView = ((SwipeListView)findViewById(2131361848));
    this.listView.setOnFootrefreshListener(new ev(this));
    this.listView.setOnItemClickListener(new ew(this));
  }
  
  private void refData()
  {
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public void del()
  {
    if (this.isFinish)
    {
      this.loadDialog.show();
      this.isFinish = false;
      delData(((BuyCollectionVo)this.itemList.get(this.currentDelPositon)).getId(), 3);
    }
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
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903045);
    this.loadDialog = createLoadingDialog(2131230756);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new ex(this, null);
    initWidget();
    getData(this.currentPage, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyProductCollection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */