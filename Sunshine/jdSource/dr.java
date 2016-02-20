import android.os.Message;
import cn.apppark.vertify.activity.buy.BuyOrderDetail;
import com.alipay.sdk.app.PayTask;

public final class dr
  implements Runnable
{
  public dr(BuyOrderDetail paramBuyOrderDetail) {}
  
  public final void run()
  {
    boolean bool = new PayTask(this.a).checkAccountIfExist();
    Message localMessage = new Message();
    localMessage.what = 8;
    localMessage.obj = Boolean.valueOf(bool);
    BuyOrderDetail.b(this.a).sendMessage(localMessage);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */