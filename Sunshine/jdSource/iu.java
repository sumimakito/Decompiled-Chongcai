import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.free.dyn.DynProductCard5014;
import cn.apppark.vertify.adapter.DynProduct5014Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class iu
  extends Handler
{
  private iu(DynProductCard5014 paramDynProductCard5014) {}
  
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
      DynProductCard5014.f(this.a).onFootRefreshComplete();
      if (DynProductCard5014.b(this.a) != null) {
        DynProductCard5014.b(this.a).dismiss();
      }
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(2);
        return;
      }
      paramMessage = new iv(this).getType();
      DynProductCard5014.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if (DynProductCard5014.g(this.a) == null) {
        DynProductCard5014.a(this.a, new ArrayList());
      }
      if (DynProductCard5014.e(this.a) == 1)
      {
        DynProductCard5014.c(this.a).clear();
        this.a.loadSuccess(2);
      }
      if (DynProductCard5014.h(this.a) == null)
      {
        DynProductCard5014.c(this.a).addAll(DynProductCard5014.g(this.a));
        DynProductCard5014.a(this.a, new DynProduct5014Adapter(DynProductCard5014.d(this.a), DynProductCard5014.i(this.a), DynProductCard5014.c(this.a)));
        DynProductCard5014.f(this.a).setAdapter(DynProductCard5014.h(this.a));
      }
      for (;;)
      {
        DynProductCard5014.j(this.a);
        if ((DynProductCard5014.c(this.a) == null) || (DynProductCard5014.c(this.a).size() <= 0)) {
          break;
        }
        DynProductCard5014.f(this.a).onFootNodata(((DynProductReturnVo)DynProductCard5014.c(this.a).get(0)).getCount(), DynProductCard5014.c(this.a).size());
        return;
        DynProductCard5014.c(this.a).addAll(DynProductCard5014.g(this.a));
        DynProductCard5014.h(this.a).notifyDataSetChanged();
      }
      DynProductCard5014.f(this.a).onFootNodata(0, 0);
      return;
    }
    if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
    {
      this.a.loadFail(3);
      return;
    }
    this.a.loadSuccess(3);
    DynProductCard5014.j(this.a);
    paramMessage = new iw(this).getType();
    DynProductCard5014.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
    if (DynProductCard5014.g(this.a) != null)
    {
      DynProductCard5014.c(this.a).clear();
      DynProductCard5014.c(this.a).addAll(DynProductCard5014.g(this.a));
      DynProductCard5014.h(this.a).notifyDataSetChanged();
      if (DynProductCard5014.c(this.a).size() > 0) {
        DynProductCard5014.f(this.a).setSelection(0);
      }
    }
    if ((DynProductCard5014.c(this.a) != null) && (DynProductCard5014.c(this.a).size() > 0))
    {
      DynProductCard5014.f(this.a).onFootNodata(((DynProductReturnVo)DynProductCard5014.c(this.a).get(0)).getCount(), DynProductCard5014.c(this.a).size());
      return;
    }
    DynProductCard5014.f(this.a).onFootNodata(0, 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/iu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */