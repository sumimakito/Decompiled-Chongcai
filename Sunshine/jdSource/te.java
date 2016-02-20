import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.vertify.activity.tieba.TMytopicAndComment;
import cn.apppark.vertify.network.request.WebServiceRequest;

public final class te
  extends Handler
{
  private te(TMytopicAndComment paramTMytopicAndComment) {}
  
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
      TMytopicAndComment.k(this.a).onFootRefreshComplete();
      if ((TMytopicAndComment.l(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        TMytopicAndComment.m(this.a).showError(2131230757, true, false, "255");
        TMytopicAndComment.m(this.a).setInterfaceRef(new tf(this));
        return;
      }
      TMytopicAndComment.m(this.a).hidden();
      paramMessage = JsonParserBuy.parseJson2List(str, new tg(this).getType());
      TMytopicAndComment.a(this.a, paramMessage);
      TMytopicAndComment.a(this.a, TMytopicAndComment.k(this.a), paramMessage);
      return;
      TMytopicAndComment.n(this.a).onFootRefreshComplete();
      if ((TMytopicAndComment.o(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
      {
        TMytopicAndComment.m(this.a).showError(2131230757, true, false, "255");
        TMytopicAndComment.m(this.a).setInterfaceRef(new th(this));
        return;
      }
      TMytopicAndComment.m(this.a).hidden();
      paramMessage = JsonParserBuy.parseJson2List(str, new ti(this).getType());
      TMytopicAndComment.b(this.a, paramMessage);
      TMytopicAndComment.a(this.a, TMytopicAndComment.n(this.a), paramMessage);
      return;
    } while ((TMytopicAndComment.f(this.a) != 1) || (TMytopicAndComment.o(this.a) != null));
    TMytopicAndComment.m(this.a).show(2131230756);
    TMytopicAndComment.b(this.a, TMytopicAndComment.d(this.a), 2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/te.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */