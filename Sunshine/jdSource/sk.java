import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.RelativeLayout;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.activity.tieba.TMain;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class sk
  extends Handler
{
  private sk(TMain paramTMain) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    case 2: 
    default: 
    case 1: 
      do
      {
        return;
        TMain.h(this.a).onFootRefreshComplete();
        TMain.h(this.a).onHeadRefreshComplete();
        TMain.i(this.a).clearAnimation();
        if ((!WebServiceRequest.NO_DATA.equals(str)) && (!WebServiceRequest.WEB_ERROR.equals(str))) {
          break;
        }
      } while (TMain.c(this.a) != 1);
      TMain.j(this.a);
      return;
      TMain.k(this.a).hidden();
      TMain.l(this.a).setVisibility(0);
      paramMessage = new sl(this).getType();
      ArrayList localArrayList = JsonParserBuy.parseJson2List(str, paramMessage);
      TMain.a(this.a, JsonParserBuy.parseToListByNode(str, paramMessage, "itemTop"));
      TMain.b(this.a, TMain.m(this.a));
      TMain.c(this.a, localArrayList);
      TMain.n(this.a);
      return;
    case 3: 
      TMain.a(this.a, true);
      TMain.a(this.a, str);
      return;
    }
    TMain.b(this.a, str);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */