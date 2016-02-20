import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.activity.tieba.TMsg;
import cn.apppark.vertify.network.request.WebServiceRequest;

public final class so
  extends Handler
{
  private so(TMsg paramTMsg) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    TMsg.d(this.a).onFootRefreshComplete();
    if ((TMsg.e(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
    {
      TMsg.f(this.a).showError(2131230757, true, false, "255");
      TMsg.f(this.a).setInterfaceRef(new sp(this));
      return;
    }
    TMsg.f(this.a).hidden();
    paramMessage = JsonParserBuy.parseJson2List(str, new sq(this).getType());
    TMsg.a(this.a, paramMessage);
    TMsg.g(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/so.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */