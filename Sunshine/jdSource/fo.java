import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.vertify.activity.buy.BuySelArea;
import cn.apppark.vertify.activity.buy.adapter.BuySelAreaListAdapter;

public final class fo
  extends Handler
{
  public fo(BuySelArea paramBuySelArea) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    if (BuySelArea.a(this.a) != null)
    {
      BuySelArea.a(this.a, new BuySelAreaListAdapter(BuySelArea.d(this.a), BuySelArea.a(this.a)));
      BuySelArea.f(this.a).setAdapter(BuySelArea.e(this.a));
      return;
    }
    HQCHApplication.getInstance().initToast("地区加载失败", 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */