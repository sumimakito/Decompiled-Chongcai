import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import cn.apppark.mcd.vo.buy.BuyAddressVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyOrderTemp;
import cn.apppark.vertify.activity.buy.BuySubOrderResult;
import cn.apppark.vertify.activity.buy.adapter.BuyTempOrderAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"HandlerLeak"})
public final class dz
  extends Handler
{
  private dz(BuyOrderTemp paramBuyOrderTemp) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    Object localObject = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    }
    for (;;)
    {
      return;
      if ((WebServiceRequest.NO_DATA.equals(localObject)) || (WebServiceRequest.WEB_ERROR.equals(localObject)))
      {
        BuyOrderTemp.a(this.a).showError(2131230757, true, false, "255");
        BuyOrderTemp.a(this.a).setInterfaceRef(new ea(this));
        return;
      }
      BuyOrderTemp.a(this.a).hidden();
      paramMessage = new eb(this).getType();
      BuyOrderTemp.a(this.a, JsonParserBuy.parseJson2List((String)localObject, paramMessage));
      BuyOrderTemp.a(this.a, (BuyAddressVo)JsonParserBuy.parseJson2VoByNode((String)localObject, BuyAddressVo.class, "contact"));
      BuyOrderTemp.b(this.a, BuyOrderTemp.b(this.a));
      if (BuyOrderTemp.c(this.a) == null)
      {
        BuyOrderTemp.a(this.a, "确认订单失败", 0);
        this.a.finish();
        return;
      }
      if (BuyOrderTemp.d(this.a) == null)
      {
        BuyOrderTemp.b(this.a, new ArrayList());
        BuyOrderTemp.e(this.a).addAll(BuyOrderTemp.c(this.a));
        BuyOrderTemp.a(this.a, new BuyTempOrderAdapter(this.a, BuyOrderTemp.f(this.a), BuyOrderTemp.e(this.a)));
        BuyOrderTemp.g(this.a).setAdapter(BuyOrderTemp.d(this.a));
      }
      for (;;)
      {
        this.a.setTotalPrice(BuyOrderTemp.e(this.a));
        return;
        BuyOrderTemp.e(this.a).addAll(BuyOrderTemp.c(this.a));
        BuyOrderTemp.d(this.a).notifyDataSetChanged();
      }
      BuyOrderTemp.h(this.a).dismiss();
      if (BuyOrderTemp.a(this.a, (String)localObject, "订单提交失败,请重试", "订单提交成功")) {
        try
        {
          paramMessage = new JSONObject((String)localObject).getString("ids");
          if (paramMessage != null)
          {
            localObject = new Intent(BuyOrderTemp.f(this.a), BuySubOrderResult.class);
            ((Intent)localObject).putExtra("ids", paramMessage);
            this.a.startActivity((Intent)localObject);
            this.a.finish();
            return;
          }
        }
        catch (JSONException paramMessage)
        {
          paramMessage.printStackTrace();
          return;
        }
      }
    }
    BuyOrderTemp.a(this.a, (String)localObject);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */