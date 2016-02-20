import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.tieba.TMyCollection;
import cn.apppark.vertify.adapter.TCollectionAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class su
  extends Handler
{
  private su(TMyCollection paramTMyCollection) {}
  
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
      if ((TMyCollection.d(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        TMyCollection.e(this.a).showError(2131230757, true, false, "255");
        TMyCollection.e(this.a).setInterfaceRef(new sv(this));
        return;
      }
      TMyCollection.e(this.a).hidden();
      paramMessage = JsonParserBuy.parseJson2List(str, new sw(this).getType());
      TMyCollection.a(this.a, paramMessage);
      TMyCollection.f(this.a);
      return;
      TMyCollection.g(this.a).dismiss();
    } while (!TMyCollection.a(this.a, str, "删除失败", "删除成功"));
    TMyCollection.c(this.a).remove(TMyCollection.h(this.a));
    TMyCollection.d(this.a).notifyDataSetChanged();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/su.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */