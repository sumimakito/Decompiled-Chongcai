package cn.apppark.vertify.activity.buy;

import android.view.View;
import android.view.View.OnClickListener;

class BuyProductStandard$1
  implements View.OnClickListener
{
  BuyProductStandard$1(BuyProductStandard paramBuyProductStandard) {}
  
  public void onClick(View paramView)
  {
    paramView = (String)paramView.getTag();
    if (paramView.startsWith(BuyProductStandard.a(this.a))) {
      BuyProductStandard.a(this.a, Integer.parseInt(paramView.split("_")[1]));
    }
    for (;;)
    {
      BuyProductStandard.c(this.a);
      return;
      if (paramView.startsWith(BuyProductStandard.b(this.a))) {
        BuyProductStandard.b(this.a, Integer.parseInt(paramView.split("_")[1]));
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyProductStandard$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */