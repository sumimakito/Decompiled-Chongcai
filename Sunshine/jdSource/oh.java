import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.activity.persion.PersionCollection;
import cn.apppark.vertify.network.request.WebServiceRequest;

public final class oh
  extends Handler
{
  private oh(PersionCollection paramPersionCollection) {}
  
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
      PersionCollection.i(this.a).onFootRefreshComplete();
      if ((PersionCollection.j(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        PersionCollection.k(this.a).showError(2131230757, true, false, "255");
        PersionCollection.k(this.a).setInterfaceRef(new oi(this));
        return;
      }
      PersionCollection.k(this.a).hidden();
      paramMessage = JsonParserBuy.parseJson2List(str, new oj(this).getType());
      PersionCollection.a(this.a, paramMessage);
      PersionCollection.a(this.a, PersionCollection.i(this.a), paramMessage);
      return;
      PersionCollection.l(this.a).onFootRefreshComplete();
      if ((PersionCollection.m(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        PersionCollection.k(this.a).showError(2131230757, true, false, "255");
        PersionCollection.k(this.a).setInterfaceRef(new ok(this));
        return;
      }
      PersionCollection.k(this.a).hidden();
      paramMessage = JsonParserDyn.parseJson2List(str, new ol(this).getType());
      PersionCollection.b(this.a, paramMessage);
      PersionCollection.a(this.a, PersionCollection.l(this.a), paramMessage);
      return;
      PersionCollection.n(this.a).onFootRefreshComplete();
      if ((PersionCollection.o(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        PersionCollection.k(this.a).showError(2131230757, true, false, "255");
        PersionCollection.k(this.a).setInterfaceRef(new om(this));
        return;
      }
      PersionCollection.k(this.a).hidden();
      paramMessage = JsonParserDyn.parseJson2List(str, new on(this).getType());
      PersionCollection.c(this.a, paramMessage);
      PersionCollection.a(this.a, PersionCollection.n(this.a), paramMessage);
      return;
    } while ((PersionCollection.b(this.a) != 1) || (PersionCollection.m(this.a) != null));
    PersionCollection.k(this.a).show(2131230756);
    PersionCollection.a(this.a, PersionCollection.c(this.a), 2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/oh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */