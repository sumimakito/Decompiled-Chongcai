package org.ksoap2.serialization;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Vector;

public class PropertyInfo
  implements Serializable
{
  public static final Class BOOLEAN_CLASS;
  public static final Class INTEGER_CLASS;
  public static final Class LONG_CLASS;
  public static final int MULTI_REF = 2;
  public static final Class OBJECT_CLASS = new Object().getClass();
  public static final PropertyInfo OBJECT_TYPE = new PropertyInfo();
  public static final int REF_ONLY = 4;
  public static final Class STRING_CLASS = "".getClass();
  public static final int TRANSIENT = 1;
  public static final Class VECTOR_CLASS;
  public PropertyInfo elementType;
  public int flags;
  public boolean multiRef;
  public String name;
  public String namespace;
  public Object type = OBJECT_CLASS;
  protected Object value;
  
  static
  {
    INTEGER_CLASS = new Integer(0).getClass();
    LONG_CLASS = new Long(0L).getClass();
    BOOLEAN_CLASS = new Boolean(true).getClass();
    VECTOR_CLASS = new Vector().getClass();
  }
  
  public void clear()
  {
    this.type = OBJECT_CLASS;
    this.flags = 0;
    this.name = null;
    this.namespace = null;
  }
  
  public Object clone()
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      ObjectOutputStream localObjectOutputStream = new ObjectOutputStream((OutputStream)localObject);
      localObjectOutputStream.writeObject(this);
      localObjectOutputStream.flush();
      localObjectOutputStream.close();
      localObject = new ObjectInputStream(new ByteArrayInputStream(((ByteArrayOutputStream)localObject).toByteArray())).readObject();
      return localObject;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return null;
    }
    catch (NotSerializableException localNotSerializableException)
    {
      localNotSerializableException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  public PropertyInfo getElementType()
  {
    return this.elementType;
  }
  
  public int getFlags()
  {
    return this.flags;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getNamespace()
  {
    return this.namespace;
  }
  
  public Object getType()
  {
    return this.type;
  }
  
  public Object getValue()
  {
    return this.value;
  }
  
  public boolean isMultiRef()
  {
    return this.multiRef;
  }
  
  public void setElementType(PropertyInfo paramPropertyInfo)
  {
    this.elementType = paramPropertyInfo;
  }
  
  public void setFlags(int paramInt)
  {
    this.flags = paramInt;
  }
  
  public void setMultiRef(boolean paramBoolean)
  {
    this.multiRef = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNamespace(String paramString)
  {
    this.namespace = paramString;
  }
  
  public void setType(Object paramObject)
  {
    this.type = paramObject;
  }
  
  public void setValue(Object paramObject)
  {
    this.value = paramObject;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(this.name);
    localStringBuffer.append(" : ");
    if (this.value != null) {
      localStringBuffer.append(this.value);
    }
    for (;;)
    {
      return localStringBuffer.toString();
      localStringBuffer.append("(not set)");
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/serialization/PropertyInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */