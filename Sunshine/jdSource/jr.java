import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.RssParser;
import cn.apppark.vertify.activity.free.dyn.DynRss5003;
import cn.apppark.vertify.adapter.DynRss5003Adapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;

public final class jr
  extends Handler
{
  private jr(DynRss5003 paramDynRss5003) {}
  
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
      this.a.loadSuccess(2);
      paramMessage = new ByteArrayInputStream(str.getBytes());
      try
      {
        DynRss5003.a(this.a, RssParser.parseRss(paramMessage, DynRss5003.c(this.a)));
        if ((DynRss5003.d(this.a) == null) && (DynRss5003.e(this.a) != null))
        {
          DynRss5003.a(this.a).addAll(DynRss5003.e(this.a));
          DynRss5003.a(this.a, new DynRss5003Adapter(DynRss5003.f(this.a), DynRss5003.g(this.a), DynRss5003.a(this.a)));
          this.a.setAdapter(DynRss5003.d(this.a));
          this.a.onFootNodata(0, 0);
          return;
        }
      }
      catch (Exception paramMessage)
      {
        for (;;)
        {
          paramMessage.printStackTrace();
          continue;
          if (DynRss5003.e(this.a) != null)
          {
            DynRss5003.a(this.a).addAll(DynRss5003.e(this.a));
            DynRss5003.d(this.a).notifyDataSetChanged();
          }
        }
      }
    }
    if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
    {
      this.a.loadFail(3);
      return;
    }
    this.a.loadSuccess(3);
    paramMessage = new ByteArrayInputStream(str.getBytes());
    try
    {
      DynRss5003.a(this.a, RssParser.parseRss(paramMessage, DynRss5003.c(this.a)));
      if (DynRss5003.e(this.a) != null)
      {
        DynRss5003.a(this.a).clear();
        DynRss5003.a(this.a).addAll(DynRss5003.e(this.a));
        DynRss5003.d(this.a).notifyDataSetChanged();
      }
      this.a.onFootNodata(0, 0);
      return;
    }
    catch (Exception paramMessage)
    {
      for (;;)
      {
        paramMessage.printStackTrace();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */