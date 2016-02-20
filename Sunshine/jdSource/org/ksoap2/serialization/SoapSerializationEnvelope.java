package org.ksoap2.serialization;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.ksoap2.SoapEnvelope;
import org.ksoap2.SoapFault;
import org.ksoap2.SoapFault12;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class SoapSerializationEnvelope
  extends SoapEnvelope
{
  private static final String ANY_TYPE_LABEL = "anyType";
  private static final String ARRAY_MAPPING_NAME = "Array";
  private static final String ARRAY_TYPE_LABEL = "arrayType";
  static final Marshal DEFAULT_MARSHAL = new DM();
  private static final String HREF_LABEL = "href";
  private static final String ID_LABEL = "id";
  private static final String ITEM_LABEL = "item";
  private static final String NIL_LABEL = "nil";
  private static final String NULL_LABEL = "null";
  protected static final int QNAME_MARSHAL = 3;
  protected static final int QNAME_NAMESPACE = 0;
  protected static final int QNAME_TYPE = 1;
  private static final String ROOT_LABEL = "root";
  private static final String TYPE_LABEL = "type";
  static Class class$org$ksoap2$serialization$SoapObject;
  protected boolean addAdornments = true;
  public boolean avoidExceptionForUnknownProperty;
  protected Hashtable classToQName = new Hashtable();
  public boolean dotNet;
  Hashtable idMap = new Hashtable();
  public boolean implicitTypes;
  Vector multiRef;
  public Hashtable properties = new Hashtable();
  protected Hashtable qNameToClass = new Hashtable();
  
  public SoapSerializationEnvelope(int paramInt)
  {
    super(paramInt);
    addMapping(this.enc, "Array", PropertyInfo.VECTOR_CLASS);
    DEFAULT_MARSHAL.register(this);
  }
  
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
  
  private int getIndex(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null) {}
    while (paramString.length() - paramInt1 < 3) {
      return paramInt2;
    }
    return Integer.parseInt(paramString.substring(paramInt1 + 1, paramString.length() - 1));
  }
  
  private void writeElement(XmlSerializer paramXmlSerializer, Object paramObject1, PropertyInfo paramPropertyInfo, Object paramObject2)
    throws IOException
  {
    if (paramObject2 != null)
    {
      ((Marshal)paramObject2).writeInstance(paramXmlSerializer, paramObject1);
      return;
    }
    if ((paramObject1 instanceof SoapObject))
    {
      writeObjectBody(paramXmlSerializer, (SoapObject)paramObject1);
      return;
    }
    if ((paramObject1 instanceof KvmSerializable))
    {
      writeObjectBody(paramXmlSerializer, (KvmSerializable)paramObject1);
      return;
    }
    if ((paramObject1 instanceof Vector))
    {
      writeVectorBody(paramXmlSerializer, (Vector)paramObject1, paramPropertyInfo.elementType);
      return;
    }
    throw new RuntimeException("Cannot serialize: " + paramObject1);
  }
  
  public void addMapping(String paramString1, String paramString2, Class paramClass)
  {
    addMapping(paramString1, paramString2, paramClass, null);
  }
  
  public void addMapping(String paramString1, String paramString2, Class paramClass, Marshal paramMarshal)
  {
    Hashtable localHashtable = this.qNameToClass;
    SoapPrimitive localSoapPrimitive = new SoapPrimitive(paramString1, paramString2, null);
    if (paramMarshal == null) {}
    for (Object localObject = paramClass;; localObject = paramMarshal)
    {
      localHashtable.put(localSoapPrimitive, localObject);
      this.classToQName.put(paramClass.getName(), new Object[] { paramString1, paramString2, null, paramMarshal });
      return;
    }
  }
  
  public void addTemplate(SoapObject paramSoapObject)
  {
    this.qNameToClass.put(new SoapPrimitive(paramSoapObject.namespace, paramSoapObject.name, null), paramSoapObject);
  }
  
  public Object[] getInfo(Object paramObject1, Object paramObject2)
  {
    Object localObject = paramObject1;
    if (paramObject1 == null)
    {
      if (((paramObject2 instanceof SoapObject)) || ((paramObject2 instanceof SoapPrimitive))) {
        localObject = paramObject2;
      }
    }
    else
    {
      if (!(localObject instanceof SoapObject)) {
        break label71;
      }
      paramObject2 = (SoapObject)localObject;
      paramObject1 = new Object[4];
      paramObject1[0] = ((SoapObject)paramObject2).getNamespace();
      paramObject1[1] = ((SoapObject)paramObject2).getName();
      paramObject1[2] = null;
      paramObject1[3] = null;
    }
    label71:
    do
    {
      return (Object[])paramObject1;
      localObject = paramObject2.getClass();
      break;
      if ((localObject instanceof SoapPrimitive))
      {
        paramObject1 = (SoapPrimitive)localObject;
        return new Object[] { ((SoapPrimitive)paramObject1).getNamespace(), ((SoapPrimitive)paramObject1).getName(), null, DEFAULT_MARSHAL };
      }
      if ((!(localObject instanceof Class)) || (localObject == PropertyInfo.OBJECT_CLASS)) {
        break label153;
      }
      paramObject2 = (Object[])this.classToQName.get(((Class)localObject).getName());
      paramObject1 = paramObject2;
    } while (paramObject2 != null);
    label153:
    return new Object[] { this.xsd, "anyType", null, null };
  }
  
  public Object getResponse()
    throws SoapFault
  {
    if ((this.bodyIn instanceof SoapFault)) {
      throw ((SoapFault)this.bodyIn);
    }
    KvmSerializable localKvmSerializable = (KvmSerializable)this.bodyIn;
    Object localObject;
    if (localKvmSerializable.getPropertyCount() == 0)
    {
      localObject = null;
      return localObject;
    }
    if (localKvmSerializable.getPropertyCount() == 1) {
      return localKvmSerializable.getProperty(0);
    }
    Vector localVector = new Vector();
    int i = 0;
    for (;;)
    {
      localObject = localVector;
      if (i >= localKvmSerializable.getPropertyCount()) {
        break;
      }
      localVector.add(localKvmSerializable.getProperty(i));
      i += 1;
    }
  }
  
  public boolean isAddAdornments()
  {
    return this.addAdornments;
  }
  
  public void parseBody(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    this.bodyIn = null;
    paramXmlPullParser.nextTag();
    Object localObject1;
    if ((paramXmlPullParser.getEventType() == 2) && (paramXmlPullParser.getNamespace().equals(this.env)) && (paramXmlPullParser.getName().equals("Fault"))) {
      if (this.version < 120)
      {
        localObject1 = new SoapFault(this.version);
        ((SoapFault)localObject1).parse(paramXmlPullParser);
        this.bodyIn = localObject1;
      }
    }
    for (;;)
    {
      return;
      localObject1 = new SoapFault12(this.version);
      break;
      while (paramXmlPullParser.getEventType() == 2)
      {
        localObject1 = paramXmlPullParser.getAttributeValue(this.enc, "root");
        Object localObject2 = read(paramXmlPullParser, null, -1, paramXmlPullParser.getNamespace(), paramXmlPullParser.getName(), PropertyInfo.OBJECT_TYPE);
        if (("1".equals(localObject1)) || (this.bodyIn == null)) {
          this.bodyIn = localObject2;
        }
        paramXmlPullParser.nextTag();
      }
    }
  }
  
  public Object read(XmlPullParser paramXmlPullParser, Object paramObject, int paramInt, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    String str2 = paramXmlPullParser.getName();
    String str1 = paramXmlPullParser.getAttributeValue(null, "href");
    if (str1 != null)
    {
      if (paramObject == null) {
        throw new RuntimeException("href at root level?!?");
      }
      paramPropertyInfo = str1.substring(1);
      paramString2 = this.idMap.get(paramPropertyInfo);
      if (paramString2 != null)
      {
        paramString1 = paramString2;
        if (!(paramString2 instanceof FwdRef)) {}
      }
      else
      {
        paramString1 = new FwdRef();
        paramString1.next = ((FwdRef)paramString2);
        paramString1.obj = paramObject;
        paramString1.index = paramInt;
        this.idMap.put(paramPropertyInfo, paramString1);
        paramString1 = null;
      }
      paramXmlPullParser.nextTag();
      paramXmlPullParser.require(3, null, str2);
      paramObject = paramString1;
    }
    String str3;
    do
    {
      paramXmlPullParser.require(3, null, str2);
      return paramObject;
      str1 = paramXmlPullParser.getAttributeValue(this.xsi, "nil");
      str3 = paramXmlPullParser.getAttributeValue(null, "id");
      paramObject = str1;
      if (str1 == null) {
        paramObject = paramXmlPullParser.getAttributeValue(this.xsi, "null");
      }
      if ((paramObject == null) || (!SoapEnvelope.stringToBoolean((String)paramObject))) {
        break;
      }
      paramString1 = null;
      paramXmlPullParser.nextTag();
      paramXmlPullParser.require(3, null, str2);
      paramObject = paramString1;
    } while (str3 == null);
    paramObject = this.idMap.get(str3);
    if ((paramObject instanceof FwdRef))
    {
      paramObject = (FwdRef)paramObject;
      do
      {
        if (!(((FwdRef)paramObject).obj instanceof KvmSerializable)) {
          break;
        }
        ((KvmSerializable)((FwdRef)paramObject).obj).setProperty(((FwdRef)paramObject).index, paramString1);
        paramString2 = ((FwdRef)paramObject).next;
        paramObject = paramString2;
      } while (paramString2 != null);
    }
    label366:
    while (paramObject == null) {
      for (;;)
      {
        this.idMap.put(str3, paramString1);
        paramObject = paramString1;
        break;
        String str4 = paramXmlPullParser.getAttributeValue(this.xsi, "type");
        if (str4 != null)
        {
          paramInt = str4.indexOf(':');
          str1 = str4.substring(paramInt + 1);
          if (paramInt == -1)
          {
            paramObject = "";
            paramObject = paramXmlPullParser.getNamespace((String)paramObject);
          }
        }
        for (;;)
        {
          if (str4 == null) {
            this.implicitTypes = true;
          }
          paramString2 = readInstance(paramXmlPullParser, (String)paramObject, str1, paramPropertyInfo);
          paramString1 = paramString2;
          if (paramString2 != null) {
            break;
          }
          paramString1 = readUnknown(paramXmlPullParser, (String)paramObject, str1);
          break;
          paramObject = str4.substring(0, paramInt);
          break label366;
          paramObject = paramString1;
          str1 = paramString2;
          if (paramString2 == null)
          {
            paramObject = paramString1;
            str1 = paramString2;
            if (paramString1 == null) {
              if (paramXmlPullParser.getAttributeValue(this.enc, "arrayType") != null)
              {
                paramObject = this.enc;
                str1 = "Array";
              }
              else
              {
                paramString1 = getInfo(paramPropertyInfo.type, null);
                paramObject = (String)paramString1[0];
                str1 = (String)paramString1[1];
              }
            }
          }
        }
        ((Vector)((FwdRef)paramObject).obj).setElementAt(paramString1, ((FwdRef)paramObject).index);
      }
    }
    throw new RuntimeException("double ID");
  }
  
  public Object readInstance(XmlPullParser paramXmlPullParser, String paramString1, String paramString2, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    Object localObject = this.qNameToClass.get(new SoapPrimitive(paramString1, paramString2, null));
    if (localObject == null) {
      return null;
    }
    if ((localObject instanceof Marshal)) {
      return ((Marshal)localObject).readInstance(paramXmlPullParser, paramString1, paramString2, paramPropertyInfo);
    }
    if ((localObject instanceof SoapObject)) {
      paramString1 = ((SoapObject)localObject).newInstance();
    }
    while ((paramString1 instanceof SoapObject))
    {
      readSerializable(paramXmlPullParser, (SoapObject)paramString1);
      return paramString1;
      Class localClass;
      if (class$org$ksoap2$serialization$SoapObject == null)
      {
        localClass = class$("org.ksoap2.serialization.SoapObject");
        class$org$ksoap2$serialization$SoapObject = localClass;
      }
      for (;;)
      {
        if (localObject != localClass) {
          break label132;
        }
        paramString1 = new SoapObject(paramString1, paramString2);
        break;
        localClass = class$org$ksoap2$serialization$SoapObject;
      }
      try
      {
        label132:
        paramString1 = ((Class)localObject).newInstance();
      }
      catch (Exception paramXmlPullParser)
      {
        throw new RuntimeException(paramXmlPullParser.toString());
      }
    }
    if ((paramString1 instanceof KvmSerializable))
    {
      readSerializable(paramXmlPullParser, (KvmSerializable)paramString1);
      return paramString1;
    }
    if ((paramString1 instanceof Vector))
    {
      readVector(paramXmlPullParser, (Vector)paramString1, paramPropertyInfo.elementType);
      return paramString1;
    }
    throw new RuntimeException("no deserializer for " + paramString1.getClass());
  }
  
  protected void readSerializable(XmlPullParser paramXmlPullParser, KvmSerializable paramKvmSerializable)
    throws IOException, XmlPullParserException
  {
    while (paramXmlPullParser.nextTag() != 3)
    {
      String str = paramXmlPullParser.getName();
      if ((!this.implicitTypes) || (!(paramKvmSerializable instanceof SoapObject)))
      {
        PropertyInfo localPropertyInfo = new PropertyInfo();
        int m = paramKvmSerializable.getPropertyCount();
        int j = 0;
        int i = 0;
        while ((i < m) && (j == 0))
        {
          localPropertyInfo.clear();
          paramKvmSerializable.getPropertyInfo(i, this.properties, localPropertyInfo);
          int k;
          if ((!str.equals(localPropertyInfo.name)) || (localPropertyInfo.namespace != null))
          {
            k = j;
            if (str.equals(localPropertyInfo.name))
            {
              k = j;
              if (!paramXmlPullParser.getNamespace().equals(localPropertyInfo.namespace)) {}
            }
          }
          else
          {
            k = 1;
            paramKvmSerializable.setProperty(i, read(paramXmlPullParser, paramKvmSerializable, i, null, null, localPropertyInfo));
          }
          i += 1;
          j = k;
        }
        if (j == 0)
        {
          if (this.avoidExceptionForUnknownProperty) {
            for (;;)
            {
              if (paramXmlPullParser.next() == 3) {
                if (str.equals(paramXmlPullParser.getName())) {
                  break;
                }
              }
            }
          }
          throw new RuntimeException("Unknown Property: " + str);
        }
      }
      else
      {
        ((SoapObject)paramKvmSerializable).addProperty(paramXmlPullParser.getName(), read(paramXmlPullParser, paramKvmSerializable, paramKvmSerializable.getPropertyCount(), ((SoapObject)paramKvmSerializable).getNamespace(), str, PropertyInfo.OBJECT_TYPE));
      }
    }
    paramXmlPullParser.require(3, null, null);
  }
  
  protected void readSerializable(XmlPullParser paramXmlPullParser, SoapObject paramSoapObject)
    throws IOException, XmlPullParserException
  {
    int i = 0;
    while (i < paramXmlPullParser.getAttributeCount())
    {
      paramSoapObject.addAttribute(paramXmlPullParser.getAttributeName(i), paramXmlPullParser.getAttributeValue(i));
      i += 1;
    }
    readSerializable(paramXmlPullParser, paramSoapObject);
  }
  
  protected Object readUnknown(XmlPullParser paramXmlPullParser, String paramString1, String paramString2)
    throws IOException, XmlPullParserException
  {
    String str1 = paramXmlPullParser.getName();
    String str2 = paramXmlPullParser.getNamespace();
    Vector localVector = new Vector();
    int i = 0;
    while (i < paramXmlPullParser.getAttributeCount())
    {
      localObject1 = new AttributeInfo();
      ((AttributeInfo)localObject1).setName(paramXmlPullParser.getAttributeName(i));
      ((AttributeInfo)localObject1).setValue(paramXmlPullParser.getAttributeValue(i));
      ((AttributeInfo)localObject1).setNamespace(paramXmlPullParser.getAttributeNamespace(i));
      ((AttributeInfo)localObject1).setType(paramXmlPullParser.getAttributeType(i));
      localVector.addElement(localObject1);
      i += 1;
    }
    paramXmlPullParser.next();
    Object localObject1 = null;
    SoapPrimitive localSoapPrimitive = null;
    Object localObject2;
    if (paramXmlPullParser.getEventType() == 4)
    {
      localObject2 = paramXmlPullParser.getText();
      localSoapPrimitive = new SoapPrimitive(paramString1, paramString2, (String)localObject2);
      localObject1 = localSoapPrimitive;
      i = 0;
      while (i < localVector.size())
      {
        localSoapPrimitive.addAttribute((AttributeInfo)localVector.elementAt(i));
        i += 1;
      }
      paramXmlPullParser.next();
    }
    while (paramXmlPullParser.getEventType() == 2) {
      if ((localObject2 != null) && (((String)localObject2).trim().length() != 0))
      {
        throw new RuntimeException("Malformed input: Mixed content");
        localObject2 = localSoapPrimitive;
        if (paramXmlPullParser.getEventType() == 3)
        {
          localObject1 = new SoapObject(paramString1, paramString2);
          i = 0;
          while (i < localVector.size())
          {
            ((SoapObject)localObject1).addAttribute((AttributeInfo)localVector.elementAt(i));
            i += 1;
          }
          localObject2 = localSoapPrimitive;
        }
      }
      else
      {
        localObject1 = new SoapObject(paramString1, paramString2);
        i = 0;
        while (i < localVector.size())
        {
          ((SoapObject)localObject1).addAttribute((AttributeInfo)localVector.elementAt(i));
          i += 1;
        }
        while (paramXmlPullParser.getEventType() != 3)
        {
          ((SoapObject)localObject1).addProperty(paramXmlPullParser.getName(), read(paramXmlPullParser, localObject1, ((SoapObject)localObject1).getPropertyCount(), null, null, PropertyInfo.OBJECT_TYPE));
          paramXmlPullParser.nextTag();
        }
      }
    }
    paramXmlPullParser.require(3, str2, str1);
    return localObject1;
  }
  
  protected void readVector(XmlPullParser paramXmlPullParser, Vector paramVector, PropertyInfo paramPropertyInfo)
    throws IOException, XmlPullParserException
  {
    Object localObject1 = null;
    Object localObject2 = null;
    int i = paramVector.size();
    int k = 1;
    String str2 = paramXmlPullParser.getAttributeValue(this.enc, "arrayType");
    int j = k;
    Object localObject3;
    if (str2 != null)
    {
      i = str2.indexOf(':');
      j = str2.indexOf("[", i);
      localObject3 = str2.substring(i + 1, j);
      if (i != -1) {
        break label291;
      }
    }
    label291:
    for (localObject1 = "";; localObject1 = str2.substring(0, i))
    {
      String str1 = paramXmlPullParser.getNamespace((String)localObject1);
      int m = getIndex(str2, j, -1);
      localObject1 = str1;
      localObject2 = localObject3;
      j = k;
      i = m;
      if (m != -1)
      {
        paramVector.setSize(m);
        j = 0;
        i = m;
        localObject2 = localObject3;
        localObject1 = str1;
      }
      localObject3 = paramPropertyInfo;
      if (paramPropertyInfo == null) {
        localObject3 = PropertyInfo.OBJECT_TYPE;
      }
      paramXmlPullParser.nextTag();
      m = getIndex(paramXmlPullParser.getAttributeValue(this.enc, "offset"), 0, 0);
      while (paramXmlPullParser.getEventType() != 3)
      {
        m = getIndex(paramXmlPullParser.getAttributeValue(this.enc, "position"), 0, m);
        k = i;
        if (j != 0)
        {
          k = i;
          if (m >= i)
          {
            k = m + 1;
            paramVector.setSize(k);
          }
        }
        paramVector.setElementAt(read(paramXmlPullParser, paramVector, m, (String)localObject1, (String)localObject2, (PropertyInfo)localObject3), m);
        m += 1;
        paramXmlPullParser.nextTag();
        i = k;
      }
    }
    paramXmlPullParser.require(3, null, null);
  }
  
  public void setAddAdornments(boolean paramBoolean)
  {
    this.addAdornments = paramBoolean;
  }
  
  public void setBodyOutEmpty(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.bodyOut = null;
    }
  }
  
  public void writeBody(XmlSerializer paramXmlSerializer)
    throws IOException
  {
    Object[] arrayOfObject;
    if (this.bodyOut != null)
    {
      this.multiRef = new Vector();
      this.multiRef.addElement(this.bodyOut);
      arrayOfObject = getInfo(null, this.bodyOut);
      if (!this.dotNet) {
        break label171;
      }
      str = "";
      paramXmlSerializer.startTag(str, (String)arrayOfObject[1]);
      if (this.dotNet) {
        paramXmlSerializer.attribute(null, "xmlns", (String)arrayOfObject[0]);
      }
      if (this.addAdornments)
      {
        if (arrayOfObject[2] != null) {
          break label181;
        }
        str = "o0";
        label105:
        paramXmlSerializer.attribute(null, "id", str);
        paramXmlSerializer.attribute(this.enc, "root", "1");
      }
      writeElement(paramXmlSerializer, this.bodyOut, null, arrayOfObject[3]);
      if (!this.dotNet) {
        break label191;
      }
    }
    label171:
    label181:
    label191:
    for (String str = "";; str = (String)arrayOfObject[0])
    {
      paramXmlSerializer.endTag(str, (String)arrayOfObject[1]);
      return;
      str = (String)arrayOfObject[0];
      break;
      str = (String)arrayOfObject[2];
      break label105;
    }
  }
  
  public void writeObjectBody(XmlSerializer paramXmlSerializer, KvmSerializable paramKvmSerializable)
    throws IOException
  {
    int j = paramKvmSerializable.getPropertyCount();
    PropertyInfo localPropertyInfo = new PropertyInfo();
    int i = 0;
    while (i < j)
    {
      Object localObject1 = paramKvmSerializable.getProperty(i);
      paramKvmSerializable.getPropertyInfo(i, this.properties, localPropertyInfo);
      if (!(localObject1 instanceof SoapObject))
      {
        if ((localPropertyInfo.flags & 0x1) == 0)
        {
          paramXmlSerializer.startTag(localPropertyInfo.namespace, localPropertyInfo.name);
          writeProperty(paramXmlSerializer, paramKvmSerializable.getProperty(i), localPropertyInfo);
          paramXmlSerializer.endTag(localPropertyInfo.namespace, localPropertyInfo.name);
        }
        i += 1;
      }
      else
      {
        SoapObject localSoapObject = (SoapObject)localObject1;
        Object localObject2 = getInfo(null, localSoapObject);
        localObject1 = (String)localObject2[0];
        String str1 = (String)localObject2[1];
        if ((localPropertyInfo.name != null) && (localPropertyInfo.name.length() > 0))
        {
          localObject1 = localPropertyInfo.name;
          label180:
          if ((localPropertyInfo.namespace == null) || (localPropertyInfo.namespace.length() <= 0)) {
            break label307;
          }
        }
        label307:
        for (localObject2 = localPropertyInfo.namespace;; localObject2 = (String)localObject2[0])
        {
          paramXmlSerializer.startTag((String)localObject2, (String)localObject1);
          if (!this.implicitTypes)
          {
            String str2 = paramXmlSerializer.getPrefix((String)localObject2, true);
            paramXmlSerializer.attribute(this.xsi, "type", str2 + ":" + str1);
          }
          writeObjectBody(paramXmlSerializer, localSoapObject);
          paramXmlSerializer.endTag((String)localObject2, (String)localObject1);
          break;
          localObject1 = (String)localObject2[1];
          break label180;
        }
      }
    }
  }
  
  public void writeObjectBody(XmlSerializer paramXmlSerializer, SoapObject paramSoapObject)
    throws IOException
  {
    int j = paramSoapObject.getAttributeCount();
    int i = 0;
    while (i < j)
    {
      AttributeInfo localAttributeInfo = new AttributeInfo();
      paramSoapObject.getAttributeInfo(i, localAttributeInfo);
      paramXmlSerializer.attribute(localAttributeInfo.getNamespace(), localAttributeInfo.getName(), localAttributeInfo.getValue().toString());
      i += 1;
    }
    writeObjectBody(paramXmlSerializer, paramSoapObject);
  }
  
  protected void writeProperty(XmlSerializer paramXmlSerializer, Object paramObject, PropertyInfo paramPropertyInfo)
    throws IOException
  {
    if (paramObject == null)
    {
      paramPropertyInfo = this.xsi;
      if (this.version >= 120) {}
      for (paramObject = "nil";; paramObject = "null")
      {
        paramXmlSerializer.attribute(paramPropertyInfo, (String)paramObject, "true");
        return;
      }
    }
    Object[] arrayOfObject = getInfo(null, paramObject);
    if ((paramPropertyInfo.multiRef) || (arrayOfObject[2] != null))
    {
      int j = this.multiRef.indexOf(paramObject);
      int i = j;
      if (j == -1)
      {
        i = this.multiRef.size();
        this.multiRef.addElement(paramObject);
      }
      if (arrayOfObject[2] == null) {}
      for (paramObject = "#o" + i;; paramObject = "#" + arrayOfObject[2])
      {
        paramXmlSerializer.attribute(null, "href", (String)paramObject);
        return;
      }
    }
    if ((!this.implicitTypes) || (paramObject.getClass() != paramPropertyInfo.type))
    {
      String str = paramXmlSerializer.getPrefix((String)arrayOfObject[0], true);
      paramXmlSerializer.attribute(this.xsi, "type", str + ":" + arrayOfObject[1]);
    }
    writeElement(paramXmlSerializer, paramObject, paramPropertyInfo, arrayOfObject[3]);
  }
  
  protected void writeVectorBody(XmlSerializer paramXmlSerializer, Vector paramVector, PropertyInfo paramPropertyInfo)
    throws IOException
  {
    Object localObject3 = "item";
    Object localObject4 = null;
    PropertyInfo localPropertyInfo;
    Object localObject2;
    Object localObject1;
    label122:
    int k;
    if (paramPropertyInfo == null)
    {
      localPropertyInfo = PropertyInfo.OBJECT_TYPE;
      localObject2 = localObject3;
      localObject1 = localObject4;
      int m = paramVector.size();
      localObject3 = getInfo(localPropertyInfo.type, null);
      if (this.implicitTypes) {
        break label210;
      }
      paramXmlSerializer.attribute(this.enc, "arrayType", paramXmlSerializer.getPrefix((String)localObject3[0], false) + ":" + localObject3[1] + "[" + m + "]");
      paramPropertyInfo = (PropertyInfo)localObject1;
      i = 0;
      k = 0;
      label128:
      if (k >= m) {
        return;
      }
      if (paramVector.elementAt(k) != null) {
        break label229;
      }
    }
    label210:
    label229:
    int j;
    for (int i = 1;; i = j)
    {
      k += 1;
      break label128;
      localObject1 = localObject4;
      localObject2 = localObject3;
      localPropertyInfo = paramPropertyInfo;
      if (!(paramPropertyInfo instanceof PropertyInfo)) {
        break;
      }
      localObject1 = localObject4;
      localObject2 = localObject3;
      localPropertyInfo = paramPropertyInfo;
      if (paramPropertyInfo.name == null) {
        break;
      }
      localObject2 = paramPropertyInfo.name;
      localObject1 = paramPropertyInfo.namespace;
      localPropertyInfo = paramPropertyInfo;
      break;
      paramPropertyInfo = (PropertyInfo)localObject1;
      if (localObject1 != null) {
        break label122;
      }
      paramPropertyInfo = (String)localObject3[0];
      break label122;
      paramXmlSerializer.startTag(paramPropertyInfo, (String)localObject2);
      j = i;
      if (i != 0)
      {
        paramXmlSerializer.attribute(this.enc, "position", "[" + k + "]");
        j = 0;
      }
      writeProperty(paramXmlSerializer, paramVector.elementAt(k), localPropertyInfo);
      paramXmlSerializer.endTag(paramPropertyInfo, (String)localObject2);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/serialization/SoapSerializationEnvelope.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */