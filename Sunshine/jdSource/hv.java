import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynMsgList5002;
import cn.apppark.vertify.adapter.DynMsg5002Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class hv
  extends Handler
{
  private hv(DynMsgList5002 paramDynMsgList5002) {}
  
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
      this.a.onFootRefreshComplete();
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(2);
        return;
      }
      paramMessage = new hw(this).getType();
      DynMsgList5002.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if (DynMsgList5002.c(this.a) == null) {
        DynMsgList5002.a(this.a, new ArrayList());
      }
      if (DynMsgList5002.b(this.a) == 1)
      {
        DynMsgList5002.a(this.a).clear();
        this.a.loadSuccess(2);
      }
      if (DynMsgList5002.d(this.a) == null)
      {
        DynMsgList5002.a(this.a).addAll(DynMsgList5002.c(this.a));
        DynMsgList5002.a(this.a, new DynMsg5002Adapter(DynMsgList5002.e(this.a), DynMsgList5002.f(this.a), DynMsgList5002.a(this.a)));
        this.a.setAdapter(DynMsgList5002.d(this.a));
      }
      for (;;)
      {
        DynMsgList5002.g(this.a);
        if ((DynMsgList5002.a(this.a) == null) || (DynMsgList5002.a(this.a).size() <= 0)) {
          break;
        }
        this.a.onFootNodata(((DynMsgListReturnVo)DynMsgList5002.a(this.a).get(0)).getCount(), DynMsgList5002.a(this.a).size());
        return;
        DynMsgList5002.a(this.a).addAll(DynMsgList5002.c(this.a));
        DynMsgList5002.d(this.a).notifyDataSetChanged();
      }
      this.a.onFootNodata(0, 0);
      return;
    }
    if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
    {
      this.a.loadFail(3);
      return;
    }
    this.a.loadSuccess(3);
    DynMsgList5002.g(this.a);
    paramMessage = new hx(this).getType();
    DynMsgList5002.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
    if (DynMsgList5002.c(this.a) != null)
    {
      DynMsgList5002.a(this.a).clear();
      DynMsgList5002.a(this.a).addAll(DynMsgList5002.c(this.a));
      DynMsgList5002.d(this.a).notifyDataSetChanged();
      if (DynMsgList5002.a(this.a).size() > 0) {
        this.a.setSelection(0);
      }
    }
    if ((DynMsgList5002.a(this.a) != null) && (DynMsgList5002.a(this.a).size() > 0))
    {
      this.a.onFootNodata(((DynMsgListReturnVo)DynMsgList5002.a(this.a).get(0)).getCount(), DynMsgList5002.a(this.a).size());
      return;
    }
    this.a.onFootNodata(0, 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */