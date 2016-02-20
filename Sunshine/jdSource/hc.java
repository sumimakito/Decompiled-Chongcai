import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynMsgCard5011;
import cn.apppark.vertify.adapter.DynMsg5011Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

@SuppressLint({"HandlerLeak"})
public final class hc
  extends Handler
{
  private hc(DynMsgCard5011 paramDynMsgCard5011) {}
  
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
      paramMessage = new hd(this).getType();
      DynMsgCard5011.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if (DynMsgCard5011.c(this.a) == null) {
        DynMsgCard5011.a(this.a, new ArrayList());
      }
      if (DynMsgCard5011.b(this.a) == 1)
      {
        DynMsgCard5011.a(this.a).clear();
        this.a.loadSuccess(2);
      }
      if (DynMsgCard5011.d(this.a) == null)
      {
        DynMsgCard5011.a(this.a).addAll(DynMsgCard5011.c(this.a));
        DynMsgCard5011.a(this.a, new DynMsg5011Adapter(DynMsgCard5011.e(this.a), DynMsgCard5011.f(this.a), DynMsgCard5011.a(this.a)));
        this.a.setAdapter(DynMsgCard5011.d(this.a));
      }
      for (;;)
      {
        DynMsgCard5011.g(this.a);
        if ((DynMsgCard5011.a(this.a) == null) || (DynMsgCard5011.a(this.a).size() <= 0)) {
          break;
        }
        this.a.onFootNodata(((DynMsgListReturnVo)DynMsgCard5011.a(this.a).get(0)).getCount(), DynMsgCard5011.a(this.a).size());
        return;
        DynMsgCard5011.a(this.a).addAll(DynMsgCard5011.c(this.a));
        DynMsgCard5011.d(this.a).notifyDataSetChanged();
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
    DynMsgCard5011.g(this.a);
    paramMessage = new he(this).getType();
    DynMsgCard5011.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
    if (DynMsgCard5011.c(this.a) != null)
    {
      DynMsgCard5011.a(this.a).clear();
      DynMsgCard5011.a(this.a).addAll(DynMsgCard5011.c(this.a));
      DynMsgCard5011.d(this.a).notifyDataSetChanged();
      if (DynMsgCard5011.a(this.a).size() > 0) {
        this.a.setSelection(0);
      }
    }
    if ((DynMsgCard5011.a(this.a) != null) && (DynMsgCard5011.a(this.a).size() > 0))
    {
      this.a.onFootNodata(((DynMsgListReturnVo)DynMsgCard5011.a(this.a).get(0)).getCount(), DynMsgCard5011.a(this.a).size());
      return;
    }
    this.a.onFootNodata(0, 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */