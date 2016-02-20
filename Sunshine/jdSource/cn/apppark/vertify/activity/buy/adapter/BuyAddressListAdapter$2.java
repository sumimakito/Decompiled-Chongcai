package cn.apppark.vertify.activity.buy.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.vertify.adapter.TMyHistoryAdapter.onRightItem2ClickListener;

class BuyAddressListAdapter$2
  implements View.OnClickListener
{
  BuyAddressListAdapter$2(BuyAddressListAdapter paramBuyAddressListAdapter, int paramInt) {}
  
  public void onClick(View paramView)
  {
    if (BuyAddressListAdapter.b(this.b) != null) {
      BuyAddressListAdapter.b(this.b).onRightItem2Click(paramView, this.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */