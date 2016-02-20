package org.ksoap2;

import java.io.IOException;
import org.kxml2.kdom.Element;
import org.kxml2.kdom.Node;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class SoapFault12
  extends SoapFault
{
  private static final long serialVersionUID = 1012001L;
  public Node Code;
  public Node Detail;
  public Node Node;
  public Node Reason;
  public Node Role;
  
  public SoapFault12()
  {
    this.version = 120;
  }
  
  public SoapFault12(int paramInt)
  {
    this.version = paramInt;
  }
  
  private void parseSelf(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    paramXmlPullParser.require(2, "http://www.w3.org/2003/05/soap-envelope", "Fault");
    if (paramXmlPullParser.nextTag() == 2)
    {
      String str = paramXmlPullParser.getName();
      paramXmlPullParser.nextTag();
      if (str.equals("Code"))
      {
        this.Code = new Node();
        this.Code.parse(paramXmlPullParser);
      }
      for (;;)
      {
        paramXmlPullParser.require(3, "http://www.w3.org/2003/05/soap-envelope", str);
        break;
        if (str.equals("Reason"))
        {
          this.Reason = new Node();
          this.Reason.parse(paramXmlPullParser);
        }
        else if (str.equals("Node"))
        {
          this.Node = new Node();
          this.Node.parse(paramXmlPullParser);
        }
        else if (str.equals("Role"))
        {
          this.Role = new Node();
          this.Role.parse(paramXmlPullParser);
        }
        else
        {
          if (!str.equals("Detail")) {
            break label200;
          }
          this.Detail = new Node();
          this.Detail.parse(paramXmlPullParser);
        }
      }
      label200:
      throw new RuntimeException("unexpected tag:" + str);
    }
    paramXmlPullParser.require(3, "http://www.w3.org/2003/05/soap-envelope", "Fault");
    paramXmlPullParser.nextTag();
  }
  
  public String getMessage()
  {
    return this.Reason.getElement("http://www.w3.org/2003/05/soap-envelope", "Text").getText(0);
  }
  
  public void parse(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    parseSelf(paramXmlPullParser);
    this.faultcode = this.Code.getElement("http://www.w3.org/2003/05/soap-envelope", "Value").getText(0);
    this.faultstring = this.Reason.getElement("http://www.w3.org/2003/05/soap-envelope", "Text").getText(0);
    this.detail = this.Detail;
    this.faultactor = null;
  }
  
  public String toString()
  {
    String str1 = this.Reason.getElement("http://www.w3.org/2003/05/soap-envelope", "Text").getText(0);
    String str2 = this.Code.getElement("http://www.w3.org/2003/05/soap-envelope", "Value").getText(0);
    return "Code: " + str2 + ", Reason: " + str1;
  }
  
  public void write(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    paramXmlSerializer.startTag("http://www.w3.org/2003/05/soap-envelope", "Fault");
    paramXmlSerializer.startTag("http://www.w3.org/2003/05/soap-envelope", "Code");
    this.Code.write(paramXmlSerializer);
    paramXmlSerializer.endTag("http://www.w3.org/2003/05/soap-envelope", "Code");
    paramXmlSerializer.startTag("http://www.w3.org/2003/05/soap-envelope", "Reason");
    this.Reason.write(paramXmlSerializer);
    paramXmlSerializer.endTag("http://www.w3.org/2003/05/soap-envelope", "Reason");
    if (this.Node != null)
    {
      paramXmlSerializer.startTag("http://www.w3.org/2003/05/soap-envelope", "Node");
      this.Node.write(paramXmlSerializer);
      paramXmlSerializer.endTag("http://www.w3.org/2003/05/soap-envelope", "Node");
    }
    if (this.Role != null)
    {
      paramXmlSerializer.startTag("http://www.w3.org/2003/05/soap-envelope", "Role");
      this.Role.write(paramXmlSerializer);
      paramXmlSerializer.endTag("http://www.w3.org/2003/05/soap-envelope", "Role");
    }
    if (this.Detail != null)
    {
      paramXmlSerializer.startTag("http://www.w3.org/2003/05/soap-envelope", "Detail");
      this.Detail.write(paramXmlSerializer);
      paramXmlSerializer.endTag("http://www.w3.org/2003/05/soap-envelope", "Detail");
    }
    paramXmlSerializer.endTag("http://www.w3.org/2003/05/soap-envelope", "Fault");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/SoapFault12.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */