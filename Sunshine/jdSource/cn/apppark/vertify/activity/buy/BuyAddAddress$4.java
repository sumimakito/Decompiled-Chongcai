package cn.apppark.vertify.activity.buy;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class BuyAddAddress$4
  implements View.OnClickListener
{
  BuyAddAddress$4(BuyAddAddress paramBuyAddAddress) {}
  
  public void onClick(View paramView)
  {
    this.a.startActivityForResult(new Intent(BuyAddAddress.j(this.a), BuySelProvience.class), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyAddAddress$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */