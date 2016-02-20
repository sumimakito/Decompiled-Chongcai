import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.activity.persion.PersonLbsMsg;
import cn.apppark.vertify.network.request.WebServiceRequest;

public final class pa
  extends Handler
{
  private pa(PersonLbsMsg paramPersonLbsMsg) {}
  
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
    PersonLbsMsg.c(this.a).onFootRefreshComplete();
    if ((PersonLbsMsg.d(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
    {
      PersonLbsMsg.e(this.a).showError(2131230757, true, false, "255");
      PersonLbsMsg.f(this.a);
      return;
    }
    PersonLbsMsg.e(this.a).hidden();
    paramMessage = JsonParserDyn.parseJson2List(str, new pb(this).getType());
    PersonLbsMsg.a(this.a, paramMessage);
    PersonLbsMsg.g(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/pa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */