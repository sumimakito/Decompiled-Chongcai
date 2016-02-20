package org.ksoap2;

import java.io.IOException;
import org.kxml2.kdom.Element;
import org.kxml2.kdom.Node;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class SoapEnvelope
{
  public static final String ENC = "http://schemas.xmlsoap.org/soap/encoding/";
  public static final String ENC2003 = "http://www.w3.org/2003/05/soap-encoding";
  public static final String ENV = "http://schemas.xmlsoap.org/soap/envelope/";
  public static final String ENV2003 = "http://www.w3.org/2003/05/soap-envelope";
  public static final int VER10 = 100;
  public static final int VER11 = 110;
  public static final int VER12 = 120;
  public static final String XSD = "http://www.w3.org/2001/XMLSchema";
  public static final String XSD1999 = "http://www.w3.org/1999/XMLSchema";
  public static final String XSI = "http://www.w3.org/2001/XMLSchema-instance";
  public static final String XSI1999 = "http://www.w3.org/1999/XMLSchema-instance";
  public Object bodyIn;
  public Object bodyOut;
  public String enc;
  public String encodingStyle;
  public String env;
  public Element[] headerIn;
  public Element[] headerOut;
  public int version;
  public String xsd;
  public String xsi;
  
  public SoapEnvelope(int paramInt)
  {
    this.version = paramInt;
    if (paramInt == 100) {
      this.xsi = "http://www.w3.org/1999/XMLSchema-instance";
    }
    for (this.xsd = "http://www.w3.org/1999/XMLSchema"; paramInt < 120; this.xsd = "http://www.w3.org/2001/XMLSchema")
    {
      this.enc = "http://schemas.xmlsoap.org/soap/encoding/";
      this.env = "http://schemas.xmlsoap.org/soap/envelope/";
      return;
      this.xsi = "http://www.w3.org/2001/XMLSchema-instance";
    }
    this.enc = "http://www.w3.org/2003/05/soap-encoding";
    this.env = "http://www.w3.org/2003/05/soap-envelope";
  }
  
  public static boolean stringToBoolean(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = paramString.trim().toLowerCase();
    } while ((!paramString.equals("1")) && (!paramString.equals("true")));
    return true;
  }
  
  public void parse(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    paramXmlPullParser.nextTag();
    paramXmlPullParser.require(2, this.env, "Envelope");
    this.encodingStyle = paramXmlPullParser.getAttributeValue(this.env, "encodingStyle");
    paramXmlPullParser.nextTag();
    if ((paramXmlPullParser.getEventType() == 2) && (paramXmlPullParser.getNamespace().equals(this.env)) && (paramXmlPullParser.getName().equals("Header")))
    {
      parseHeader(paramXmlPullParser);
      paramXmlPullParser.require(3, this.env, "Header");
      paramXmlPullParser.nextTag();
    }
    paramXmlPullParser.require(2, this.env, "Body");
    this.encodingStyle = paramXmlPullParser.getAttributeValue(this.env, "encodingStyle");
    parseBody(paramXmlPullParser);
    paramXmlPullParser.require(3, this.env, "Body");
    paramXmlPullParser.nextTag();
    paramXmlPullParser.require(3, this.env, "Envelope");
  }
  
  public void parseBody(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    paramXmlPullParser.nextTag();
    if ((paramXmlPullParser.getEventType() == 2) && (paramXmlPullParser.getNamespace().equals(this.env)) && (paramXmlPullParser.getName().equals("Fault")))
    {
      if (this.version < 120) {}
      for (localObject = new SoapFault(this.version);; localObject = new SoapFault12(this.version))
      {
        ((SoapFault)localObject).parse(paramXmlPullParser);
        this.bodyIn = localObject;
        return;
      }
    }
    if ((this.bodyIn instanceof Node)) {}
    for (Object localObject = (Node)this.bodyIn;; localObject = new Node())
    {
      ((Node)localObject).parse(paramXmlPullParser);
      this.bodyIn = localObject;
      return;
    }
  }
  
  public void parseHeader(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    paramXmlPullParser.nextTag();
    Node localNode = new Node();
    localNode.parse(paramXmlPullParser);
    int j = 0;
    int i = 0;
    int k;
    while (i < localNode.getChildCount())
    {
      k = j;
      if (localNode.getElement(i) != null) {
        k = j + 1;
      }
      i += 1;
      j = k;
    }
    this.headerIn = new Element[j];
    j = 0;
    i = 0;
    while (i < localNode.getChildCount())
    {
      paramXmlPullParser = localNode.getElement(i);
      k = j;
      if (paramXmlPullParser != null)
      {
        this.headerIn[j] = paramXmlPullParser;
        k = j + 1;
      }
      i += 1;
      j = k;
    }
  }
  
  public void setOutputSoapObject(Object paramObject)
  {
    this.bodyOut = paramObject;
  }
  
  public void write(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    paramXmlSerializer.setPrefix("i", this.xsi);
    paramXmlSerializer.setPrefix("d", this.xsd);
    paramXmlSerializer.setPrefix("c", this.enc);
    paramXmlSerializer.setPrefix("v", this.env);
    paramXmlSerializer.startTag(this.env, "Envelope");
    paramXmlSerializer.startTag(this.env, "Header");
    writeHeader(paramXmlSerializer);
    paramXmlSerializer.endTag(this.env, "Header");
    paramXmlSerializer.startTag(this.env, "Body");
    writeBody(paramXmlSerializer);
    paramXmlSerializer.endTag(this.env, "Body");
    paramXmlSerializer.endTag(this.env, "Envelope");
  }
  
  public void writeBody(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    if (this.encodingStyle != null) {
      paramXmlSerializer.attribute(this.env, "encodingStyle", this.encodingStyle);
    }
    ((Node)this.bodyOut).write(paramXmlSerializer);
  }
  
  public void writeHeader(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    if (this.headerOut != null)
    {
      int i = 0;
      while (i < this.headerOut.length)
      {
        this.headerOut[i].write(paramXmlSerializer);
        i += 1;
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/SoapEnvelope.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */