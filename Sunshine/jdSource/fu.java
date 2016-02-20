import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.vertify.activity.buy.BuySelProvience;
import cn.apppark.vertify.activity.buy.adapter.BuySelAreaListAdapter;

public final class fu
  extends Handler
{
  public fu(BuySelProvience paramBuySelProvience) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    if (BuySelProvience.a(this.a) != null)
    {
      BuySelProvience.a(this.a, new BuySelAreaListAdapter(BuySelProvience.b(this.a), BuySelProvience.a(this.a)));
      BuySelProvience.e(this.a).setAdapter(BuySelProvience.d(this.a));
      return;
    }
    HQCHApplication.getInstance().initToast("地区加载失败", 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */