package org.ksoap2.transport;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.util.List;
import org.ksoap2.SoapEnvelope;
import org.kxml2.io.KXmlParser;
import org.kxml2.io.KXmlSerializer;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public abstract class Transport
{
  protected static final String CONTENT_TYPE_SOAP_XML_CHARSET_UTF_8 = "application/soap+xml;charset=utf-8";
  protected static final String CONTENT_TYPE_XML_CHARSET_UTF_8 = "text/xml;charset=utf-8";
  protected static final String USER_AGENT = "ksoap2-android/2.6.0+";
  private int bufferLength = 262144;
  public boolean debug;
  protected Proxy proxy;
  public String requestDump;
  public String responseDump;
  protected int timeout = 20000;
  protected String url;
  private String xmlVersionTag = "";
  
  public Transport() {}
  
  public Transport(String paramString)
  {
    this(null, paramString);
  }
  
  public Transport(String paramString, int paramInt)
  {
    this.url = paramString;
    this.timeout = paramInt;
  }
  
  public Transport(String paramString, int paramInt1, int paramInt2)
  {
    this.url = paramString;
    this.timeout = paramInt1;
    this.bufferLength = paramInt2;
  }
  
  public Transport(Proxy paramProxy, String paramString)
  {
    this.proxy = paramProxy;
    this.url = paramString;
  }
  
  public Transport(Proxy paramProxy, String paramString, int paramInt)
  {
    this.proxy = paramProxy;
    this.url = paramString;
    this.timeout = paramInt;
  }
  
  public Transport(Proxy paramProxy, String paramString, int paramInt1, int paramInt2)
  {
    this.proxy = paramProxy;
    this.url = paramString;
    this.timeout = paramInt1;
    this.bufferLength = paramInt2;
  }
  
  public abstract List call(String paramString, SoapEnvelope paramSoapEnvelope, List paramList)
    throws IOException, XmlPullParserException;
  
  public abstract List call(String paramString, SoapEnvelope paramSoapEnvelope, List paramList, File paramFile)
    throws IOException, XmlPullParserException;
  
  public void call(String paramString, SoapEnvelope paramSoapEnvelope)
    throws IOException, XmlPullParserException
  {
    call(paramString, paramSoapEnvelope, null);
  }
  
  protected byte[] createRequestData(SoapEnvelope paramSoapEnvelope)
    throws IOException
  {
    return createRequestData(paramSoapEnvelope, null);
  }
  
  protected byte[] createRequestData(SoapEnvelope paramSoapEnvelope, String paramString)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(this.bufferLength);
    localByteArrayOutputStream.write(this.xmlVersionTag.getBytes());
    KXmlSerializer localKXmlSerializer = new KXmlSerializer();
    localKXmlSerializer.setOutput(localByteArrayOutputStream, paramString);
    paramSoapEnvelope.write(localKXmlSerializer);
    localKXmlSerializer.flush();
    localByteArrayOutputStream.write(13);
    localByteArrayOutputStream.write(10);
    localByteArrayOutputStream.flush();
    return localByteArrayOutputStream.toByteArray();
  }
  
  public String getHost()
    throws MalformedURLException
  {
    return new URL(this.url).getHost();
  }
  
  public String getPath()
    throws MalformedURLException
  {
    return new URL(this.url).getPath();
  }
  
  public int getPort()
    throws MalformedURLException
  {
    return new URL(this.url).getPort();
  }
  
  public abstract ServiceConnection getServiceConnection()
    throws IOException;
  
  protected void parseResponse(SoapEnvelope paramSoapEnvelope, InputStream paramInputStream)
    throws XmlPullParserException, IOException
  {
    KXmlParser localKXmlParser = new KXmlParser();
    localKXmlParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
    localKXmlParser.setInput(paramInputStream, null);
    paramSoapEnvelope.parse(localKXmlParser);
    paramInputStream.close();
  }
  
  public void reset() {}
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
  
  public void setXmlVersionTag(String paramString)
  {
    this.xmlVersionTag = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/transport/Transport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */