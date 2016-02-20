import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.vertify.activity.buy.BuySelCity;
import cn.apppark.vertify.activity.buy.adapter.BuySelAreaListAdapter;
import java.util.ArrayList;

public final class fr
  extends Handler
{
  public fr(BuySelCity paramBuySelCity) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    if ((BuySelCity.a(this.a) != null) && (BuySelCity.a(this.a).size() == 0))
    {
      paramMessage = new Intent();
      paramMessage.putExtra("name", BuySelCity.c(this.a));
      paramMessage.putExtra("id", BuySelCity.e(this.a));
      this.a.setResult(1, paramMessage);
      this.a.finish();
      return;
    }
    if (BuySelCity.a(this.a) != null)
    {
      BuySelCity.a(this.a, new BuySelAreaListAdapter(BuySelCity.b(this.a), BuySelCity.a(this.a)));
      BuySelCity.g(this.a).setAdapter(BuySelCity.f(this.a));
      return;
    }
    HQCHApplication.getInstance().initToast("地区加载失败", 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */