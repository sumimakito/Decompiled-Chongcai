import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.file.PrivateFileReadSave;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.mcd.widget.PullDownListView2;
import cn.apppark.vertify.activity.soft.Soft;
import cn.apppark.vertify.adapter.SoftAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class qt
  extends Handler
{
  private qt(Soft paramSoft) {}
  
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
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                if (str == null)
                {
                  Soft.a(this.a, 1, 1, "recommend", false, "");
                  return;
                }
                Soft.p(this.a).hidden();
                Soft.q(this.a).autoHeadRefresh();
                Soft.a(this.a, 1, 1, "recommend", false, "");
                paramMessage = new qu(this).getType();
                Soft.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
                Soft.l(this.a).addAll(Soft.r(this.a));
                Soft.a(this.a, new SoftAdapter(Soft.s(this.a), Soft.l(this.a)));
                Soft.q(this.a).setAdapter(Soft.t(this.a));
                Soft.a(this.a, str);
                Soft.q(this.a).onFootNodata(0, 0);
                return;
                Soft.q(this.a).onFootRefreshComplete();
                Soft.q(this.a).onHeadRefreshComplete();
                if ((Soft.t(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
                {
                  Soft.p(this.a).show(2131230757, true, false, "255");
                  Soft.p(this.a).setInterfaceRef(new qw(this));
                  return;
                }
              } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
              Soft.p(this.a).hidden();
              paramMessage = new qx(this).getType();
              Soft.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
              if ((Soft.r(this.a) != null) && (Soft.r(this.a).size() > 0))
              {
                if (Soft.k(this.a) == 1)
                {
                  PrivateFileReadSave.save("recom", str, this.a);
                  Soft.l(this.a).clear();
                }
                Soft.l(this.a).addAll(Soft.r(this.a));
                Soft.u(this.a);
              }
              if (Soft.t(this.a) == null)
              {
                Soft.a(this.a, new SoftAdapter(Soft.s(this.a), Soft.l(this.a)));
                Soft.q(this.a).setAdapter(Soft.t(this.a));
                Soft.a(this.a, str);
              }
              for (;;)
              {
                Soft.a(this.a, Soft.q(this.a), Soft.l(this.a));
                return;
                Soft.t(this.a).notifyDataSetChanged();
              }
              Soft.q(this.a).onHeadRefreshComplete();
            } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
            paramMessage = new qy(this).getType();
            Soft.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
            Soft.l(this.a).clear();
            PrivateFileReadSave.save("recom", str, this.a);
            if ((Soft.r(this.a) != null) && (Soft.r(this.a).size() > 0))
            {
              Soft.u(this.a);
              Soft.l(this.a).addAll(Soft.r(this.a));
            }
            Soft.t(this.a).notifyDataSetChanged();
            Soft.a(this.a, Soft.q(this.a), Soft.l(this.a));
            Soft.a(this.a, str);
            return;
            if (str == null)
            {
              Soft.a(this.a, 1, 4, "downTop", false, "");
              return;
            }
            Soft.v(this.a).autoHeadRefresh();
            Soft.a(this.a, 1, 4, "downTop", false, "");
            paramMessage = new qz(this).getType();
            Soft.b(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
            Soft.m(this.a).addAll(Soft.w(this.a));
            Soft.b(this.a, new SoftAdapter(Soft.s(this.a), Soft.m(this.a)));
            Soft.v(this.a).setAdapter(Soft.d(this.a));
            Soft.v(this.a).onFootNodata(0, 0);
            return;
            Soft.v(this.a).onFootRefreshComplete();
            Soft.v(this.a).onHeadRefreshComplete();
            Soft.a(this.a, true);
          } while (((Soft.d(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))) || (WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
          paramMessage = new ra(this).getType();
          Soft.b(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
          if ((Soft.w(this.a) != null) && (Soft.w(this.a).size() > 0))
          {
            if (Soft.m(this.a) == null) {
              Soft.c(this.a, new ArrayList());
            }
            if (Soft.f(this.a) == 1)
            {
              PrivateFileReadSave.save("down", str, this.a);
              Soft.m(this.a).clear();
            }
            Soft.m(this.a).addAll(Soft.w(this.a));
            Soft.x(this.a);
          }
          if (Soft.d(this.a) == null)
          {
            Soft.b(this.a, new SoftAdapter(Soft.s(this.a), Soft.m(this.a)));
            Soft.v(this.a).setAdapter(Soft.d(this.a));
          }
          for (;;)
          {
            Soft.a(this.a, Soft.v(this.a), Soft.m(this.a));
            return;
            Soft.d(this.a).notifyDataSetChanged();
          }
          Soft.v(this.a).onHeadRefreshComplete();
        } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
        paramMessage = new rb(this).getType();
        Soft.b(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
        Soft.m(this.a).clear();
        if ((Soft.w(this.a) != null) && (Soft.w(this.a).size() > 0))
        {
          PrivateFileReadSave.save("down", str, this.a);
          Soft.x(this.a);
          Soft.m(this.a).addAll(Soft.w(this.a));
        }
        Soft.d(this.a).notifyDataSetChanged();
        Soft.a(this.a, Soft.v(this.a), Soft.m(this.a));
        return;
        if (str == null)
        {
          Soft.a(this.a, 1, 7, "need", false, "");
          return;
        }
        Soft.y(this.a).autoHeadRefresh();
        Soft.a(this.a, 1, 7, "need", false, "");
        paramMessage = new rc(this).getType();
        Soft.d(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
        Soft.n(this.a).addAll(Soft.z(this.a));
        Soft.c(this.a, new SoftAdapter(Soft.s(this.a), Soft.n(this.a)));
        Soft.y(this.a).setAdapter(Soft.g(this.a));
        Soft.y(this.a).onFootNodata(0, 0);
        return;
        Soft.y(this.a).onFootRefreshComplete();
        Soft.y(this.a).onHeadRefreshComplete();
        Soft.b(this.a, true);
      } while (((Soft.g(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))) || (WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
      paramMessage = new rd(this).getType();
      Soft.d(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if ((Soft.z(this.a) != null) && (Soft.z(this.a).size() > 0))
      {
        if (Soft.n(this.a) == null) {
          Soft.e(this.a, new ArrayList());
        }
        if (Soft.i(this.a) == 1)
        {
          PrivateFileReadSave.save("must", str, this.a);
          Soft.n(this.a).clear();
        }
        Soft.n(this.a).addAll(Soft.z(this.a));
        Soft.A(this.a);
      }
      if (Soft.g(this.a) == null)
      {
        Soft.c(this.a, new SoftAdapter(Soft.s(this.a), Soft.n(this.a)));
        Soft.y(this.a).setAdapter(Soft.g(this.a));
      }
      for (;;)
      {
        Soft.a(this.a, Soft.y(this.a), Soft.n(this.a));
        return;
        Soft.g(this.a).notifyDataSetChanged();
      }
      Soft.y(this.a).onHeadRefreshComplete();
    } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
    paramMessage = new qv(this).getType();
    Soft.d(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
    Soft.n(this.a).clear();
    if ((Soft.z(this.a) != null) && (Soft.z(this.a).size() > 0))
    {
      PrivateFileReadSave.save("must", str, this.a);
      Soft.A(this.a);
      Soft.n(this.a).addAll(Soft.z(this.a));
    }
    Soft.g(this.a).notifyDataSetChanged();
    Soft.a(this.a, Soft.y(this.a), Soft.n(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/qt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */