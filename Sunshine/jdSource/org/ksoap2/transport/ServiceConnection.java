package org.ksoap2.transport;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

public abstract interface ServiceConnection
{
  public static final int DEFAULT_BUFFER_SIZE = 262144;
  public static final int DEFAULT_TIMEOUT = 20000;
  
  public abstract void connect()
    throws IOException;
  
  public abstract void disconnect()
    throws IOException;
  
  public abstract InputStream getErrorStream();
  
  public abstract String getHost();
  
  public abstract String getPath();
  
  public abstract int getPort();
  
  public abstract int getResponseCode()
    throws IOException;
  
  public abstract List getResponseProperties()
    throws IOException;
  
  public abstract InputStream openInputStream()
    throws IOException;
  
  public abstract OutputStream openOutputStream()
    throws IOException;
  
  public abstract void setFixedLengthStreamingMode(int paramInt);
  
  public abstract void setRequestMethod(String paramString)
    throws IOException;
  
  public abstract void setRequestProperty(String paramString1, String paramString2)
    throws IOException;
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/transport/ServiceConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */