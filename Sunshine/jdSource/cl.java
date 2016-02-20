import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.BuyCollectionMsgList;
import cn.apppark.vertify.activity.buy.adapter.BuyCollectionMsgAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public final class cl
  extends Handler
{
  private cl(BuyCollectionMsgList paramBuyCollectionMsgList) {}
  
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
        BuyCollectionMsgList.e(this.a).onFootRefreshComplete();
        if ((BuyCollectionMsgList.f(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
        {
          BuyCollectionMsgList.g(this.a).showError(2131230757, true, false, "255");
          BuyCollectionMsgList.g(this.a).setInterfaceRef(new cm(this));
          return;
        }
        BuyCollectionMsgList.g(this.a).hidden();
        paramMessage = new cn(this).getType();
        BuyCollectionMsgList.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
        if ((BuyCollectionMsgList.h(this.a) != null) && (BuyCollectionMsgList.h(this.a).size() > 0))
        {
          if (BuyCollectionMsgList.c(this.a) == null) {
            BuyCollectionMsgList.b(this.a, new ArrayList());
          }
          BuyCollectionMsgList.c(this.a).addAll(BuyCollectionMsgList.h(this.a));
          BuyCollectionMsgList.i(this.a);
        }
        if (BuyCollectionMsgList.f(this.a) == null)
        {
          BuyCollectionMsgList.a(this.a, new BuyCollectionMsgAdapter(BuyCollectionMsgList.d(this.a), BuyCollectionMsgList.c(this.a)));
          BuyCollectionMsgList.e(this.a).setAdapter(BuyCollectionMsgList.f(this.a));
        }
        for (;;)
        {
          BuyCollectionMsgList.j(this.a);
          return;
          BuyCollectionMsgList.f(this.a).notifyDataSetChanged();
        }
        BuyCollectionMsgList.e(this.a).onHeadRefreshComplete();
      } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
      paramMessage = new co(this).getType();
      BuyCollectionMsgList.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      BuyCollectionMsgList.c(this.a).clear();
      if ((BuyCollectionMsgList.h(this.a) != null) && (BuyCollectionMsgList.h(this.a).size() > 0))
      {
        BuyCollectionMsgList.i(this.a);
        BuyCollectionMsgList.c(this.a).addAll(BuyCollectionMsgList.h(this.a));
      }
      BuyCollectionMsgList.f(this.a).notifyDataSetChanged();
      BuyCollectionMsgList.j(this.a);
      return;
    }
    BuyCollectionMsgList.a(this.a, true);
    BuyCollectionMsgList.k(this.a).dismiss();
    try
    {
      if ("1".equals(new JSONObject(str).getString("retFlag")))
      {
        BuyCollectionMsgList.a(this.a, "删除成功", 1);
        BuyCollectionMsgList.c(this.a).remove(BuyCollectionMsgList.l(this.a));
        BuyCollectionMsgList.f(this.a).notifyDataSetChanged();
      }
      while (BuyCollectionMsgList.c(this.a).size() == 0)
      {
        BuyCollectionMsgList.m(this.a).setVisibility(0);
        return;
        BuyCollectionMsgList.b(this.a, "删除失败,请重试", 1);
      }
    }
    catch (JSONException paramMessage)
    {
      for (;;)
      {
        BuyCollectionMsgList.c(this.a, "删除失败,请重试", 1);
        paramMessage.printStackTrace();
      }
      BuyCollectionMsgList.m(this.a).setVisibility(8);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */