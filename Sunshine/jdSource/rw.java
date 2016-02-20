import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import android.widget.RelativeLayout;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.vo.tieba.TCommentVo;
import cn.apppark.mcd.vo.tieba.TReplayVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.activity.tieba.TCommentList;
import cn.apppark.vertify.adapter.TReplayAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class rw
  extends Handler
{
  private rw(TCommentList paramTCommentList) {}
  
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
      do
      {
        do
        {
          return;
          TCommentList.h(this.a).dismiss();
        } while (!TCommentList.a(this.a, str, "删除失败", "删除成功"));
        TCommentList.b(this.a).remove(TCommentList.i(this.a));
        TCommentList.j(this.a).notifyDataSetChanged();
        return;
        TCommentList.k(this.a).onFootRefreshComplete();
        if ((TCommentList.j(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
        {
          TCommentList.l(this.a).showError(2131230757, true, false, "255");
          TCommentList.l(this.a).setInterfaceRef(new rx(this));
          return;
        }
        TCommentList.l(this.a).hidden();
        paramMessage = JsonParserBuy.parseJson2List(str, new ry(this).getType());
        TCommentList.a(this.a, paramMessage);
        TCommentList.m(this.a);
        return;
        TCommentList.n(this.a).dismiss();
      } while (!TCommentList.b(this.a, str, "回复失败", "回复成功"));
      paramMessage = new TReplayVo();
      paramMessage.setContent(TCommentList.o(this.a) + "  " + TCommentList.c(this.a).getText().toString());
      paramMessage.setUserName(TCommentList.p(this.a).getUserNikeName());
      paramMessage.setUserId(TCommentList.q(this.a).getUserId());
      paramMessage.setSubTime("刚刚");
      TCommentList.b(this.a).add(paramMessage);
      TCommentList.j(this.a).notifyDataSetChanged();
      TCommentList.c(this.a).setText("");
      TCommentList.r(this.a).setVisibility(8);
      TCommentList.a(this.a, false);
      return;
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        TCommentList.l(this.a).showError(2131230757, true, false, "255");
        TCommentList.l(this.a).setInterfaceRef(new rz(this));
        return;
      }
      if (!TCommentList.c(this.a, str, null, null)) {
        break;
      }
      TCommentList.a(this.a, (TCommentVo)JsonParserBuy.parseJson2Vo(str, TCommentVo.class));
    } while (TCommentList.s(this.a) == null);
    TCommentList.c(this.a, TCommentList.s(this.a).getHostUserId());
    TCommentList.t(this.a);
    TCommentList.b(this.a, TCommentList.a(this.a), 1);
    return;
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */