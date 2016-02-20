package org.ksoap2.serialization;

import java.io.IOException;
import org.ksoap2.SoapEnvelope;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

class DM
  implements Marshal
{
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    paramString1 = paramXmlPullParser.nextText();
    paramXmlPullParser = paramString1;
    switch (paramString2.charAt(0))
    {
    default: 
      throw new RuntimeException();
    case 'i': 
      paramXmlPullParser = new Integer(Integer.parseInt(paramString1));
    case 's': 
      return paramXmlPullParser;
    case 'l': 
      return new Long(Long.parseLong(paramString1));
    }
    return new Boolean(SoapEnvelope.stringToBoolean(paramString1));
  }
  
  public void register(SoapSerializationEnvelope paramSoapSerializationEnvelope)
  {
    paramSoapSerializationEnvelope.addMapping(paramSoapSerializationEnvelope.xsd, "int", PropertyInfo.INTEGER_CLASS, this);
    paramSoapSerializationEnvelope.addMapping(paramSoapSerializationEnvelope.xsd, "long", PropertyInfo.LONG_CLASS, this);
    paramSoapSerializationEnvelope.addMapping(paramSoapSerializationEnvelope.xsd, "string", PropertyInfo.STRING_CLASS, this);
    paramSoapSerializationEnvelope.addMapping(paramSoapSerializationEnvelope.xsd, "boolean", PropertyInfo.BOOLEAN_CLASS, this);
  }
  
  public void writeInstance(XmlSerializer paramXmlSerializer, Object paramObject)
    throws IOException
  {
    if ((paramObject instanceof AttributeContainer))
    {
      AttributeContainer localAttributeContainer = (AttributeContainer)paramObject;
      int j = localAttributeContainer.getAttributeCount();
      int i = 0;
      while (i < j)
      {
        AttributeInfo localAttributeInfo = new AttributeInfo();
        localAttributeContainer.getAttributeInfo(i, localAttributeInfo);
        paramXmlSerializer.attribute(localAttributeInfo.getNamespace(), localAttributeInfo.getName(), localAttributeInfo.getValue().toString());
        i += 1;
      }
    }
    paramXmlSerializer.text(paramObject.toString());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/serialization/DM.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */