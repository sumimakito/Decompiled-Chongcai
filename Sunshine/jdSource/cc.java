import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyBuyCar;
import cn.apppark.vertify.activity.buy.BuyOrderTemp;
import cn.apppark.vertify.activity.buy.adapter.BuyBuyCarAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class cc
  extends Handler
{
  private cc(BuyBuyCar paramBuyBuyCar) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    }
    do
    {
      do
      {
        return;
        if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
        {
          BuyBuyCar.h(this.a).showError(2131230757, true, false, "255");
          BuyBuyCar.h(this.a).setInterfaceRef(new cd(this));
          return;
        }
        BuyBuyCar.h(this.a).hidden();
        paramMessage = new ce(this).getType();
        BuyBuyCar.b(this.a, JsonParserBuy.parseJson2List(str, paramMessage));
        if (BuyBuyCar.i(this.a) == null) {
          BuyBuyCar.b(this.a, new ArrayList());
        }
        if (BuyBuyCar.c(this.a) == null)
        {
          if (BuyBuyCar.i(this.a).size() == 0)
          {
            HQCHApplication.instance.initToast("购物车是空的", 0);
            BuyBuyCar.j(this.a).setVisibility(0);
            BuyBuyCar.b(this.a).setVisibility(8);
            BuyBuyCar.k(this.a).setVisibility(8);
          }
          for (;;)
          {
            BuyBuyCar.c(this.a, new ArrayList());
            BuyBuyCar.a(this.a).addAll(BuyBuyCar.i(this.a));
            BuyBuyCar.a(this.a, new BuyBuyCarAdapter(BuyBuyCar.l(this.a), this.a, BuyBuyCar.a(this.a)));
            BuyBuyCar.m(this.a).setAdapter(BuyBuyCar.c(this.a));
            this.a.setTotalPrice(BuyBuyCar.a(this.a));
            return;
            BuyBuyCar.j(this.a).setVisibility(8);
            BuyBuyCar.k(this.a).setVisibility(0);
            BuyBuyCar.b(this.a).setVisibility(0);
          }
        }
        BuyBuyCar.a(this.a).addAll(BuyBuyCar.i(this.a));
        BuyBuyCar.c(this.a).notifyDataSetChanged();
        return;
        BuyBuyCar.e(this.a).dismiss();
        BuyBuyCar.a(this.a, true);
        if (BuyBuyCar.a(this.a, str, "删除失败,请重试", "删除成功"))
        {
          BuyBuyCar.a(this.a).remove(BuyBuyCar.g(this.a));
          BuyBuyCar.c(this.a).notifyDataSetChanged();
          this.a.setTotalPrice(BuyBuyCar.a(this.a));
          this.a.updateChangeStatus();
        }
        if (BuyBuyCar.a(this.a).size() == 0)
        {
          BuyBuyCar.j(this.a).setVisibility(0);
          BuyBuyCar.k(this.a).setVisibility(8);
          BuyBuyCar.b(this.a).setVisibility(8);
          return;
        }
        BuyBuyCar.j(this.a).setVisibility(8);
        BuyBuyCar.k(this.a).setVisibility(0);
        BuyBuyCar.b(this.a).setVisibility(0);
        return;
        BuyBuyCar.e(this.a).dismiss();
        BuyBuyCar.a(this.a, true);
      } while (!BuyBuyCar.b(this.a, str, "提交失败,请重试", "请核对订单信息"));
      paramMessage = new Intent(BuyBuyCar.l(this.a), BuyOrderTemp.class);
      this.a.startActivity(paramMessage);
      this.a.finish();
      return;
      BuyBuyCar.e(this.a).dismiss();
      BuyBuyCar.a(this.a, true);
    } while (!BuyBuyCar.c(this.a, str, "保存失败", "保存成功"));
    int i = 0;
    while (i < BuyBuyCar.a(this.a).size())
    {
      ((BuyOrderVo)BuyBuyCar.a(this.a).get(i)).setOldNumber(((BuyOrderVo)BuyBuyCar.a(this.a).get(i)).getNumber());
      i += 1;
    }
    this.a.updateChangeStatus();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */