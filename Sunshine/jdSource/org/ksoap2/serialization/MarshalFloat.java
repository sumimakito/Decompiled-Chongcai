package org.ksoap2.serialization;

import java.io.IOException;
import java.math.BigDecimal;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class MarshalFloat
  implements Marshal
{
  static Class class$java$lang$Double;
  static Class class$java$lang$Float;
  static Class class$java$math$BigDecimal;
  
  static Class class$(String paramString)
  {
    try
    {
      paramString = Class.forName(paramString);
      return paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      throw new NoClassDefFoundError(paramString.getMessage());
    }
  }
  
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    paramXmlPullParser = paramXmlPullParser.nextText();
    if (paramString2.equals("float")) {
      return new Float(paramXmlPullParser);
    }
    if (paramString2.equals("double")) {
      return new Double(paramXmlPullParser);
    }
    if (paramString2.equals("decimal")) {
      return new BigDecimal(paramXmlPullParser);
    }
    throw new RuntimeException("float, double, or decimal expected");
  }
  
  public void register(SoapSerializationEnvelope paramSoapSerializationEnvelope)
  {
    String str = paramSoapSerializationEnvelope.xsd;
    Class localClass;
    if (class$java$lang$Float == null)
    {
      localClass = class$("java.lang.Float");
      class$java$lang$Float = localClass;
      paramSoapSerializationEnvelope.addMapping(str, "float", localClass, this);
      str = paramSoapSerializationEnvelope.xsd;
      if (class$java$lang$Double != null) {
        break label98;
      }
      localClass = class$("java.lang.Double");
      class$java$lang$Double = localClass;
      label51:
      paramSoapSerializationEnvelope.addMapping(str, "double", localClass, this);
      str = paramSoapSerializationEnvelope.xsd;
      if (class$java$math$BigDecimal != null) {
        break label105;
      }
      localClass = class$("java.math.BigDecimal");
      class$java$math$BigDecimal = localClass;
    }
    for (;;)
    {
      paramSoapSerializationEnvelope.addMapping(str, "decimal", localClass, this);
      return;
      localClass = class$java$lang$Float;
      break;
      label98:
      localClass = class$java$lang$Double;
      break label51;
      label105:
      localClass = class$java$math$BigDecimal;
    }
  }
  
  public void writeInstance(XmlSerializer paramXmlSerializer, Object paramObject)
    throws IOException
  {
    paramXmlSerializer.text(paramObject.toString());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/serialization/MarshalFloat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */