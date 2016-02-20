package org.ksoap2;

import java.io.IOException;
import org.kxml2.kdom.Node;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class SoapFault
  extends IOException
{
  private static final long serialVersionUID = 1011001L;
  public Node detail;
  public String faultactor;
  public String faultcode;
  public String faultstring;
  public int version;
  
  public SoapFault()
  {
    this.version = 110;
  }
  
  public SoapFault(int paramInt)
  {
    this.version = paramInt;
  }
  
  public String getMessage()
  {
    return this.faultstring;
  }
  
  public void parse(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    paramXmlPullParser.require(2, "http://schemas.xmlsoap.org/soap/envelope/", "Fault");
    String str;
    do
    {
      if (paramXmlPullParser.nextTag() != 2) {
        break;
      }
      str = paramXmlPullParser.getName();
      if (!str.equals("detail")) {
        break label103;
      }
      this.detail = new Node();
      this.detail.parse(paramXmlPullParser);
    } while ((!paramXmlPullParser.getNamespace().equals("http://schemas.xmlsoap.org/soap/envelope/")) || (!paramXmlPullParser.getName().equals("Fault")));
    paramXmlPullParser.require(3, "http://schemas.xmlsoap.org/soap/envelope/", "Fault");
    paramXmlPullParser.nextTag();
    return;
    label103:
    if (str.equals("faultcode")) {
      this.faultcode = paramXmlPullParser.nextText();
    }
    for (;;)
    {
      paramXmlPullParser.require(3, null, str);
      break;
      if (str.equals("faultstring"))
      {
        this.faultstring = paramXmlPullParser.nextText();
      }
      else
      {
        if (!str.equals("faultactor")) {
          break label178;
        }
        this.faultactor = paramXmlPullParser.nextText();
      }
    }
    label178:
    throw new RuntimeException("unexpected tag:" + str);
  }
  
  public String toString()
  {
    return "SoapFault - faultcode: '" + this.faultcode + "' faultstring: '" + this.faultstring + "' faultactor: '" + this.faultactor + "' detail: " + this.detail;
  }
  
  public void write(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    paramXmlSerializer.startTag("http://schemas.xmlsoap.org/soap/envelope/", "Fault");
    paramXmlSerializer.startTag(null, "faultcode");
    paramXmlSerializer.text("" + this.faultcode);
    paramXmlSerializer.endTag(null, "faultcode");
    paramXmlSerializer.startTag(null, "faultstring");
    paramXmlSerializer.text("" + this.faultstring);
    paramXmlSerializer.endTag(null, "faultstring");
    paramXmlSerializer.startTag(null, "detail");
    if (this.detail != null) {
      this.detail.write(paramXmlSerializer);
    }
    paramXmlSerializer.endTag(null, "detail");
    paramXmlSerializer.endTag("http://schemas.xmlsoap.org/soap/envelope/", "Fault");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/SoapFault.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */