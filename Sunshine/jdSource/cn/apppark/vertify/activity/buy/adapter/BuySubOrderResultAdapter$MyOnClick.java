package cn.apppark.vertify.activity.buy.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.vertify.activity.buy.BuySubOrderResult;

class BuySubOrderResultAdapter$MyOnClick
  implements View.OnClickListener
{
  int a;
  
  BuySubOrderResultAdapter$MyOnClick(BuySubOrderResultAdapter paramBuySubOrderResultAdapter, int paramInt)
  {
    this.a = paramInt;
  }
  
  public void onClick(View paramView)
  {
    BuySubOrderResultAdapter.a(this.b).payOnline(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuySubOrderResultAdapter$MyOnClick.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */