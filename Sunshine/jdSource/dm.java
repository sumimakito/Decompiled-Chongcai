import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.BuyMyOrderList;
import cn.apppark.vertify.activity.buy.adapter.BuyOrderManagerAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class dm
  extends Handler
{
  private dm(BuyMyOrderList paramBuyMyOrderList) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    case 2: 
    default: 
      return;
    case 1: 
      BuyMyOrderList.g(this.a).onFootRefreshComplete();
      BuyMyOrderList.g(this.a).onHeadRefreshComplete();
      if ((BuyMyOrderList.h(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        BuyMyOrderList.i(this.a).showError(2131230757, true, false, "255");
        BuyMyOrderList.i(this.a).setInterfaceRef(new dn(this));
        return;
      }
      BuyMyOrderList.i(this.a).hidden();
      paramMessage = JsonParserBuy.parseJson2List(str, new do(this).getType());
      BuyMyOrderList.a(this.a, paramMessage);
      BuyMyOrderList.j(this.a);
      return;
    }
    BuyMyOrderList.a(this.a, true);
    BuyMyOrderList.e(this.a).dismiss();
    if (BuyMyOrderList.a(this.a, str, "删除失败,请重试", "删除成功"))
    {
      BuyMyOrderList.d(this.a).remove(BuyMyOrderList.f(this.a));
      BuyMyOrderList.h(this.a).notifyDataSetChanged();
    }
    BuyMyOrderList.k(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */