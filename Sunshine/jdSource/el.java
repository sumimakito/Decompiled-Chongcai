import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.BuyProCommentList;
import cn.apppark.vertify.activity.buy.adapter.BuyProCommentAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class el
  extends Handler
{
  private el(BuyProCommentList paramBuyProCommentList) {}
  
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
      return;
      BuyProCommentList.d(this.a).onHeadRefreshComplete();
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        BuyProCommentList.e(this.a).showError(2131230757, true, false, "255");
        BuyProCommentList.e(this.a).setInterfaceRef(new em(this));
        return;
      }
      BuyProCommentList.e(this.a).hidden();
      paramMessage = new en(this).getType();
      BuyProCommentList.a(this.a, JsonParserBuy.parseToListByNode(str, paramMessage, "item"));
      if ((BuyProCommentList.c(this.a) == null) || (BuyProCommentList.c(this.a).size() == 0)) {
        BuyProCommentList.a(this.a, new ArrayList());
      }
      BuyProCommentList.f(this.a).setVisibility(8);
      if (BuyProCommentList.c(this.a).size() == 0)
      {
        HQCHApplication.instance.initToast("暂无可评价商品", 0);
        BuyProCommentList.g(this.a).setVisibility(0);
      }
      for (;;)
      {
        BuyProCommentList.g(this.a).setText("待评价(" + BuyProCommentList.c(this.a).size() + ")");
        BuyProCommentList.a(this.a, new BuyProCommentAdapter(BuyProCommentList.a(this.a), BuyProCommentList.c(this.a), false));
        BuyProCommentList.d(this.a).setAdapter(BuyProCommentList.h(this.a));
        BuyProCommentList.d(this.a).onFootNodata(0, 0);
        return;
        BuyProCommentList.g(this.a).setVisibility(8);
      }
      BuyProCommentList.i(this.a).onHeadRefreshComplete();
    } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
    paramMessage = new eo(this).getType();
    BuyProCommentList.b(this.a, JsonParserBuy.parseToListByNode(str, paramMessage, "item"));
    if ((BuyProCommentList.b(this.a) == null) || (BuyProCommentList.b(this.a).size() == 0)) {
      BuyProCommentList.b(this.a, new ArrayList());
    }
    BuyProCommentList.g(this.a).setVisibility(8);
    if (BuyProCommentList.b(this.a).size() == 0)
    {
      HQCHApplication.instance.initToast("暂无已评价商品", 0);
      BuyProCommentList.f(this.a).setVisibility(0);
    }
    for (;;)
    {
      BuyProCommentList.b(this.a, new BuyProCommentAdapter(BuyProCommentList.a(this.a), BuyProCommentList.b(this.a), true));
      BuyProCommentList.i(this.a).setAdapter(BuyProCommentList.j(this.a));
      BuyProCommentList.i(this.a).onFootNodata(0, 0);
      return;
      BuyProCommentList.f(this.a).setVisibility(8);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/el.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */