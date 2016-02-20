package org.ksoap2.serialization;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class MarshalHashtable
  implements Marshal
{
  public static final Class HASHTABLE_CLASS = new Hashtable().getClass();
  public static final String NAME = "Map";
  public static final String NAMESPACE = "http://xml.apache.org/xml-soap";
  SoapSerializationEnvelope envelope;
  
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    paramString1 = new Hashtable();
    paramString2 = paramXmlPullParser.getName();
    while (paramXmlPullParser.nextTag() != 3)
    {
      paramPropertyInfo = new ItemSoapObject(paramString1);
      paramXmlPullParser.require(2, null, "item");
      paramXmlPullParser.nextTag();
      Object localObject = this.envelope.read(paramXmlPullParser, paramPropertyInfo, 0, null, null, PropertyInfo.OBJECT_TYPE);
      paramXmlPullParser.nextTag();
      if (localObject != null) {
        paramPropertyInfo.setProperty(0, localObject);
      }
      localObject = this.envelope.read(paramXmlPullParser, paramPropertyInfo, 1, null, null, PropertyInfo.OBJECT_TYPE);
      paramXmlPullParser.nextTag();
      if (localObject != null) {
        paramPropertyInfo.setProperty(1, localObject);
      }
      paramXmlPullParser.require(3, null, "item");
    }
    paramXmlPullParser.require(3, null, paramString2);
    return paramString1;
  }
  
  public void register(SoapSerializationEnvelope paramSoapSerializationEnvelope)
  {
    this.envelope = paramSoapSerializationEnvelope;
    paramSoapSerializationEnvelope.addMapping("http://xml.apache.org/xml-soap", "Map", HASHTABLE_CLASS, this);
  }
  
  public void writeInstance(XmlSerializer paramXmlSerializer, Object paramObject)
    throws IOException
  {
    paramObject = (Hashtable)paramObject;
    SoapObject localSoapObject = new SoapObject(null, null);
    localSoapObject.addProperty("key", null);
    localSoapObject.addProperty("value", null);
    Enumeration localEnumeration = ((Hashtable)paramObject).keys();
    while (localEnumeration.hasMoreElements())
    {
      paramXmlSerializer.startTag("", "item");
      Object localObject = localEnumeration.nextElement();
      localSoapObject.setProperty(0, localObject);
      localSoapObject.setProperty(1, ((Hashtable)paramObject).get(localObject));
      this.envelope.writeObjectBody(paramXmlSerializer, localSoapObject);
      paramXmlSerializer.endTag("", "item");
    }
  }
  
  class ItemSoapObject
    extends SoapObject
  {
    Hashtable h;
    int resolvedIndex = -1;
    
    ItemSoapObject(Hashtable paramHashtable)
    {
      super(null);
      this.h = paramHashtable;
      addProperty("key", null);
      addProperty("value", null);
    }
    
    public void setProperty(int paramInt, Object paramObject)
    {
      if (this.resolvedIndex == -1)
      {
        super.setProperty(paramInt, paramObject);
        this.resolvedIndex = paramInt;
        return;
      }
      if (this.resolvedIndex == 0) {}
      for (Object localObject = getProperty(0); paramInt == 0; localObject = getProperty(1))
      {
        this.h.put(paramObject, localObject);
        return;
      }
      this.h.put(localObject, paramObject);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/serialization/MarshalHashtable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */