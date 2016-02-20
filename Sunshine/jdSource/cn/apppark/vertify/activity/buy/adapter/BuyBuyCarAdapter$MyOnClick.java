package cn.apppark.vertify.activity.buy.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.vertify.activity.buy.BuyBuyCar;

class BuyBuyCarAdapter$MyOnClick
  implements View.OnClickListener
{
  BuyBuyCarAdapter.ViewHolder a;
  int b = BuyBuyCarAdapter.a();
  int c;
  int d;
  String e;
  
  public BuyBuyCarAdapter$MyOnClick(BuyBuyCarAdapter paramBuyBuyCarAdapter, int paramInt)
  {
    this.d = paramInt;
    this.b = BuyBuyCarAdapter.b();
  }
  
  public BuyBuyCarAdapter$MyOnClick(BuyBuyCarAdapter paramBuyBuyCarAdapter, BuyBuyCarAdapter.ViewHolder paramViewHolder, String paramString, int paramInt1, int paramInt2)
  {
    this.b = BuyBuyCarAdapter.a();
    this.a = paramViewHolder;
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramString;
  }
  
  public void onClick(View paramView)
  {
    if (this.b == BuyBuyCarAdapter.a()) {
      BuyBuyCarAdapter.a(this.f, this.a, this.c, this.d, this.e, true);
    }
    while (this.b != BuyBuyCarAdapter.b()) {
      return;
    }
    this.f.a.delCommodity(this.d);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter$MyOnClick.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */