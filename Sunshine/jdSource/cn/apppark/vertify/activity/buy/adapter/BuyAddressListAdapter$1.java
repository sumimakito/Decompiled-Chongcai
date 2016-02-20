package cn.apppark.vertify.activity.buy.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.vertify.adapter.TMyHistoryAdapter.onRightItemClickListener;

class BuyAddressListAdapter$1
  implements View.OnClickListener
{
  BuyAddressListAdapter$1(BuyAddressListAdapter paramBuyAddressListAdapter, int paramInt) {}
  
  public void onClick(View paramView)
  {
    if (BuyAddressListAdapter.a(this.b) != null) {
      BuyAddressListAdapter.a(this.b).onRightItemClick(paramView, this.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyAddressListAdapter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */