import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.TextView;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyProductVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import cn.apppark.vertify.network.request.WebServiceRequest;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"HandlerLeak"})
public final class fj
  extends Handler
{
  public fj(BuyProductDetail paramBuyProductDetail) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)))
              {
                BuyProductDetail.b(this.a).showError(2131230757, true, false, "255");
                BuyProductDetail.b(this.a).setInterfaceRef(new fk(this));
                return;
              }
              BuyProductDetail.b(this.a).hidden();
              BuyProductDetail.a(this.a, (BuyProductVo)JsonParserBuy.parseJson2Vo(str, BuyProductVo.class));
            } while ((!BuyProductDetail.a(this.a, str, "数据获取失败", null)) || (BuyProductDetail.c(this.a) == null));
            BuyProductDetail.d(this.a);
            return;
            BuyProductDetail.a(this.a, true);
            BuyProductDetail.e(this.a).dismiss();
          } while (!BuyProductDetail.b(this.a, str, "加入购物车失败", "加入购物车成功"));
          BuyProductDetail.c(this.a).setProductSum(BuyProductDetail.c(this.a).getProductSum() - 1);
          BuyProductDetail.f(this.a);
          int i = FunctionPublic.str2int(BuyProductDetail.g(this.a).getText().toString());
          BuyProductDetail.g(this.a).setText(i + 1);
          BuyProductDetail.g(this.a).setVisibility(0);
          return;
          BuyProductDetail.a(this.a, true);
          BuyProductDetail.e(this.a).dismiss();
        } while (!BuyProductDetail.c(this.a, str, "收藏失败", "收藏成功"));
        BuyProductDetail.a(this.a, BuyProductDetail.a());
        BuyProductDetail.h(this.a).setBackgroundResource(2130837649);
        return;
        BuyProductDetail.a(this.a, true);
        BuyProductDetail.e(this.a).dismiss();
      } while (!BuyProductDetail.d(this.a, str, "取消收藏失败", "取消收藏成功"));
      BuyProductDetail.a(this.a, BuyProductDetail.b());
      BuyProductDetail.h(this.a).setBackgroundResource(2130837648);
      return;
    }
    try
    {
      paramMessage = new JSONObject(str).getString("totalNumber");
      if (("0".equals(paramMessage)) || (paramMessage == null))
      {
        BuyProductDetail.g(this.a).setVisibility(8);
        BuyProductDetail.g(this.a).setText("0");
        return;
      }
    }
    catch (JSONException paramMessage)
    {
      paramMessage.printStackTrace();
      return;
    }
    BuyProductDetail.g(this.a).setVisibility(0);
    BuyProductDetail.g(this.a).setText(paramMessage);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */