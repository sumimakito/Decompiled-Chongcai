package org.ksoap2.serialization;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public abstract interface Marshal
{
  public abstract Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException;
  
  public abstract void register(SoapSerializationEnvelope paramSoapSerializationEnvelope);
  
  public abstract void writeInstance(XmlSerializer paramXmlSerializer, Object paramObject)
    throws IOException;
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/serialization/Marshal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */