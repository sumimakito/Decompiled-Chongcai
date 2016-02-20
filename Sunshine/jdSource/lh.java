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
import cn.apppark.mcd.vo.dyn.DynProductGroupDetailVo;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.free.dyn.SProductBase;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

@SuppressLint({"HandlerLeak"})
public final class lh
  extends Handler
{
  private lh(SProductBase paramSProductBase) {}
  
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
      paramMessage = new li(this).getType();
      SProductBase.a(this.a, JsonParserDyn.parseItem2Vo(str, paramMessage, "sortInfo"));
      SProductBase.a(this.a, (DynProductGroupDetailVo)JsonParserDyn.parseJson2Vo(str, DynProductGroupDetailVo.class, "groupInfo"));
      if ((SProductBase.i(this.a) != null) && (SProductBase.i(this.a).size() > 0))
      {
        SProductBase.a(this.a, ((DynMsgGroupVo)SProductBase.i(this.a).get(0)).getId());
        SProductBase.k(this.a);
        SProductBase.a(this.a, 1);
        SProductBase.a(this.a, SProductBase.b(this.a), 1);
        return;
      }
      this.a.loadFail(2);
      PublicUtil.initToast("暂无分组数据", 1);
      return;
    case 1: 
      SProductBase.a(this.a).onFootRefreshComplete();
      if (SProductBase.l(this.a) != null) {
        SProductBase.l(this.a).dismiss();
      }
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(2);
        return;
      }
      if (SProductBase.b(this.a) == 1) {
        this.a.loadSuccess(2);
      }
      SProductBase.a(this.a, str, false);
      return;
    case 2: 
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        this.a.loadFail(3);
        return;
      }
      this.a.loadSuccess(3);
      SProductBase.a(this.a, str, true);
      return;
    }
    paramMessage = new Rect();
    SProductBase.m(this.a).getLocalVisibleRect(paramMessage);
    if (paramMessage.left <= 10) {
      SProductBase.n(this.a).setVisibility(4);
    }
    while (paramMessage.right >= SProductBase.o(this.a).getWidth() - 10)
    {
      SProductBase.p(this.a).setVisibility(8);
      return;
      SProductBase.n(this.a).setVisibility(0);
    }
    SProductBase.p(this.a).setVisibility(0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */