import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView3;
import cn.apppark.vertify.activity.buy.BuyMsgCommentList;
import cn.apppark.vertify.activity.buy.adapter.BuyMsgCommentAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class cs
  extends Handler
{
  private cs(BuyMsgCommentList paramBuyMsgCommentList) {}
  
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
      BuyMsgCommentList.d(this.a).onFootRefreshComplete();
      if ((BuyMsgCommentList.e(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        BuyMsgCommentList.f(this.a).show(2131230757, true, false, "255");
        BuyMsgCommentList.f(this.a).setInterfaceRef(new ct(this));
        return;
      }
      BuyMsgCommentList.f(this.a).hidden();
      paramMessage = new cu(this).getType();
      BuyMsgCommentList.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if ((BuyMsgCommentList.g(this.a) != null) && (BuyMsgCommentList.g(this.a).size() > 0))
      {
        if (BuyMsgCommentList.a(this.a) == null) {
          BuyMsgCommentList.b(this.a, new ArrayList());
        }
        BuyMsgCommentList.a(this.a).addAll(BuyMsgCommentList.g(this.a));
        BuyMsgCommentList.h(this.a);
      }
      if (BuyMsgCommentList.a(this.a).size() == 0) {
        HQCHApplication.instance.initToast("暂无回复", 0);
      }
      if (BuyMsgCommentList.e(this.a) == null)
      {
        BuyMsgCommentList.a(this.a, new BuyMsgCommentAdapter(BuyMsgCommentList.c(this.a), BuyMsgCommentList.a(this.a)));
        BuyMsgCommentList.d(this.a).setAdapter(BuyMsgCommentList.e(this.a));
      }
      for (;;)
      {
        BuyMsgCommentList.a(this.a, BuyMsgCommentList.d(this.a), BuyMsgCommentList.a(this.a));
        return;
        BuyMsgCommentList.e(this.a).notifyDataSetChanged();
      }
      BuyMsgCommentList.d(this.a).onHeadRefreshComplete();
    } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
    paramMessage = new cv(this).getType();
    BuyMsgCommentList.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
    BuyMsgCommentList.a(this.a).clear();
    if ((BuyMsgCommentList.g(this.a) != null) && (BuyMsgCommentList.g(this.a).size() > 0))
    {
      BuyMsgCommentList.h(this.a);
      BuyMsgCommentList.a(this.a).addAll(BuyMsgCommentList.g(this.a));
    }
    BuyMsgCommentList.e(this.a).notifyDataSetChanged();
    BuyMsgCommentList.a(this.a, BuyMsgCommentList.d(this.a), BuyMsgCommentList.a(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */