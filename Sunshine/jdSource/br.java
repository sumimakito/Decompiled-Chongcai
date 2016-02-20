import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.SwipeListView;
import cn.apppark.vertify.activity.buy.BuyAddressList;
import cn.apppark.vertify.activity.buy.adapter.BuyAddressListAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class br
  extends Handler
{
  private br(BuyAddressList paramBuyAddressList) {}
  
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
        BuyAddressList.g(this.a).onFootRefreshComplete();
        if ((BuyAddressList.e(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
        {
          BuyAddressList.h(this.a).showError(2131230757, true, false, "255");
          BuyAddressList.h(this.a).setInterfaceRef(new bs(this));
          return;
        }
        BuyAddressList.h(this.a).hidden();
        paramMessage = new bt(this).getType();
        BuyAddressList.a(this.a, JsonParserBuy.parseJson2List(str, paramMessage));
        if ((BuyAddressList.i(this.a) != null) && (BuyAddressList.i(this.a).size() > 0))
        {
          if (BuyAddressList.b(this.a) == null) {
            BuyAddressList.b(this.a, new ArrayList());
          }
          BuyAddressList.b(this.a).addAll(BuyAddressList.i(this.a));
          BuyAddressList.j(this.a);
        }
        if (BuyAddressList.e(this.a) == null)
        {
          if (BuyAddressList.b(this.a) == null) {
            BuyAddressList.b(this.a, new ArrayList());
          }
          BuyAddressList.a(this.a, new BuyAddressListAdapter(BuyAddressList.a(this.a), BuyAddressList.b(this.a), BuyAddressList.g(this.a).getRightViewWidth()));
          BuyAddressList.g(this.a).setAdapter(BuyAddressList.e(this.a));
        }
        for (;;)
        {
          BuyAddressList.e(this.a).setOnRightItemClickListener(new bu(this));
          BuyAddressList.e(this.a).setOnRightItem2ClickListener(new bx(this));
          BuyAddressList.k(this.a);
          return;
          BuyAddressList.e(this.a).notifyDataSetChanged();
        }
      } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
      paramMessage = new by(this).getType();
      BuyAddressList.a(this.a, JsonParserBuy.parseJson2List(str, paramMessage));
      BuyAddressList.b(this.a).clear();
      if ((BuyAddressList.i(this.a) != null) && (BuyAddressList.i(this.a).size() > 0))
      {
        BuyAddressList.j(this.a);
        BuyAddressList.b(this.a).addAll(BuyAddressList.i(this.a));
      }
      BuyAddressList.e(this.a).notifyDataSetChanged();
      BuyAddressList.k(this.a);
      return;
      BuyAddressList.b(this.a, true);
      BuyAddressList.l(this.a).dismiss();
    } while (!BuyAddressList.a(this.a, str, "删除失败,请重试", "删除成功"));
    BuyAddressList.b(this.a).remove(BuyAddressList.m(this.a));
    BuyAddressList.e(this.a).notifyDataSetChanged();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/br.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */