import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.SwipeListView;
import cn.apppark.vertify.activity.buy.BuyProductCollection;
import cn.apppark.vertify.activity.buy.adapter.BuyCollectionAdapter2;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class ex
  extends Handler
{
  private ex(BuyProductCollection paramBuyProductCollection) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        return;
        BuyProductCollection.c(this.a).onFootRefreshComplete();
        if ((BuyProductCollection.d(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
        {
          BuyProductCollection.e(this.a).showError(2131230757, true, false, "255");
          BuyProductCollection.e(this.a).setInterfaceRef(new ey(this));
          return;
        }
        BuyProductCollection.e(this.a).hidden();
        paramMessage = new ez(this).getType();
        BuyProductCollection.a(this.a, JsonParserBuy.parseJson2List(str, paramMessage));
        if ((BuyProductCollection.f(this.a) != null) && (BuyProductCollection.f(this.a).size() > 0))
        {
          if (BuyProductCollection.b(this.a) == null) {
            BuyProductCollection.b(this.a, new ArrayList());
          }
          BuyProductCollection.b(this.a).addAll(BuyProductCollection.f(this.a));
          BuyProductCollection.g(this.a);
        }
        if (BuyProductCollection.d(this.a) == null)
        {
          BuyProductCollection.a(this.a, new BuyCollectionAdapter2(BuyProductCollection.h(this.a), BuyProductCollection.b(this.a), BuyProductCollection.c(this.a).getRightViewWidth()));
          BuyProductCollection.c(this.a).setAdapter(BuyProductCollection.d(this.a));
          BuyProductCollection.d(this.a).setOnRightItemClickListener(new fa(this));
        }
        for (;;)
        {
          BuyProductCollection.i(this.a);
          return;
          BuyProductCollection.d(this.a).notifyDataSetChanged();
        }
      } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
      paramMessage = new fd(this).getType();
      BuyProductCollection.a(this.a, JsonParserBuy.parseJson2List(str, paramMessage));
      BuyProductCollection.b(this.a).clear();
      if ((BuyProductCollection.f(this.a) != null) && (BuyProductCollection.f(this.a).size() > 0))
      {
        BuyProductCollection.g(this.a);
        BuyProductCollection.b(this.a).addAll(BuyProductCollection.f(this.a));
      }
      BuyProductCollection.d(this.a).notifyDataSetChanged();
      BuyProductCollection.i(this.a);
      return;
    }
    BuyProductCollection.a(this.a, true);
    BuyProductCollection.j(this.a).dismiss();
    if (BuyProductCollection.a(this.a, str, "删除失败,请重试", "删除成功"))
    {
      BuyProductCollection.b(this.a).remove(BuyProductCollection.k(this.a));
      BuyProductCollection.d(this.a).notifyDataSetChanged();
    }
    if (BuyProductCollection.b(this.a).size() == 0)
    {
      BuyProductCollection.l(this.a).setVisibility(0);
      return;
    }
    BuyProductCollection.l(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */