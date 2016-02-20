package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyAddressVo;
import cn.apppark.mcd.vo.buy.BuyCarsVo;
import cn.apppark.mcd.vo.buy.BuyProductVo;
import cn.apppark.mcd.vo.buy.BuyTempOrderReasonVo;
import cn.apppark.mcd.vo.buy.BuyTempOrderVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.adapter.BuyTempOrderAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import com.google.gson.Gson;
import dx;
import dy;
import dz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyOrderTemp
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final int GET_ORDERS_WHAT = 1;
  public static final String METHOD_GETORDERS = "tempOrders_sd";
  public static final String METHOD_SAVERDERS = "commitOrder_sd";
  private static final int SAVE_ORDERS_WHAT = 2;
  private BuyTempOrderAdapter adapter;
  private BuyAddressVo addressVo;
  private Button btn_back;
  private Button btn_subdata;
  private Context context = this;
  private dz handler;
  private String ids = "";
  private ArrayList<BuyTempOrderVo> itemList = new ArrayList();
  private ArrayList<BuyTempOrderVo> itemListTemp;
  private ListView listView;
  private LinearLayout ll_address;
  private LinearLayout ll_tip;
  private LoadDataProgress load;
  private Dialog loadDialog;
  private TextView tv_address;
  private TextView tv_name;
  private TextView tv_phone;
  private TextView tv_tip;
  private TextView tv_totalprice;
  
  private void checkStore(String paramString)
  {
    new ArrayList();
    paramString = JsonParserBuy.parseToListByNode(paramString, new dy(this).getType(), "outIds");
    if (paramString == null) {
      return;
    }
    int i = 0;
    ArrayList localArrayList;
    int j;
    while (i < this.itemList.size())
    {
      localArrayList = ((BuyTempOrderVo)this.itemList.get(i)).getOrderItem();
      j = 0;
      while (j < localArrayList.size())
      {
        ((BuyProductVo)localArrayList.get(j)).setHavaStore(true);
        j += 1;
      }
      i += 1;
    }
    i = 0;
    while (i < paramString.size())
    {
      j = 0;
      while (j < this.itemList.size())
      {
        localArrayList = ((BuyTempOrderVo)this.itemList.get(j)).getOrderItem();
        int k = 0;
        while (k < localArrayList.size())
        {
          if ((((BuyProductVo)localArrayList.get(k)).isHavaStore() == true) && (((BuyTempOrderReasonVo)paramString.get(i)).getProductId().equals(((BuyProductVo)localArrayList.get(k)).getId())) && (((((BuyTempOrderReasonVo)paramString.get(i)).getStandardId().equals("0")) && (((BuyProductVo)localArrayList.get(k)).getStandardId() == null)) || (((BuyTempOrderReasonVo)paramString.get(i)).getStandardId().equals(((BuyProductVo)localArrayList.get(k)).getStandardId()))))
          {
            ((BuyProductVo)localArrayList.get(k)).setHavaStore(false);
            ((BuyProductVo)localArrayList.get(k)).setReason(((BuyTempOrderReasonVo)paramString.get(i)).getReason());
          }
          k += 1;
        }
        j += 1;
      }
      i += 1;
    }
    this.adapter.notifyDataSetChanged();
  }
  
  private void getData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("pageSize", Integer.valueOf(999));
    ((Map)localObject).put("currPage", Integer.valueOf(1));
    ((Map)localObject).put("isNew", Integer.valueOf(1));
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "tempOrders_sd");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    Object localObject = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)localObject);
    this.btn_back = ((Button)findViewById(2131362102));
    this.btn_subdata = ((Button)findViewById(2131362109));
    this.listView = ((ListView)findViewById(2131362107));
    this.listView.setDividerHeight(0);
    localObject = ((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903081, null);
    this.ll_address = ((LinearLayout)((View)localObject).findViewById(2131362125));
    this.tv_name = ((TextView)((View)localObject).findViewById(2131362126));
    this.tv_phone = ((TextView)((View)localObject).findViewById(2131362127));
    this.tv_address = ((TextView)((View)localObject).findViewById(2131362128));
    this.listView.addHeaderView((View)localObject);
    this.tv_totalprice = ((TextView)findViewById(2131362108));
    this.ll_tip = ((LinearLayout)findViewById(2131362105));
    this.tv_tip = ((TextView)findViewById(2131362106));
    this.tv_tip.setVisibility(8);
    this.ll_tip.setVisibility(8);
    this.btn_back.setOnClickListener(this);
    this.btn_subdata.setOnClickListener(this);
    this.ll_address.setOnClickListener(this);
    this.listView.setOnItemClickListener(new dx(this));
  }
  
  private void saveData(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    paramString1 = "{ \"appId\":\"10185912\",  \"memberId\":\"" + getInfo().getUserId() + "\",  \"contactId\":\"" + paramString3 + "\",  \"ids\":\"\", \"carts\":" + paramString2 + " }";
    paramString1 = new WebServicePool(paramInt, this.handler, "json", paramString1, "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "commitOrder_sd");
    paramString1.doRequest(paramString1);
  }
  
  private void setAddress(BuyAddressVo paramBuyAddressVo)
  {
    if ((paramBuyAddressVo != null) && (paramBuyAddressVo.getName() != null) && (paramBuyAddressVo.getName().length() > 0))
    {
      this.tv_phone.setText(paramBuyAddressVo.getPhone());
      this.tv_address.setText(paramBuyAddressVo.getAddress());
      this.tv_name.setText(paramBuyAddressVo.getName());
      this.tv_phone.setVisibility(0);
      this.tv_address.setVisibility(0);
      this.tv_name.setVisibility(0);
      return;
    }
    this.tv_phone.setVisibility(8);
    this.tv_address.setVisibility(8);
    this.tv_name.setText("点击添加地址...");
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == BuyBaseParam.REQUEST_CODE_GET_ADDRESS) && (paramInt2 == 1))
    {
      this.addressVo = ((BuyAddressVo)paramIntent.getSerializableExtra("address"));
      this.addressVo.setAddress(this.addressVo.getAddress1() + this.addressVo.getAddress2());
      setAddress(this.addressVo);
    }
    String str;
    do
    {
      do
      {
        return;
      } while ((paramInt1 != BuyBaseParam.REQUEST_CODE_GET_REMARK) || (paramInt2 != 1));
      str = paramIntent.getStringExtra("remark");
      paramInt1 = paramIntent.getIntExtra("position", -1);
    } while (paramInt1 == -1);
    ((BuyTempOrderVo)this.itemList.get(paramInt1)).setRemark(str);
    this.adapter.notifyDataSetChanged();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362102: 
      finish();
      return;
    case 2131362109: 
      paramView = new ArrayList();
      int i = 0;
      while (i < this.itemList.size())
      {
        this.ids = (this.ids + ((BuyTempOrderVo)this.itemList.get(i)).getId() + ",");
        BuyCarsVo localBuyCarsVo = new BuyCarsVo();
        localBuyCarsVo.setId(((BuyTempOrderVo)this.itemList.get(i)).getId());
        localBuyCarsVo.setMsg(((BuyTempOrderVo)this.itemList.get(i)).getRemark());
        localBuyCarsVo.setType(((BuyTempOrderVo)this.itemList.get(i)).getIsSelPayOnLine());
        paramView.add(localBuyCarsVo);
        i += 1;
      }
      paramView = new Gson().toJson(paramView);
      this.ids = this.ids.substring(0, this.ids.length() - 1);
      if ((this.addressVo != null) && (this.addressVo.getId() != null) && (!"0".equals(this.addressVo.getId())))
      {
        this.loadDialog.show();
        saveData(this.ids, paramView, 2, this.addressVo.getId());
        return;
      }
      initToast("请选择收货地址", 0);
      return;
    }
    paramView = new Intent(this.context, BuyAddressList.class);
    paramView.putExtra("addressType", 1);
    startActivityForResult(paramView, BuyBaseParam.REQUEST_CODE_GET_ADDRESS);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903078);
    this.loadDialog = createLoadingDialog(2131230756);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new dz(this, null);
    initWidget();
    getData(1);
    this.load.show(2131230756);
  }
  
  public void setPayType(int paramInt, String paramString)
  {
    ((BuyTempOrderVo)this.itemList.get(paramInt)).setIsSelPayOnLine(paramString);
    this.adapter.notifyDataSetChanged();
  }
  
  public void setTotalPrice(ArrayList<BuyTempOrderVo> paramArrayList)
  {
    float f1;
    if (paramArrayList != null)
    {
      int i = 0;
      float f2;
      for (f1 = 0.0F; i < paramArrayList.size(); f1 = f2)
      {
        f2 = f1;
        if (((BuyTempOrderVo)paramArrayList.get(i)).getTotalPrice() != null)
        {
          f2 = f1 + Float.parseFloat(((BuyTempOrderVo)paramArrayList.get(i)).getTotalPrice());
          FunctionPublic.str2intText(((BuyTempOrderVo)paramArrayList.get(i)).getNumber());
        }
        i += 1;
      }
      if (paramArrayList.size() > 1)
      {
        this.ll_tip.setVisibility(0);
        this.tv_tip.setVisibility(0);
      }
    }
    for (;;)
    {
      this.tv_totalprice.setText(" " + String.format("%.2f", new Object[] { Float.valueOf(f1) }) + " 元");
      return;
      this.ll_tip.setVisibility(8);
      this.tv_tip.setVisibility(8);
      continue;
      f1 = 0.0F;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyOrderTemp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */