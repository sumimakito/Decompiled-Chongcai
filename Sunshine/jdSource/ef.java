import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.mcd.vo.buy.BuyProCommentDetailVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyProCommentDetail;
import cn.apppark.vertify.network.request.WebServiceRequest;

public final class ef
  extends Handler
{
  private ef(BuyProCommentDetail paramBuyProCommentDetail) {}
  
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
      if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
      {
        BuyProCommentDetail.a(this.a).showError(2131230757, true, false, "255");
        BuyProCommentDetail.a(this.a).setInterfaceRef(new eg(this));
        return;
      }
      BuyProCommentDetail.a(this.a).hidden();
      BuyProCommentDetail.a(this.a, (BuyProCommentDetailVo)JsonParserBuy.parseJson2Vo(str, BuyProCommentDetailVo.class));
    } while (BuyProCommentDetail.b(this.a) == null);
    BuyProCommentDetail.c(this.a);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */