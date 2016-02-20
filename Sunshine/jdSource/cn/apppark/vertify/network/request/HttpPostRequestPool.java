package cn.apppark.vertify.network.request;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.HQCHApplication;
import java.io.PrintStream;
import wr;
import ws;

public class HttpPostRequestPool
  extends NetWorkRequest
{
  private String actionUrl;
  private String jsonParams;
  private int msgWhat;
  private Handler myHandler;
  
  public HttpPostRequestPool(int paramInt, String paramString1, Handler paramHandler, String paramString2)
  {
    this.myHandler = paramHandler;
    this.msgWhat = paramInt;
    this.actionUrl = paramString1;
    this.jsonParams = paramString2;
  }
  
  public HttpPostRequestPool(NetWorkRequest.OnSuccessListener paramOnSuccessListener, NetWorkRequest.OnErrorListener paramOnErrorListener, int paramInt, String paramString1, Handler paramHandler, String paramString2)
  {
    this.onErrorListener = paramOnErrorListener;
    this.onSuccessListener = paramOnSuccessListener;
    this.myHandler = paramHandler;
    this.msgWhat = paramInt;
    this.actionUrl = paramString1;
    this.jsonParams = paramString2;
  }
  
  public void doRequest(NetWorkRequest paramNetWorkRequest)
  {
    NetWorkPool.getNetWorkPool().addRequest(paramNetWorkRequest);
  }
  
  public void requestData(Handler paramHandler)
  {
    Object localObject;
    if ((this.onErrorListener != null) && (this.onSuccessListener != null))
    {
      this.myHandler = paramHandler;
      localObject = MyHttpRequest.doPost(this.actionUrl, this.jsonParams);
      if (ERROR.equals(localObject)) {
        paramHandler.post(new wr(this, (String)localObject));
      }
    }
    do
    {
      do
      {
        return;
        paramHandler.post(new ws(this, (String)localObject));
        return;
      } while (this.myHandler == null);
      paramHandler = MyHttpRequest.doPost(this.actionUrl, this.jsonParams);
      localObject = this.myHandler.obtainMessage();
      ((Message)localObject).what = this.msgWhat;
      Bundle localBundle = new Bundle();
      localBundle.putString("soresult", paramHandler);
      ((Message)localObject).setData(localBundle);
      this.myHandler.sendMessage((Message)localObject);
    } while (!HQCHApplication.DEBUG);
    System.out.println("result..." + paramHandler);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/request/HttpPostRequestPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */