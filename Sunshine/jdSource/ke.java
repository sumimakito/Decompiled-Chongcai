import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007Act2;
import cn.apppark.vertify.network.request.WebServiceRequest;

public final class ke
  extends Handler
{
  private ke(DynSearch5007Act2 paramDynSearch5007Act2) {}
  
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
    DynSearch5007Act2.f(this.a).onFootRefreshComplete();
    if ((DynSearch5007Act2.g(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
    {
      DynSearch5007Act2.h(this.a).show(2131230757, true, false, "255");
      DynSearch5007Act2.h(this.a).setInterfaceRef(new kf(this));
      return;
    }
    DynSearch5007Act2.h(this.a).hidden();
    DynSearch5007Act2.a(this.a, str);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ke.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */