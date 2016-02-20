package cn.apppark.vertify.activity.buy;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.vertify.activity.buy.adapter.BuyBuyCarAdapter;
import java.util.ArrayList;

class BuyBuyCar$4
  implements View.OnClickListener
{
  BuyBuyCar$4(BuyBuyCar paramBuyBuyCar) {}
  
  public void onClick(View paramView)
  {
    int i = 0;
    if ((BuyBuyCar.a(this.a) != null) && (BuyBuyCar.a(this.a).size() > 0))
    {
      boolean bool;
      if (!((BuyOrderVo)BuyBuyCar.a(this.a).get(0)).isShowEdit())
      {
        bool = true;
        if (!bool) {
          break label117;
        }
        BuyBuyCar.b(this.a).setText("完成");
      }
      for (;;)
      {
        if (i >= BuyBuyCar.a(this.a).size()) {
          return;
        }
        ((BuyOrderVo)BuyBuyCar.a(this.a).get(i)).setShowEdit(bool);
        BuyBuyCar.c(this.a).notifyDataSetChanged();
        i += 1;
        continue;
        bool = false;
        break;
        label117:
        BuyBuyCar.b(this.a).setText("编辑");
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyBuyCar$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */