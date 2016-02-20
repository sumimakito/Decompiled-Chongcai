package cn.apppark.vertify.network.request;

import android.os.Handler;
import android.os.Looper;

public abstract class NetWorkRequest
  implements Runnable
{
  public static String ERROR = "-1";
  protected Handler handler;
  public NetWorkRequest.OnErrorListener onErrorListener;
  public NetWorkRequest.OnSuccessListener onSuccessListener;
  
  public abstract void doRequest(NetWorkRequest paramNetWorkRequest);
  
  public abstract void requestData(Handler paramHandler);
  
  public void run()
  {
    requestData(new Handler(Looper.getMainLooper()));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/request/NetWorkRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */