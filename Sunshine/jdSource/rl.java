import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.soft.SoftList;
import cn.apppark.vertify.adapter.SoftAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class rl
  extends Handler
{
  private rl(SoftList paramSoftList) {}
  
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
      SoftList.c(this.a).onFootRefreshComplete();
      if ((SoftList.d(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        SoftList.e(this.a).show(2131230757, true, false, "255");
        SoftList.e(this.a).setInterfaceRef(new rm(this));
        return;
      }
      SoftList.e(this.a).hidden();
      paramMessage = new rn(this).getType();
      SoftList.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      if ((SoftList.f(this.a) != null) && (SoftList.f(this.a).size() > 0))
      {
        if (SoftList.b(this.a) == null) {
          SoftList.b(this.a, new ArrayList());
        }
        SoftList.b(this.a).addAll(SoftList.f(this.a));
        SoftList.g(this.a);
      }
      if (SoftList.d(this.a) == null)
      {
        SoftList.a(this.a, new SoftAdapter(SoftList.h(this.a), SoftList.b(this.a)));
        SoftList.c(this.a).setAdapter(SoftList.d(this.a));
      }
      for (;;)
      {
        SoftList.a(this.a, SoftList.c(this.a), SoftList.b(this.a));
        return;
        SoftList.d(this.a).notifyDataSetChanged();
      }
      SoftList.c(this.a).onHeadRefreshComplete();
    } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
    paramMessage = new ro(this).getType();
    SoftList.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
    SoftList.b(this.a).clear();
    if ((SoftList.f(this.a) != null) && (SoftList.f(this.a).size() > 0))
    {
      SoftList.g(this.a);
      SoftList.b(this.a).addAll(SoftList.f(this.a));
    }
    SoftList.d(this.a).notifyDataSetChanged();
    SoftList.a(this.a, SoftList.c(this.a), SoftList.b(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */