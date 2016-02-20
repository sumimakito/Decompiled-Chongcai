package org.ksoap2.transport;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Proxy;
import java.util.List;
import java.util.zip.GZIPInputStream;
import org.ksoap2.HeaderProperty;
import org.ksoap2.SoapEnvelope;
import org.xmlpull.v1.XmlPullParserException;

public class HttpTransportSE
  extends Transport
{
  public HttpTransportSE(String paramString)
  {
    super(null, paramString);
  }
  
  public HttpTransportSE(String paramString, int paramInt)
  {
    super(paramString, paramInt);
  }
  
  public HttpTransportSE(String paramString, int paramInt1, int paramInt2)
  {
    super(paramString, paramInt1);
  }
  
  public HttpTransportSE(Proxy paramProxy, String paramString)
  {
    super(paramProxy, paramString);
  }
  
  public HttpTransportSE(Proxy paramProxy, String paramString, int paramInt)
  {
    super(paramProxy, paramString, paramInt);
  }
  
  public HttpTransportSE(Proxy paramProxy, String paramString, int paramInt1, int paramInt2)
  {
    super(paramProxy, paramString, paramInt1);
  }
  
  private InputStream getUnZippedInputStream(InputStream paramInputStream)
    throws IOException
  {
    try
    {
      GZIPInputStream localGZIPInputStream = (GZIPInputStream)paramInputStream;
      return localGZIPInputStream;
    }
    catch (ClassCastException localClassCastException) {}
    return new GZIPInputStream(paramInputStream);
  }
  
  private InputStream readDebug(InputStream paramInputStream, int paramInt, File paramFile)
    throws IOException
  {
    byte[] arrayOfByte;
    if (paramFile != null)
    {
      paramFile = new FileOutputStream(paramFile);
      arrayOfByte = new byte['Ā'];
    }
    for (;;)
    {
      paramInt = paramInputStream.read(arrayOfByte, 0, 256);
      if (paramInt == -1)
      {
        paramFile.flush();
        if ((paramFile instanceof ByteArrayOutputStream)) {
          arrayOfByte = ((ByteArrayOutputStream)paramFile).toByteArray();
        }
        this.responseDump = new String(arrayOfByte);
        paramInputStream.close();
        return new ByteArrayInputStream(arrayOfByte);
        if (paramInt > 0) {}
        for (;;)
        {
          paramFile = new ByteArrayOutputStream(paramInt);
          break;
          paramInt = 262144;
        }
      }
      paramFile.write(arrayOfByte, 0, paramInt);
    }
  }
  
  public List call(String paramString, SoapEnvelope paramSoapEnvelope, List paramList)
    throws IOException, XmlPullParserException
  {
    return call(paramString, paramSoapEnvelope, paramList, null);
  }
  
  public List call(String paramString, SoapEnvelope paramSoapEnvelope, List paramList, File paramFile)
    throws IOException, XmlPullParserException
  {
    Object localObject = paramString;
    if (paramString == null) {
      localObject = "\"\"";
    }
    byte[] arrayOfByte = createRequestData(paramSoapEnvelope, "UTF-8");
    ServiceConnection localServiceConnection;
    if (this.debug)
    {
      paramString = new String(arrayOfByte);
      this.requestDump = paramString;
      this.responseDump = null;
      localServiceConnection = getServiceConnection();
      localServiceConnection.setRequestProperty("User-Agent", "ksoap2-android/2.6.0+");
      if (paramSoapEnvelope.version != 120) {
        localServiceConnection.setRequestProperty("SOAPAction", (String)localObject);
      }
      if (paramSoapEnvelope.version != 120) {
        break label225;
      }
      localServiceConnection.setRequestProperty("Content-Type", "application/soap+xml;charset=utf-8");
    }
    int i;
    for (;;)
    {
      localServiceConnection.setRequestProperty("Connection", "close");
      localServiceConnection.setRequestProperty("Accept-Encoding", "gzip");
      localServiceConnection.setRequestProperty("Content-Length", "" + arrayOfByte.length);
      localServiceConnection.setFixedLengthStreamingMode(arrayOfByte.length);
      if (paramList == null) {
        break label239;
      }
      i = 0;
      while (i < paramList.size())
      {
        paramString = (HeaderProperty)paramList.get(i);
        localServiceConnection.setRequestProperty(paramString.getKey(), paramString.getValue());
        i += 1;
      }
      paramString = null;
      break;
      label225:
      localServiceConnection.setRequestProperty("Content-Type", "text/xml;charset=utf-8");
    }
    label239:
    localServiceConnection.setRequestMethod("POST");
    paramString = localServiceConnection.openOutputStream();
    paramString.write(arrayOfByte, 0, arrayOfByte.length);
    paramString.flush();
    paramString.close();
    int j = 8192;
    int i3 = 0;
    int i2 = 0;
    int k = j;
    int i1 = i2;
    try
    {
      i = localServiceConnection.getResponseCode();
      if (i == 200) {
        break label403;
      }
      k = j;
      i1 = i2;
      throw new IOException("HTTP request failed, HTTP status: " + i);
    }
    catch (IOException paramSoapEnvelope)
    {
      if (i1 == 0) {
        break label702;
      }
    }
    paramString = getUnZippedInputStream(new BufferedInputStream(localServiceConnection.getErrorStream(), k));
    if ((this.debug) && (paramString != null)) {
      readDebug(paramString, k, paramFile);
    }
    localServiceConnection.disconnect();
    throw paramSoapEnvelope;
    label403:
    k = j;
    i1 = i2;
    localObject = localServiceConnection.getResponseProperties();
    int n = 0;
    for (;;)
    {
      k = j;
      i1 = i2;
      i = j;
      int m = i3;
      if (n < ((List)localObject).size())
      {
        k = j;
        i1 = i2;
        paramString = (HeaderProperty)((List)localObject).get(n);
        k = j;
        i1 = i2;
        if (paramString.getKey() == null) {
          break label722;
        }
        k = j;
        i1 = i2;
        i = j;
        if (paramString.getKey().equalsIgnoreCase("content-length"))
        {
          k = j;
          i1 = i2;
          paramList = paramString.getValue();
          i = j;
          if (paramList != null)
          {
            k = j;
            i1 = i2;
          }
        }
      }
      try
      {
        i = Integer.parseInt(paramString.getValue());
        k = i;
        i1 = i2;
        j = i;
        if (!paramString.getKey().equalsIgnoreCase("Content-Encoding")) {
          break label722;
        }
        k = i;
        i1 = i2;
        j = i;
        if (!paramString.getValue().equalsIgnoreCase("gzip")) {
          break label722;
        }
        m = 1;
        if (m != 0)
        {
          k = i;
          i1 = m;
          paramString = getUnZippedInputStream(new BufferedInputStream(localServiceConnection.openInputStream(), i));
          paramList = paramString;
          if (this.debug) {
            paramList = readDebug(paramString, i, paramFile);
          }
          parseResponse(paramSoapEnvelope, paramList);
          return (List)localObject;
        }
      }
      catch (NumberFormatException paramList)
      {
        for (;;)
        {
          i = 8192;
          continue;
          k = i;
          i1 = m;
          paramString = new BufferedInputStream(localServiceConnection.openInputStream(), i);
        }
      }
      label702:
      paramString = new BufferedInputStream(localServiceConnection.getErrorStream(), k);
      break;
      label722:
      n += 1;
    }
  }
  
  public void call(String paramString, SoapEnvelope paramSoapEnvelope)
    throws IOException, XmlPullParserException
  {
    call(paramString, paramSoapEnvelope, null);
  }
  
  public ServiceConnection getServiceConnection()
    throws IOException
  {
    return new ServiceConnectionSE(this.proxy, this.url, this.timeout);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/transport/HttpTransportSE.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */