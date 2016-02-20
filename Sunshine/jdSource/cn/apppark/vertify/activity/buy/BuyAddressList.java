package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import bq;
import br;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyAddressVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.SwipeListView;
import cn.apppark.vertify.activity.buy.adapter.BuyAddressListAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyAddressList
  extends BuyBaseAct
{
  private static final int DEL_DATA = 3;
  private static final int INIT_DATA = 1;
  public static final String METHOD = "contacts";
  public static final String METHOD_DEL = "deleteContact";
  private static final int REF_DATA = 2;
  private BuyAddressListAdapter adapter;
  private int addressType;
  private Button btn_back;
  private Button btn_eidt;
  private Context context = this;
  private int currentDelPositon;
  private int currentPage = 1;
  private br handler;
  private boolean isEdit = false;
  private boolean isFinish = true;
  private ArrayList<BuyAddressVo> itemList = new ArrayList();
  private ArrayList<BuyAddressVo> itemListTemp;
  private SwipeListView listView;
  private LinearLayout ll_add;
  private LoadDataProgress load;
  private Dialog loadDialog;
  
  private void checkResult()
  {
    if (this.itemList.size() == 0) {
      HQCHApplication.instance.initToast("暂无收货地址", 0);
    }
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      this.listView.onFootNodata(((BuyAddressVo)this.itemList.get(0)).getCount(), this.itemList.size());
      return;
    }
    this.listView.onFootNodata(0, 0);
  }
  
  private void delData(String paramString, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", getInfo().getUserId());
    localHashMap.put("id", paramString);
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "deleteContact");
    paramString.doRequest(paramString);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(20));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "contacts");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131361805));
    this.btn_eidt = ((Button)findViewById(2131361806));
    this.ll_add = ((LinearLayout)findViewById(2131361807));
    this.listView = ((SwipeListView)findViewById(2131361808));
    this.listView.setDividerHeight(0);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.ll_add.setOnClickListener(new BuyAddressList.1(this));
    this.btn_back.setOnClickListener(new BuyAddressList.2(this));
    this.btn_eidt.setOnClickListener(new BuyAddressList.3(this));
    this.listView.setOnItemClickListener(new bq(this));
  }
  
  private void refData()
  {
    this.isEdit = false;
    this.btn_eidt.setText("编辑");
    this.currentPage = 1;
    getData(this.currentPage, 2);
  }
  
  public void del()
  {
    if (this.isFinish)
    {
      this.loadDialog.show();
      this.isFinish = false;
      delData(((BuyAddressVo)this.itemList.get(this.currentDelPositon)).getId(), 3);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 1)
    {
      this.isEdit = false;
      this.btn_eidt.setText("编辑");
      this.currentPage = 1;
      getData(this.currentPage, 2);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    this.addressType = getIntent().getIntExtra("addressType", 0);
    this.loadDialog = createLoadingDialog(2131230756);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new br(this, null);
    initWidget();
    getData(this.currentPage, 1);
    this.load.show(2131230756, true, true, "255");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyAddressList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */