import android.os.Message;
import cn.apppark.vertify.activity.buy.BuyOrderDetail;
import com.alipay.sdk.app.PayTask;

public final class dq
  implements Runnable
{
  public dq(BuyOrderDetail paramBuyOrderDetail, String paramString, int paramInt) {}
  
  public final void run()
  {
    String str = new PayTask(this.c).pay(this.a);
    Message localMessage = new Message();
    localMessage.what = this.b;
    localMessage.obj = str;
    BuyOrderDetail.b(this.c).sendMessage(localMessage);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/dq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */