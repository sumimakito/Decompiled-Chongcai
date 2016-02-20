package cn.apppark.vertify.activity.buy.adapter;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.vertify.activity.buy.BuyBaseParam;
import cn.apppark.vertify.activity.buy.BuyOrderTemp;
import cn.apppark.vertify.activity.buy.BuySelectRemark;

class BuyTempOrderAdapter$MyClick
  implements View.OnClickListener
{
  int a;
  String b;
  
  public BuyTempOrderAdapter$MyClick(BuyTempOrderAdapter paramBuyTempOrderAdapter, int paramInt)
  {
    this.a = paramInt;
  }
  
  public BuyTempOrderAdapter$MyClick(BuyTempOrderAdapter paramBuyTempOrderAdapter, int paramInt, String paramString)
  {
    this.a = paramInt;
    this.b = paramString;
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent(BuyTempOrderAdapter.a(this.c), BuySelectRemark.class);
    if (paramView.getId() == 2131362114)
    {
      BuyTempOrderAdapter.b(this.c).setPayType(this.a, "1");
      return;
    }
    if (paramView.getId() == 2131362115)
    {
      BuyTempOrderAdapter.b(this.c).setPayType(this.a, "0");
      return;
    }
    localIntent.putExtra("operatetype", BuyBaseParam.OPERATE_GET_REMARK);
    localIntent.putExtra("position", this.a);
    localIntent.putExtra("remark", this.b);
    BuyTempOrderAdapter.b(this.c).startActivityForResult(localIntent, BuyBaseParam.REQUEST_CODE_GET_REMARK);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyTempOrderAdapter$MyClick.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */