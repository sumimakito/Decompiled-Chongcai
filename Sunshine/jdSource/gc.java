import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.BuyViewHistory;
import cn.apppark.vertify.activity.buy.adapter.BuyViewHistoryAdapter;
import java.util.ArrayList;

public final class gc
  extends Handler
{
  private gc(BuyViewHistory paramBuyViewHistory) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      BuyViewHistory.c(this.a).hidden();
      paramMessage = new gd(this).getType();
      BuyViewHistory.a(this.a, JsonParserBuy.parseJson2ListNoItem(str, paramMessage));
      if ((BuyViewHistory.d(this.a) != null) && (BuyViewHistory.d(this.a).size() > 0))
      {
        if (BuyViewHistory.b(this.a) == null) {
          BuyViewHistory.b(this.a, new ArrayList());
        }
        BuyViewHistory.b(this.a).addAll(BuyViewHistory.d(this.a));
      }
      if (BuyViewHistory.e(this.a) == null)
      {
        if (BuyViewHistory.b(this.a) == null) {
          BuyViewHistory.b(this.a, new ArrayList());
        }
        BuyViewHistory.a(this.a, new BuyViewHistoryAdapter(BuyViewHistory.f(this.a), BuyViewHistory.b(this.a)));
        BuyViewHistory.g(this.a).setAdapter(BuyViewHistory.e(this.a));
      }
      for (;;)
      {
        if (BuyViewHistory.b(this.a).size() == 0) {
          HQCHApplication.instance.initToast("暂无浏览记录", 0);
        }
        BuyViewHistory.h(this.a);
        return;
        BuyViewHistory.e(this.a).notifyDataSetChanged();
      }
    }
    BuyViewHistory.g(this.a).onHeadRefreshComplete();
    paramMessage = new ge(this).getType();
    BuyViewHistory.a(this.a, JsonParserBuy.parseJson2ListNoItem(str, paramMessage));
    BuyViewHistory.b(this.a).clear();
    if ((BuyViewHistory.d(this.a) != null) && (BuyViewHistory.d(this.a).size() > 0)) {
      BuyViewHistory.b(this.a).addAll(BuyViewHistory.d(this.a));
    }
    BuyViewHistory.e(this.a).notifyDataSetChanged();
    BuyViewHistory.h(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/gc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */