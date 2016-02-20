package cn.apppark.vertify.activity.buy;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import cn.apppark.mcd.vo.buy.BuyAddressVo;
import cn.apppark.vertify.activity.buy.adapter.BuyAddressListAdapter;
import java.util.ArrayList;

class BuyAddressList$3
  implements View.OnClickListener
{
  BuyAddressList$3(BuyAddressList paramBuyAddressList) {}
  
  public void onClick(View paramView)
  {
    int i = 0;
    if (BuyAddressList.b(this.a) != null)
    {
      paramView = this.a;
      boolean bool;
      if (!BuyAddressList.c(this.a))
      {
        bool = true;
        BuyAddressList.a(paramView, bool);
        if (!BuyAddressList.c(this.a)) {
          break label117;
        }
        BuyAddressList.d(this.a).setText("完成");
      }
      for (;;)
      {
        if (i >= BuyAddressList.b(this.a).size()) {
          return;
        }
        ((BuyAddressVo)BuyAddressList.b(this.a).get(i)).setEdit(BuyAddressList.c(this.a));
        BuyAddressList.e(this.a).notifyDataSetChanged();
        i += 1;
        continue;
        bool = false;
        break;
        label117:
        BuyAddressList.d(this.a).setText("编辑");
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyAddressList$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */