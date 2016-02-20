import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act;
import cn.apppark.vertify.network.request.WebServiceRequest;

public final class jx
  extends Handler
{
  private jx(DynSearch5007Act paramDynSearch5007Act) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    case 2: 
    default: 
      return;
    }
    DynSearch5007Act.g(this.a).onFootRefreshComplete();
    if ((DynSearch5007Act.h(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
    {
      DynSearch5007Act.i(this.a).show(2131230757, true, false, "255");
      DynSearch5007Act.i(this.a).setInterfaceRef(new jy(this));
      return;
    }
    DynSearch5007Act.i(this.a).hidden();
    paramMessage = new jz(this).getType();
    DynSearch5007Act.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage, "productItems", "productCount"));
    DynSearch5007Act.b(this.a, JsonParserDyn.parseJson2List(str, paramMessage, "infoItems", "infoCount"));
    DynSearch5007Act.j(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/jx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */