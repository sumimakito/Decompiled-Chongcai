package cn.apppark.vertify.network.request;

import java.net.Proxy;
import org.ksoap2.transport.HttpTransportSE;
import org.ksoap2.transport.ServiceConnection;
import org.ksoap2.transport.ServiceConnectionSE;

public class MyTransportSE
  extends HttpTransportSE
{
  private Proxy p;
  private int timeout = 0;
  
  public MyTransportSE(String paramString)
  {
    super(paramString);
  }
  
  public MyTransportSE(String paramString, int paramInt)
  {
    super(paramString);
    this.timeout = paramInt;
  }
  
  public MyTransportSE(Proxy paramProxy, String paramString)
  {
    super(paramString);
    this.p = paramProxy;
  }
  
  public ServiceConnection getServiceConnection()
  {
    if (this.p == null) {
      return new ServiceConnectionSE(this.url, this.timeout);
    }
    return new ServiceConnectionSE(this.p, this.url);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/request/MyTransportSE.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */