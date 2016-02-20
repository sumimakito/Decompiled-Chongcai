package cn.apppark.vertify.network.request;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import wv;
import ww;

public class WebServicePool
  extends NetWorkRequest
{
  private String methodName;
  private int msgWhat;
  private Handler myHandler;
  private String nameSpace;
  private String paramStr;
  private String position;
  private String subUrl;
  private String valueStr;
  
  public WebServicePool(int paramInt, Handler paramHandler, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.methodName = paramString5;
    this.paramStr = paramString1;
    this.valueStr = paramString2;
    this.myHandler = paramHandler;
    this.msgWhat = paramInt;
    this.nameSpace = paramString3;
    this.subUrl = paramString4;
    this.paramStr = paramString1;
    this.valueStr = paramString2;
  }
  
  public WebServicePool(NetWorkRequest.OnSuccessListener paramOnSuccessListener, NetWorkRequest.OnErrorListener paramOnErrorListener, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.onErrorListener = paramOnErrorListener;
    this.onSuccessListener = paramOnSuccessListener;
    this.methodName = paramString5;
    this.paramStr = paramString1;
    this.valueStr = paramString2;
    this.nameSpace = paramString3;
    this.subUrl = paramString4;
    this.paramStr = paramString1;
    this.valueStr = paramString2;
  }
  
  public void doRequest(NetWorkRequest paramNetWorkRequest)
  {
    NetWorkPool.getNetWorkPool().addRequest(paramNetWorkRequest);
  }
  
  public void requestData(Handler paramHandler)
  {
    if ((this.onErrorListener != null) && (this.onSuccessListener != null))
    {
      this.myHandler = paramHandler;
      localObject = WebServiceRequest.Ksoap2ForString(this.methodName, this.paramStr, this.valueStr, this.nameSpace, this.subUrl, true);
      if (this.myHandler != null) {}
    }
    while (this.myHandler == null)
    {
      return;
      if (ERROR.equals(localObject))
      {
        paramHandler.post(new wv(this, (String)localObject));
        return;
      }
      paramHandler.post(new ww(this, (String)localObject));
      return;
    }
    paramHandler = WebServiceRequest.Ksoap2ForString(this.methodName, this.paramStr, this.valueStr, this.nameSpace, this.subUrl, true);
    Object localObject = this.myHandler.obtainMessage();
    ((Message)localObject).what = this.msgWhat;
    Bundle localBundle = new Bundle();
    localBundle.putString("soresult", paramHandler);
    if (this.position != null) {
      localBundle.putString("position", this.position);
    }
    ((Message)localObject).setData(localBundle);
    this.myHandler.sendMessage((Message)localObject);
  }
  
  public void setPosition(String paramString)
  {
    this.position = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/request/WebServicePool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */