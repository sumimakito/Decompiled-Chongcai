package cn.apppark.vertify.network.request;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.HQCHApplication;
import java.io.File;
import java.io.PrintStream;
import java.util.Map;
import wt;
import wu;

public class HttpUploadFileRequestPool
  extends NetWorkRequest
{
  private String actionUrl;
  private Map<String, File> files;
  private int msgWhat;
  private Handler myHandler;
  private Map<String, String> params;
  
  public HttpUploadFileRequestPool(int paramInt, String paramString, Handler paramHandler, Map<String, String> paramMap, Map<String, File> paramMap1)
  {
    this.myHandler = paramHandler;
    this.msgWhat = paramInt;
    this.actionUrl = paramString;
    this.params = paramMap;
    this.files = paramMap1;
  }
  
  public HttpUploadFileRequestPool(NetWorkRequest.OnSuccessListener paramOnSuccessListener, NetWorkRequest.OnErrorListener paramOnErrorListener, int paramInt, String paramString, Handler paramHandler, Map<String, String> paramMap, Map<String, File> paramMap1)
  {
    this.onErrorListener = paramOnErrorListener;
    this.onSuccessListener = paramOnSuccessListener;
    this.myHandler = paramHandler;
    this.msgWhat = paramInt;
    this.actionUrl = paramString;
    this.params = paramMap;
    this.files = paramMap1;
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
      localObject = MyHttpRequest.doPostFile(this.actionUrl, this.params, this.files);
      if (ERROR.equals(localObject)) {
        paramHandler.post(new wt(this, (String)localObject));
      }
    }
    do
    {
      do
      {
        return;
        paramHandler.post(new wu(this, (String)localObject));
        return;
      } while (this.myHandler == null);
      paramHandler = MyHttpRequest.doPostFile(this.actionUrl, this.params, this.files);
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/request/HttpUploadFileRequestPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */