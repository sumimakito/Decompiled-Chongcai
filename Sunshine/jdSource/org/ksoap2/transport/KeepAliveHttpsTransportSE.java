package org.ksoap2.transport;

import java.io.IOException;

public class KeepAliveHttpsTransportSE
  extends HttpsTransportSE
{
  public KeepAliveHttpsTransportSE(String paramString1, int paramInt1, String paramString2, int paramInt2)
  {
    super(paramString1, paramInt1, paramString2, paramInt2);
  }
  
  public ServiceConnection getServiceConnection()
    throws IOException
  {
    HttpsServiceConnectionSEIgnoringConnectionClose localHttpsServiceConnectionSEIgnoringConnectionClose = new HttpsServiceConnectionSEIgnoringConnectionClose(this.host, this.port, this.file, this.timeout);
    localHttpsServiceConnectionSEIgnoringConnectionClose.setRequestProperty("Connection", "keep-alive");
    return localHttpsServiceConnectionSEIgnoringConnectionClose;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/transport/KeepAliveHttpsTransportSE.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */