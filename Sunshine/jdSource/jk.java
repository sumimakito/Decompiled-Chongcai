import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.free.dyn.DynProductNine5005;
import cn.apppark.vertify.adapter.DynProduct5005Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class jk
  extends Handler
{
  private jk(DynProductNine5005 paramDynProductNine5005) {}
  
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
      DynProductNine5005.f(this.a).onFootRefreshComplete();
      if (DynProductNine5005.d(this.a) != null) {
        DynProductNine5005.d(this.a).dismiss();
      }
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(2);
        return;
      }
      paramMessage = new jl(this).getType();
      DynProductNine5005.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if (DynProductNine5005.g(this.a) == null) {
        DynProductNine5005.a(this.a, new ArrayList());
      }
      if (DynProductNine5005.e(this.a) == 1)
      {
        this.a.loadSuccess(2);
        DynProductNine5005.h(this.a).clear();
      }
      if (DynProductNine5005.i(this.a) == null)
      {
        DynProductNine5005.h(this.a).addAll(DynProductNine5005.g(this.a));
        DynProductNine5005.a(this.a, new DynProduct5005Adapter(this.a, DynProductNine5005.j(this.a), DynProductNine5005.k(this.a), DynProductNine5005.l(this.a), DynProductNine5005.h(this.a)));
        DynProductNine5005.f(this.a).setAdapter(DynProductNine5005.i(this.a));
      }
      for (;;)
      {
        DynProductNine5005.m(this.a);
        if ((DynProductNine5005.h(this.a) == null) || (DynProductNine5005.h(this.a).size() <= 0)) {
          break;
        }
        DynProductNine5005.f(this.a).onFootNodata(((DynProductReturnVo)DynProductNine5005.h(this.a).get(0)).getCount(), DynProductNine5005.h(this.a).size());
        return;
        DynProductNine5005.h(this.a).addAll(DynProductNine5005.g(this.a));
        DynProductNine5005.i(this.a).notifyDataSetChanged();
      }
      DynProductNine5005.f(this.a).onFootNodata(0, 0);
      return;
    }
    if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
    {
      this.a.loadFail(3);
      return;
    }
    this.a.loadSuccess(3);
    DynProductNine5005.m(this.a);
    paramMessage = new jm(this).getType();
    DynProductNine5005.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
    if (DynProductNine5005.g(this.a) != null)
    {
      DynProductNine5005.h(this.a).clear();
      DynProductNine5005.h(this.a).addAll(DynProductNine5005.g(this.a));
      DynProductNine5005.i(this.a).notifyDataSetChanged();
      if (DynProductNine5005.h(this.a).size() > 0) {
        DynProductNine5005.f(this.a).setSelection(0);
      }
    }
    if ((DynProductNine5005.h(this.a) != null) && (DynProductNine5005.h(this.a).size() > 0))
    {
      DynProductNine5005.f(this.a).onFootNodata(((DynProductReturnVo)DynProductNine5005.h(this.a).get(0)).getCount(), DynProductNine5005.h(this.a).size());
      return;
    }
    DynProductNine5005.f(this.a).onFootNodata(0, 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */