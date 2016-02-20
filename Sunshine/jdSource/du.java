import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.ListView;
import android.widget.TextView;
import cn.apppark.mcd.vo.buy.BuyAddressVo;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.vo.buy.BuySignVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.vo.buy.PayResult;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyOrderDetail;
import cn.apppark.vertify.activity.buy.adapter.BuyOrderDetailAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

@SuppressLint({"HandlerLeak"})
public final class du
  extends Handler
{
  private du(BuyOrderDetail paramBuyOrderDetail) {}
  
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
        do
        {
          do
          {
            return;
            BuyOrderDetail.c(this.a).dismiss();
          } while (!BuyOrderDetail.a(this.a, str, "确认收货失败", "确认收货成功"));
          this.a.setResult(1);
          this.a.finish();
          return;
          if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
          {
            BuyOrderDetail.d(this.a).showError(2131230757, true, false, "255");
            BuyOrderDetail.d(this.a).setInterfaceRef(new dv(this));
            return;
          }
          BuyOrderDetail.d(this.a).hidden();
          BuyOrderDetail.f(this.a);
          paramMessage = new dw(this).getType();
          BuyOrderDetail.a(this.a, JsonParserBuy.parseJson2List(str, paramMessage));
          BuyOrderDetail.a(this.a, (BuyAddressVo)JsonParserBuy.parseJson2VoByNode(str, BuyAddressVo.class, "contact"));
          BuyOrderDetail.a(this.a, (BuyOrderVo)JsonParserBuy.parseJson2Vo(str, BuyOrderVo.class));
          if (BuyOrderDetail.g(this.a) != null)
          {
            BuyOrderDetail.h(this.a).setText(BuyOrderDetail.g(this.a).getPhone());
            BuyOrderDetail.i(this.a).setText(BuyOrderDetail.g(this.a).getAddress());
            BuyOrderDetail.j(this.a).setText(BuyOrderDetail.g(this.a).getName());
          }
          if (BuyOrderDetail.k(this.a) != null) {
            BuyOrderDetail.l(this.a);
          }
          if (BuyOrderDetail.m(this.a) == null)
          {
            BuyOrderDetail.b(this.a, new ArrayList());
            BuyOrderDetail.o(this.a).addAll(BuyOrderDetail.n(this.a));
            BuyOrderDetail.a(this.a, new BuyOrderDetailAdapter(BuyOrderDetail.p(this.a), BuyOrderDetail.o(this.a)));
            BuyOrderDetail.q(this.a).setAdapter(BuyOrderDetail.m(this.a));
            return;
          }
          BuyOrderDetail.o(this.a).addAll(BuyOrderDetail.n(this.a));
          BuyOrderDetail.m(this.a).notifyDataSetChanged();
          return;
          BuyOrderDetail.c(this.a).dismiss();
        } while (!BuyOrderDetail.b(this.a, str, "取消失败,请重试", "取消成功"));
        this.a.setResult(1);
        this.a.finish();
        return;
        BuyOrderDetail.c(this.a).dismiss();
        paramMessage = new PayResult((String)paramMessage.obj).getResultStatus();
        if (TextUtils.equals(paramMessage, "9000"))
        {
          BuyOrderDetail.c(this.a).show();
          BuyOrderDetail.a(this.a, 6);
          return;
        }
        if (TextUtils.equals(paramMessage, "8000"))
        {
          BuyOrderDetail.a(this.a, "支付结果确认中", 0);
          return;
        }
        BuyOrderDetail.b(this.a, "支付失败", 0);
        return;
        if (((Boolean)paramMessage.obj).booleanValue())
        {
          BuyOrderDetail.b(this.a, 5);
          return;
        }
        BuyOrderDetail.c(this.a).dismiss();
        BuyOrderDetail.c(this.a, "支付宝账号无效，请检查", 0);
        return;
        BuyOrderDetail.c(this.a).show();
        paramMessage = (BuySignVo)JsonParserBuy.parseJson2Vo(str, BuySignVo.class);
        if (paramMessage != null)
        {
          if (paramMessage.getSign() == null)
          {
            BuyOrderDetail.c(this.a).dismiss();
            BuyOrderDetail.d(this.a, "支付失败，签名为空", 0);
            return;
          }
          this.a.payZFB(7, paramMessage.getSignStr(), paramMessage.getSign());
          return;
        }
        BuyOrderDetail.e(this.a, "支付失败，请重试", 0);
        BuyOrderDetail.c(this.a).dismiss();
        return;
        BuyOrderDetail.c(this.a).dismiss();
      } while (!BuyOrderDetail.c(this.a, str, "支付成功", "支付结果确认中"));
      BuyOrderDetail.k(this.a).setStatus("1");
      BuyOrderDetail.l(this.a);
      this.a.setResult(1);
      this.a.finish();
      return;
      BuyOrderDetail.c(this.a).dismiss();
    } while (!BuyOrderDetail.d(this.a, str, "订单删除失败,请重试", "订单删除成功"));
    this.a.setResult(1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/du.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */