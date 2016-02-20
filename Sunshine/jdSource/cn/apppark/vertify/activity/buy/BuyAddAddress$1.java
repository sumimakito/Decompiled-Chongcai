package cn.apppark.vertify.activity.buy;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

class BuyAddAddress$1
  implements View.OnClickListener
{
  BuyAddAddress$1(BuyAddAddress paramBuyAddAddress) {}
  
  public void onClick(View paramView)
  {
    if ("0".equals(BuyAddAddress.a(this.a)))
    {
      BuyAddAddress.a(this.a, "1");
      BuyAddAddress.b(this.a).setBackgroundResource(2130837760);
      return;
    }
    BuyAddAddress.a(this.a, "0");
    BuyAddAddress.b(this.a).setBackgroundResource(2130837781);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyAddAddress$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */