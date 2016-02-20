import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.buy.BuyProCommentVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.BuyProCommentList2;
import cn.apppark.vertify.activity.buy.adapter.BuyProComment2Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class eq
  extends Handler
{
  private eq(BuyProCommentList2 paramBuyProCommentList2) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    BuyProCommentList2.a(this.a).onHeadRefreshComplete();
    if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
    {
      BuyProCommentList2.b(this.a).showError(2131230757, true, false, "255");
      BuyProCommentList2.b(this.a).setInterfaceRef(new er(this));
      return;
    }
    BuyProCommentList2.b(this.a).hidden();
    paramMessage = new es(this).getType();
    BuyProCommentList2.a(this.a, JsonParserBuy.parseToListByNode(str, paramMessage, "item"));
    if ((BuyProCommentList2.c(this.a) == null) || (BuyProCommentList2.c(this.a).size() == 0)) {
      BuyProCommentList2.a(this.a, new ArrayList());
    }
    if (BuyProCommentList2.c(this.a).size() == 0) {
      HQCHApplication.instance.initToast("暂无评价", 0);
    }
    int i;
    do
    {
      BuyProCommentList2.g(this.a).setText("全部(" + BuyProCommentList2.c(this.a).size() + ")");
      BuyProCommentList2.h(this.a).setText("好评(" + BuyProCommentList2.d(this.a).size() + ")");
      BuyProCommentList2.i(this.a).setText("中评(" + BuyProCommentList2.e(this.a).size() + ")");
      BuyProCommentList2.j(this.a).setText("差评(" + BuyProCommentList2.f(this.a).size() + ")");
      BuyProCommentList2.a(this.a, new BuyProComment2Adapter(BuyProCommentList2.k(this.a), BuyProCommentList2.c(this.a), false));
      BuyProCommentList2.a(this.a).setAdapter(BuyProCommentList2.l(this.a));
      BuyProCommentList2.a(this.a).onFootNodata(0, 0);
      return;
      i = 0;
    } while (i >= BuyProCommentList2.c(this.a).size());
    switch (((BuyProCommentVo)BuyProCommentList2.c(this.a).get(i)).getScore())
    {
    }
    for (;;)
    {
      i += 1;
      break;
      BuyProCommentList2.d(this.a).add(BuyProCommentList2.c(this.a).get(i));
      continue;
      BuyProCommentList2.e(this.a).add(BuyProCommentList2.c(this.a).get(i));
      continue;
      BuyProCommentList2.f(this.a).add(BuyProCommentList2.c(this.a).get(i));
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/eq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */