import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.ListView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.buy.BuyOrderVo;
import cn.apppark.mcd.vo.buy.BuySignVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.vo.buy.PayResult;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuySubOrderResult;
import cn.apppark.vertify.activity.buy.adapter.BuySubOrderResultAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class fx
  extends Handler
{
  private fx(BuySubOrderResult paramBuySubOrderResult) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    case 2: 
    case 3: 
    case 4: 
    default: 
      return;
    case 1: 
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        BuySubOrderResult.b(this.a).showError(2131230757, true, false, "255");
        BuySubOrderResult.b(this.a).setInterfaceRef(new fy(this));
        return;
      }
      BuySubOrderResult.b(this.a).hidden();
      paramMessage = new fz(this).getType();
      BuySubOrderResult.a(this.a, JsonParserBuy.parseJson2List(str, paramMessage));
      if ((BuySubOrderResult.d(this.a) == null) || (BuySubOrderResult.d(this.a).size() == 0))
      {
        HQCHApplication.instance.initToast("订单提交失败", 0);
        BuySubOrderResult.e(this.a).setVisibility(8);
        return;
      }
      BuySubOrderResult.e(this.a).setVisibility(0);
      BuySubOrderResult.a(this.a, new BuySubOrderResultAdapter(BuySubOrderResult.f(this.a), BuySubOrderResult.d(this.a), this.a));
      BuySubOrderResult.h(this.a).setAdapter(BuySubOrderResult.g(this.a));
      return;
    case 7: 
      BuySubOrderResult.i(this.a).dismiss();
      paramMessage = new PayResult((String)paramMessage.obj).getResultStatus();
      if (TextUtils.equals(paramMessage, "9000"))
      {
        BuySubOrderResult.a(this.a, "支付成功,请到我的订单中查询", 0);
        BuySubOrderResult.j(this.a).show();
        this.a.setResult(1);
        this.a.finish();
        return;
      }
      if (TextUtils.equals(paramMessage, "8000"))
      {
        BuySubOrderResult.b(this.a, "支付结果确认中", 0);
        return;
      }
      BuySubOrderResult.c(this.a, "支付失败", 0);
      return;
    case 8: 
      if (((Boolean)paramMessage.obj).booleanValue())
      {
        BuySubOrderResult.a(this.a, 5, BuySubOrderResult.k(this.a).getId());
        return;
      }
      BuySubOrderResult.l(this.a).dismiss();
      BuySubOrderResult.d(this.a, "支付宝账号无效，请检查", 0);
      return;
    case 5: 
      BuySubOrderResult.m(this.a).show();
      paramMessage = (BuySignVo)JsonParserBuy.parseJson2Vo(str, BuySignVo.class);
      if (paramMessage != null)
      {
        if (paramMessage.getSign() == null)
        {
          BuySubOrderResult.e(this.a, "支付失败，签名为空", 0);
          return;
        }
        this.a.payZFB(7, paramMessage.getSignStr(), paramMessage.getSign());
        return;
      }
      BuySubOrderResult.f(this.a, "支付失败，请重试", 0);
      BuySubOrderResult.n(this.a).dismiss();
      return;
    }
    BuySubOrderResult.o(this.a).dismiss();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */