package org.ksoap2.transport;

import java.io.IOException;
import java.net.Proxy;

public class HttpsTransportSE
  extends HttpTransportSE
{
  static final String PROTOCOL = "https";
  private static final String PROTOCOL_FULL = "https://";
  protected final String file;
  protected final String host;
  protected final int port;
  
  public HttpsTransportSE(String paramString1, int paramInt1, String paramString2, int paramInt2)
  {
    super("https://" + paramString1 + ":" + paramInt1 + paramString2, paramInt2);
    this.host = paramString1;
    this.port = paramInt1;
    this.file = paramString2;
  }
  
  public HttpsTransportSE(Proxy paramProxy, String paramString1, int paramInt1, String paramString2, int paramInt2)
  {
    super(paramProxy, "https://" + paramString1 + ":" + paramInt1 + paramString2);
    this.host = paramString1;
    this.port = paramInt1;
    this.file = paramString2;
    this.timeout = paramInt2;
  }
  
  public ServiceConnection getServiceConnection()
    throws IOException
  {
    return new HttpsServiceConnectionSE(this.proxy, this.host, this.port, this.file, this.timeout);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/transport/HttpsTransportSE.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */