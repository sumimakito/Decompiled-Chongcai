package cn.apppark.vertify.activity.buy.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.vertify.adapter.TCollectionAdapter.onRightItemClickListener;

class BuyCollectionAdapter2$1
  implements View.OnClickListener
{
  BuyCollectionAdapter2$1(BuyCollectionAdapter2 paramBuyCollectionAdapter2, int paramInt) {}
  
  public void onClick(View paramView)
  {
    if (BuyCollectionAdapter2.a(this.b) != null) {
      BuyCollectionAdapter2.a(this.b).onRightItemClick(paramView, this.a);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyCollectionAdapter2$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */