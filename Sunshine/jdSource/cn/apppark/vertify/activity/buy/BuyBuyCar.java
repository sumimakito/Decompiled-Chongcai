package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bz;
import ca;
import cb;
import cc;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.adapter.BuyBuyCarAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyBuyCar
  extends BuyBaseAct
{
  private final String DEL_NUMBER = "deleteShopping";
  private final int DEL_WHAT = 3;
  private final int GET_CARLIST_WHAT = 1;
  private final String METHOD = "myShoppingCart_sd";
  private final int SAVE_CAR_NUMBER_WHAT = 2;
  private final String SAVE_TEMP_ORDER_METHOD = "saveShoppingOrder_sd";
  private final int SAVE_TEMP_ORDER_WHAT = 4;
  private final String UPDATA_NUMBER = "updateBatchShoppingNumber_sd";
  private BuyBuyCarAdapter adapter;
  private Button btn_back;
  private Button btn_caculate;
  private Button btn_edit;
  private Button btn_save;
  private Context context = this;
  private int delPosition;
  private cc handler;
  private boolean isFinish = true;
  private ArrayList<BuyOrderVo> itemList = new ArrayList();
  private ArrayList<BuyOrderVo> itemListTemp;
  private ListView listView;
  private LinearLayout ll_caculate;
  private LinearLayout ll_null;
  private LoadDataProgress load;
  private Dialog loadDialog;
  private TextView tv_number;
  private TextView tv_price;
  
  private double add(double paramDouble1, double paramDouble2)
  {
    return new BigDecimal(Double.toString(paramDouble1)).add(new BigDecimal(Double.toString(paramDouble2))).doubleValue();
  }
  
  private boolean checkChange(ArrayList<BuyOrderVo> paramArrayList)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramArrayList.size())
      {
        if (!((BuyOrderVo)paramArrayList.get(i)).getNumber().equals(((BuyOrderVo)paramArrayList.get(i)).getOldNumber())) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private void delData(String paramString, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", getInfo().getUserId());
    localHashMap.put("id", paramString);
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "deleteShopping");
    paramString.doRequest(paramString);
  }
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("currPage", Integer.valueOf(paramInt1));
    ((Map)localObject).put("pageSize", Integer.valueOf(999));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "myShoppingCart_sd");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.ll_null = ((LinearLayout)findViewById(2131361832));
    this.ll_null.setVisibility(8);
    this.btn_back = ((Button)findViewById(2131361823));
    this.btn_caculate = ((Button)findViewById(2131361831));
    this.btn_save = ((Button)findViewById(2131361824));
    this.btn_edit = ((Button)findViewById(2131361825));
    this.btn_save.setVisibility(8);
    this.ll_caculate = ((LinearLayout)findViewById(2131361828));
    this.tv_price = ((TextView)findViewById(2131361830));
    this.tv_number = ((TextView)findViewById(2131361829));
    this.listView = ((ListView)findViewById(2131361827));
    this.listView.setDividerHeight(0);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    ButtonColorFilter.setButtonFocusChanged(this.btn_caculate);
    ButtonColorFilter.setButtonFocusChanged(this.btn_save);
    this.btn_back.setOnClickListener(new BuyBuyCar.1(this));
    this.listView.setOnItemClickListener(new bz(this));
    this.listView.setOnItemLongClickListener(new ca(this));
    this.btn_edit.setOnClickListener(new BuyBuyCar.4(this));
    this.btn_caculate.setOnClickListener(new BuyBuyCar.5(this));
    this.btn_save.setOnClickListener(new BuyBuyCar.6(this));
  }
  
  private void saveData(String paramString, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", getInfo().getUserId());
    localHashMap.put("ids", paramString);
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "saveShoppingOrder_sd");
    paramString.doRequest(paramString);
  }
  
  private void saveNumber()
  {
    String str = "";
    int i;
    if ((this.itemList != null) && (this.itemList.size() > 0))
    {
      i = 0;
      if (i < this.itemList.size())
      {
        if (!((BuyOrderVo)this.itemList.get(i)).isSel()) {
          break label177;
        }
        str = str + "{\"id\":" + ((BuyOrderVo)this.itemList.get(i)).getId() + ",\"number\":" + ((BuyOrderVo)this.itemList.get(i)).getNumber() + "},";
      }
    }
    label177:
    for (;;)
    {
      i += 1;
      break;
      if (this.isFinish)
      {
        if (str.length() <= 0) {
          initToast("选择的数量不能为0", 0);
        }
      }
      else {
        return;
      }
      this.isFinish = false;
      this.loadDialog.show();
      updateNumData(str.substring(0, str.length() - 1), 2);
      return;
    }
  }
  
  private void updateNumData(String paramString, int paramInt)
  {
    paramString = "{ \"appId\":\"10185912\",  \"memberId\":\"" + getInfo().getUserId() + "\",  \"carts\":[" + paramString + "] }";
    paramString = new WebServicePool(paramInt, this.handler, "json", paramString, "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "updateBatchShoppingNumber_sd");
    paramString.doRequest(paramString);
  }
  
  public void changeItemState(int paramInt, boolean paramBoolean)
  {
    if (!"-1".equals(((BuyOrderVo)this.itemList.get(paramInt)).getStatus()))
    {
      ((BuyOrderVo)this.itemList.get(paramInt)).setSel(paramBoolean);
      this.adapter.notifyDataSetChanged();
      setTotalPrice(this.itemList);
      updateChangeStatus();
      return;
    }
    HQCHApplication.instance.initToast("对不起,该产品已下架", 0);
  }
  
  public void delCommodity(int paramInt)
  {
    if (this.isFinish)
    {
      this.delPosition = paramInt;
      createMsgDialog("温馨提示", "确定删除该商品?", new cb(this));
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903043);
    this.loadDialog = createLoadingDialog(2131230756);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new cc(this, null);
    initWidget();
    getData(1, 1);
    this.load.show(2131230756);
  }
  
  public String setTotalPrice(ArrayList<BuyOrderVo> paramArrayList)
  {
    if (paramArrayList != null)
    {
      int i = 0;
      double d1 = 0.0D;
      int j = 0;
      for (;;)
      {
        k = i;
        d2 = d1;
        if (j >= paramArrayList.size()) {
          break;
        }
        k = i;
        d2 = d1;
        if (((BuyOrderVo)paramArrayList.get(j)).isSel())
        {
          k = i;
          d2 = d1;
          if (((BuyOrderVo)paramArrayList.get(j)).getPrice() != null)
          {
            d2 = add(d1, Double.parseDouble(((BuyOrderVo)paramArrayList.get(j)).getPrice()) * Double.parseDouble(((BuyOrderVo)paramArrayList.get(j)).getNumber()));
            k = i + FunctionPublic.str2intText(((BuyOrderVo)paramArrayList.get(j)).getNumber());
          }
        }
        j += 1;
        i = k;
        d1 = d2;
      }
    }
    int k = 0;
    double d2 = 0.0D;
    this.tv_number.setText("共计" + k + " 件商品 ");
    paramArrayList = String.format("%.2f", new Object[] { Double.valueOf(d2) });
    this.tv_price.setText(paramArrayList);
    return paramArrayList;
  }
  
  public void updateChangeStatus()
  {
    if (checkChange(this.itemList))
    {
      this.btn_save.setVisibility(0);
      this.btn_edit.setVisibility(8);
      this.btn_caculate.setTextColor(-7829368);
      return;
    }
    this.btn_save.setVisibility(8);
    this.btn_edit.setVisibility(0);
    this.btn_caculate.setTextColor(-1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyBuyCar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */