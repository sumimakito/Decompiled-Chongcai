import android.annotation.SuppressLint;
import android.app.Dialog;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynMsgGroupVo;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.free.dyn.SMsgBase;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

@SuppressLint({"HandlerLeak"})
public final class kz
  extends Handler
{
  private kz(SMsgBase paramSMsgBase) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
      return;
    case 4: 
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(2);
        return;
      }
      paramMessage = new la(this).getType();
      this.a.a = JsonParserDyn.parseItem2Vo(str, paramMessage, "sortInfo");
      if ((this.a.a != null) && (this.a.a.size() > 0))
      {
        SMsgBase.a(this.a, ((DynMsgGroupVo)this.a.a.get(0)).getId());
        SMsgBase.g(this.a);
        SMsgBase.a(this.a, 1);
        SMsgBase.a(this.a, SMsgBase.b(this.a), 1);
        return;
      }
      this.a.loadFail(2);
      PublicUtil.initToast("分组为空", 0);
      return;
    case 1: 
      SMsgBase.h(this.a).onFootRefreshComplete();
      if (SMsgBase.i(this.a) != null) {
        SMsgBase.i(this.a).dismiss();
      }
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(2);
        return;
      }
      if (SMsgBase.b(this.a) == 1) {
        this.a.loadSuccess(2);
      }
      SMsgBase.b(this.a, str);
      return;
    case 2: 
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(3);
        return;
      }
      this.a.loadSuccess(3);
      SMsgBase.b(this.a, str);
      return;
    }
    paramMessage = new Rect();
    SMsgBase.j(this.a).getLocalVisibleRect(paramMessage);
    if (paramMessage.left <= 10) {
      SMsgBase.k(this.a).setVisibility(4);
    }
    while (paramMessage.right >= SMsgBase.l(this.a).getWidth() - 10)
    {
      SMsgBase.m(this.a).setVisibility(8);
      return;
      SMsgBase.k(this.a).setVisibility(0);
    }
    SMsgBase.m(this.a).setVisibility(0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */