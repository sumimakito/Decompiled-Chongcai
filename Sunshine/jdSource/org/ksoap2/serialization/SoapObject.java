package org.ksoap2.serialization;

import java.util.Hashtable;
import java.util.Vector;

public class SoapObject
  extends AttributeContainer
  implements KvmSerializable
{
  private static final String EMPTY_STRING = "";
  static Class class$java$lang$String;
  static Class class$org$ksoap2$serialization$SoapObject;
  protected String name;
  protected String namespace;
  protected Vector properties = new Vector();
  
  public SoapObject()
  {
    this("", "");
  }
  
  public SoapObject(String paramString1, String paramString2)
  {
    this.namespace = paramString1;
    this.name = paramString2;
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
  
  private Integer propertyIndex(String paramString)
  {
    if (paramString != null)
    {
      int i = 0;
      while (i < this.properties.size())
      {
        if (paramString.equals(((PropertyInfo)this.properties.elementAt(i)).getName())) {
          return new Integer(i);
        }
        i += 1;
      }
    }
    return null;
  }
  
  public SoapObject addProperty(String paramString, Object paramObject)
  {
    PropertyInfo localPropertyInfo = new PropertyInfo();
    localPropertyInfo.name = paramString;
    if (paramObject == null) {}
    for (paramString = PropertyInfo.OBJECT_CLASS;; paramString = paramObject.getClass())
    {
      localPropertyInfo.type = paramString;
      localPropertyInfo.value = paramObject;
      return addProperty(localPropertyInfo);
    }
  }
  
  public SoapObject addProperty(PropertyInfo paramPropertyInfo)
  {
    this.properties.addElement(paramPropertyInfo);
    return this;
  }
  
  public SoapObject addPropertyIfValue(String paramString, Object paramObject)
  {
    SoapObject localSoapObject = this;
    if (paramObject != null) {
      localSoapObject = addProperty(paramString, paramObject);
    }
    return localSoapObject;
  }
  
  public SoapObject addPropertyIfValue(PropertyInfo paramPropertyInfo)
  {
    if (paramPropertyInfo.value != null) {
      this.properties.addElement(paramPropertyInfo);
    }
    return this;
  }
  
  public SoapObject addPropertyIfValue(PropertyInfo paramPropertyInfo, Object paramObject)
  {
    SoapObject localSoapObject = this;
    if (paramObject != null)
    {
      paramPropertyInfo.setValue(paramObject);
      localSoapObject = addProperty(paramPropertyInfo);
    }
    return localSoapObject;
  }
  
  public SoapObject addSoapObject(SoapObject paramSoapObject)
  {
    this.properties.addElement(paramSoapObject);
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof SoapObject)) {}
    int j;
    do
    {
      do
      {
        return false;
        paramObject = (SoapObject)paramObject;
      } while ((!this.name.equals(((SoapObject)paramObject).name)) || (!this.namespace.equals(((SoapObject)paramObject).namespace)));
      j = this.properties.size();
    } while (j != ((SoapObject)paramObject).properties.size());
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label91;
      }
      if (!((SoapObject)paramObject).isPropertyEqual(this.properties.elementAt(i), i)) {
        break;
      }
      i += 1;
    }
    label91:
    return attributesAreEqual((AttributeContainer)paramObject);
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getNamespace()
  {
    return this.namespace;
  }
  
  public Object getPrimitiveProperty(String paramString)
  {
    Object localObject1 = propertyIndex(paramString);
    if (localObject1 != null)
    {
      PropertyInfo localPropertyInfo = (PropertyInfo)this.properties.elementAt(((Integer)localObject1).intValue());
      Object localObject2 = localPropertyInfo.getType();
      if (class$org$ksoap2$serialization$SoapObject == null)
      {
        localObject1 = class$("org.ksoap2.serialization.SoapObject");
        class$org$ksoap2$serialization$SoapObject = (Class)localObject1;
      }
      while (localObject2 != localObject1)
      {
        return localPropertyInfo.getValue();
        localObject1 = class$org$ksoap2$serialization$SoapObject;
      }
      localPropertyInfo = new PropertyInfo();
      if (class$java$lang$String == null)
      {
        localObject1 = class$("java.lang.String");
        class$java$lang$String = (Class)localObject1;
      }
      for (;;)
      {
        localPropertyInfo.setType(localObject1);
        localPropertyInfo.setValue("");
        localPropertyInfo.setName(paramString);
        return localPropertyInfo.getValue();
        localObject1 = class$java$lang$String;
      }
    }
    throw new RuntimeException("illegal property: " + paramString);
  }
  
  public String getPrimitivePropertyAsString(String paramString)
  {
    Object localObject1 = propertyIndex(paramString);
    if (localObject1 != null)
    {
      localObject1 = (PropertyInfo)this.properties.elementAt(((Integer)localObject1).intValue());
      Object localObject2 = ((PropertyInfo)localObject1).getType();
      if (class$org$ksoap2$serialization$SoapObject == null)
      {
        paramString = class$("org.ksoap2.serialization.SoapObject");
        class$org$ksoap2$serialization$SoapObject = paramString;
      }
      while (localObject2 != paramString)
      {
        return ((PropertyInfo)localObject1).getValue().toString();
        paramString = class$org$ksoap2$serialization$SoapObject;
      }
      return "";
    }
    throw new RuntimeException("illegal property: " + paramString);
  }
  
  public Object getPrimitivePropertySafely(String paramString)
  {
    Object localObject1 = propertyIndex(paramString);
    if (localObject1 != null)
    {
      PropertyInfo localPropertyInfo = (PropertyInfo)this.properties.elementAt(((Integer)localObject1).intValue());
      Object localObject2 = localPropertyInfo.getType();
      if (class$org$ksoap2$serialization$SoapObject == null)
      {
        localObject1 = class$("org.ksoap2.serialization.SoapObject");
        class$org$ksoap2$serialization$SoapObject = (Class)localObject1;
      }
      while (localObject2 != localObject1)
      {
        return localPropertyInfo.getValue().toString();
        localObject1 = class$org$ksoap2$serialization$SoapObject;
      }
      localPropertyInfo = new PropertyInfo();
      if (class$java$lang$String == null)
      {
        localObject1 = class$("java.lang.String");
        class$java$lang$String = (Class)localObject1;
      }
      for (;;)
      {
        localPropertyInfo.setType(localObject1);
        localPropertyInfo.setValue("");
        localPropertyInfo.setName(paramString);
        return localPropertyInfo.getValue();
        localObject1 = class$java$lang$String;
      }
    }
    return new NullSoapObject();
  }
  
  public String getPrimitivePropertySafelyAsString(String paramString)
  {
    paramString = propertyIndex(paramString);
    if (paramString != null)
    {
      PropertyInfo localPropertyInfo = (PropertyInfo)this.properties.elementAt(paramString.intValue());
      Object localObject = localPropertyInfo.getType();
      if (class$org$ksoap2$serialization$SoapObject == null)
      {
        paramString = class$("org.ksoap2.serialization.SoapObject");
        class$org$ksoap2$serialization$SoapObject = paramString;
      }
      while (localObject != paramString)
      {
        return localPropertyInfo.getValue().toString();
        paramString = class$org$ksoap2$serialization$SoapObject;
      }
      return "";
    }
    return "";
  }
  
  public Object getProperty(int paramInt)
  {
    Object localObject = this.properties.elementAt(paramInt);
    if ((localObject instanceof PropertyInfo)) {
      return ((PropertyInfo)localObject).getValue();
    }
    return (SoapObject)localObject;
  }
  
  public Object getProperty(String paramString)
  {
    Integer localInteger = propertyIndex(paramString);
    if (localInteger != null) {
      return getProperty(localInteger.intValue());
    }
    throw new RuntimeException("illegal property: " + paramString);
  }
  
  public String getPropertyAsString(int paramInt)
  {
    return ((PropertyInfo)this.properties.elementAt(paramInt)).getValue().toString();
  }
  
  public String getPropertyAsString(String paramString)
  {
    Integer localInteger = propertyIndex(paramString);
    if (localInteger != null) {
      return getProperty(localInteger.intValue()).toString();
    }
    throw new RuntimeException("illegal property: " + paramString);
  }
  
  public int getPropertyCount()
  {
    return this.properties.size();
  }
  
  public void getPropertyInfo(int paramInt, Hashtable paramHashtable, PropertyInfo paramPropertyInfo)
  {
    getPropertyInfo(paramInt, paramPropertyInfo);
  }
  
  public void getPropertyInfo(int paramInt, PropertyInfo paramPropertyInfo)
  {
    Object localObject = this.properties.elementAt(paramInt);
    if ((localObject instanceof PropertyInfo))
    {
      localObject = (PropertyInfo)localObject;
      paramPropertyInfo.name = ((PropertyInfo)localObject).name;
      paramPropertyInfo.namespace = ((PropertyInfo)localObject).namespace;
      paramPropertyInfo.flags = ((PropertyInfo)localObject).flags;
      paramPropertyInfo.type = ((PropertyInfo)localObject).type;
      paramPropertyInfo.elementType = ((PropertyInfo)localObject).elementType;
      paramPropertyInfo.value = ((PropertyInfo)localObject).value;
      paramPropertyInfo.multiRef = ((PropertyInfo)localObject).multiRef;
      return;
    }
    paramPropertyInfo.name = null;
    paramPropertyInfo.namespace = null;
    paramPropertyInfo.flags = 0;
    paramPropertyInfo.type = null;
    paramPropertyInfo.elementType = null;
    paramPropertyInfo.value = localObject;
    paramPropertyInfo.multiRef = false;
  }
  
  public Object getPropertySafely(String paramString)
  {
    paramString = propertyIndex(paramString);
    if (paramString != null) {
      return getProperty(paramString.intValue());
    }
    return new NullSoapObject();
  }
  
  public Object getPropertySafely(String paramString, Object paramObject)
  {
    paramString = propertyIndex(paramString);
    if (paramString != null) {
      paramObject = getProperty(paramString.intValue());
    }
    return paramObject;
  }
  
  public String getPropertySafelyAsString(String paramString)
  {
    paramString = propertyIndex(paramString);
    if (paramString != null)
    {
      paramString = getProperty(paramString.intValue());
      if (paramString == null) {
        return "";
      }
      return paramString.toString();
    }
    return "";
  }
  
  public String getPropertySafelyAsString(String paramString, Object paramObject)
  {
    paramString = propertyIndex(paramString);
    if (paramString != null)
    {
      paramString = getProperty(paramString.intValue());
      if (paramString != null) {
        return paramString.toString();
      }
      return "";
    }
    if (paramObject != null) {
      return paramObject.toString();
    }
    return "";
  }
  
  public boolean hasProperty(String paramString)
  {
    return propertyIndex(paramString) != null;
  }
  
  public boolean isPropertyEqual(Object paramObject, int paramInt)
  {
    if (paramInt >= getPropertyCount()) {}
    Object localObject;
    do
    {
      do
      {
        return false;
        localObject = this.properties.elementAt(paramInt);
        if ((!(paramObject instanceof PropertyInfo)) || (!(localObject instanceof PropertyInfo))) {
          break;
        }
        paramObject = (PropertyInfo)paramObject;
        localObject = (PropertyInfo)localObject;
      } while ((!((PropertyInfo)paramObject).getName().equals(((PropertyInfo)localObject).getName())) || (!((PropertyInfo)paramObject).getValue().equals(((PropertyInfo)localObject).getValue())));
      return true;
    } while ((!(paramObject instanceof SoapObject)) || (!(localObject instanceof SoapObject)));
    return ((SoapObject)paramObject).equals((SoapObject)localObject);
  }
  
  public SoapObject newInstance()
  {
    SoapObject localSoapObject = new SoapObject(this.namespace, this.name);
    int i = 0;
    Object localObject;
    if (i < this.properties.size())
    {
      localObject = this.properties.elementAt(i);
      if ((localObject instanceof PropertyInfo)) {
        localSoapObject.addProperty((PropertyInfo)((PropertyInfo)this.properties.elementAt(i)).clone());
      }
      for (;;)
      {
        i += 1;
        break;
        if ((localObject instanceof SoapObject)) {
          localSoapObject.addSoapObject(((SoapObject)localObject).newInstance());
        }
      }
    }
    i = 0;
    while (i < getAttributeCount())
    {
      localObject = new AttributeInfo();
      getAttributeInfo(i, (AttributeInfo)localObject);
      localSoapObject.addAttribute((AttributeInfo)localObject);
      i += 1;
    }
    return localSoapObject;
  }
  
  public void setProperty(int paramInt, Object paramObject)
  {
    Object localObject = this.properties.elementAt(paramInt);
    if ((localObject instanceof PropertyInfo)) {
      ((PropertyInfo)localObject).setValue(paramObject);
    }
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer("" + this.name + "{");
    int i = 0;
    if (i < getPropertyCount())
    {
      Object localObject = this.properties.elementAt(i);
      if ((localObject instanceof PropertyInfo)) {
        localStringBuffer.append("").append(((PropertyInfo)localObject).getName()).append("=").append(getProperty(i)).append("; ");
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuffer.append(((SoapObject)localObject).toString());
      }
    }
    localStringBuffer.append("}");
    return localStringBuffer.toString();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/serialization/SoapObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */