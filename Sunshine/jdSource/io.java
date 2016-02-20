import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.free.dyn.DynPorductList5004;
import cn.apppark.vertify.adapter.DynProduct5004Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class io
  extends Handler
{
  private io(DynPorductList5004 paramDynPorductList5004) {}
  
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
      DynPorductList5004.f(this.a).onFootRefreshComplete();
      if (DynPorductList5004.b(this.a) != null) {
        DynPorductList5004.b(this.a).dismiss();
      }
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(2);
        return;
      }
      paramMessage = new ip(this).getType();
      DynPorductList5004.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if (DynPorductList5004.g(this.a) == null) {
        DynPorductList5004.a(this.a, new ArrayList());
      }
      if (DynPorductList5004.e(this.a) == 1)
      {
        DynPorductList5004.c(this.a).clear();
        this.a.loadSuccess(2);
      }
      if (DynPorductList5004.h(this.a) == null)
      {
        DynPorductList5004.c(this.a).addAll(DynPorductList5004.g(this.a));
        DynPorductList5004.a(this.a, new DynProduct5004Adapter(DynPorductList5004.d(this.a), DynPorductList5004.i(this.a), DynPorductList5004.c(this.a)));
        DynPorductList5004.f(this.a).setAdapter(DynPorductList5004.h(this.a));
      }
      for (;;)
      {
        DynPorductList5004.j(this.a);
        if ((DynPorductList5004.c(this.a) == null) || (DynPorductList5004.c(this.a).size() <= 0)) {
          break;
        }
        DynPorductList5004.f(this.a).onFootNodata(((DynProductReturnVo)DynPorductList5004.c(this.a).get(0)).getCount(), DynPorductList5004.c(this.a).size());
        return;
        DynPorductList5004.c(this.a).addAll(DynPorductList5004.g(this.a));
        DynPorductList5004.h(this.a).notifyDataSetChanged();
      }
      DynPorductList5004.f(this.a).onFootNodata(0, 0);
      return;
    }
    if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
    {
      this.a.loadFail(3);
      return;
    }
    this.a.loadSuccess(3);
    DynPorductList5004.j(this.a);
    paramMessage = new iq(this).getType();
    DynPorductList5004.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
    if (DynPorductList5004.g(this.a) != null)
    {
      DynPorductList5004.c(this.a).clear();
      DynPorductList5004.c(this.a).addAll(DynPorductList5004.g(this.a));
      DynPorductList5004.h(this.a).notifyDataSetChanged();
      if (DynPorductList5004.c(this.a).size() > 0) {
        DynPorductList5004.f(this.a).setSelection(0);
      }
    }
    if ((DynPorductList5004.c(this.a) != null) && (DynPorductList5004.c(this.a).size() > 0))
    {
      DynPorductList5004.f(this.a).onFootNodata(((DynProductReturnVo)DynPorductList5004.c(this.a).get(0)).getCount(), DynPorductList5004.c(this.a).size());
      return;
    }
    DynPorductList5004.f(this.a).onFootNodata(0, 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/io.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */