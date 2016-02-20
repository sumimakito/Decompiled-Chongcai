package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import java.util.ArrayList;

class BuyBuyCar$5
  implements View.OnClickListener
{
  BuyBuyCar$5(BuyBuyCar paramBuyBuyCar) {}
  
  public void onClick(View paramView)
  {
    paramView = "";
    if ((BuyBuyCar.a(this.a) != null) && (BuyBuyCar.a(this.a).size() > 0))
    {
      if (BuyBuyCar.a(this.a, BuyBuyCar.a(this.a))) {
        HQCHApplication.instance.initToast("商品数量已修改,请保存", 0);
      }
    }
    else {
      return;
    }
    int i = 0;
    label55:
    if (i < BuyBuyCar.a(this.a).size())
    {
      if (!((BuyOrderVo)BuyBuyCar.a(this.a).get(i)).isSel()) {
        break label204;
      }
      paramView = paramView + ((BuyOrderVo)BuyBuyCar.a(this.a).get(i)).getId() + ",";
    }
    label204:
    for (;;)
    {
      i += 1;
      break label55;
      if ("".equals(paramView))
      {
        HQCHApplication.instance.initToast("请选择至少一件商品", 0);
        return;
      }
      if (!BuyBuyCar.d(this.a)) {
        break;
      }
      BuyBuyCar.a(this.a, false);
      BuyBuyCar.e(this.a).show();
      BuyBuyCar.a(this.a, paramView.substring(0, paramView.length() - 1), 4);
      return;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyBuyCar$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */