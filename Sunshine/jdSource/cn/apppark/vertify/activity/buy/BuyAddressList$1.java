package cn.apppark.vertify.activity.buy;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

public class BuyAddressList$1
  implements View.OnClickListener
{
  BuyAddressList$1(BuyAddressList paramBuyAddressList) {}
  
  public void onClick(View paramView)
  {
    this.a.startActivityForResult(new Intent(BuyAddressList.a(this.a), BuyAddAddress.class), 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyAddressList$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */