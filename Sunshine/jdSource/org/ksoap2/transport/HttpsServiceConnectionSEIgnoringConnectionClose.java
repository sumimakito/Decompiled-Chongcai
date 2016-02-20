package org.ksoap2.transport;

import java.io.IOException;

public class HttpsServiceConnectionSEIgnoringConnectionClose
  extends HttpsServiceConnectionSE
{
  public HttpsServiceConnectionSEIgnoringConnectionClose(String paramString1, int paramInt1, String paramString2, int paramInt2)
    throws IOException
  {
    super(paramString1, paramInt1, paramString2, paramInt2);
  }
  
  public void setRequestProperty(String paramString1, String paramString2)
  {
    if ((!"Connection".equalsIgnoreCase(paramString1)) && (!"close".equalsIgnoreCase(paramString2))) {
      super.setRequestProperty(paramString1, paramString2);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */