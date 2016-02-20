package org.kobjects.pim;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public abstract class PimItem
{
  public static final int TYPE_STRING = 0;
  public static final int TYPE_STRING_ARRAY = 1;
  Hashtable fields = new Hashtable();
  
  public PimItem() {}
  
  public PimItem(PimItem paramPimItem)
  {
    paramPimItem = paramPimItem.fields();
    while (paramPimItem.hasMoreElements()) {
      addField(new PimField((PimField)paramPimItem.nextElement()));
    }
  }
  
  public void addField(PimField paramPimField)
  {
    Vector localVector2 = (Vector)this.fields.get(paramPimField.name);
    Vector localVector1 = localVector2;
    if (localVector2 == null)
    {
      localVector1 = new Vector();
      this.fields.put(paramPimField.name, localVector1);
    }
    localVector1.addElement(paramPimField);
  }
  
  public Enumeration fieldNames()
  {
    return this.fields.keys();
  }
  
  public Enumeration fields()
  {
    Vector localVector = new Vector();
    Enumeration localEnumeration1 = fieldNames();
    while (localEnumeration1.hasMoreElements())
    {
      Enumeration localEnumeration2 = fields((String)localEnumeration1.nextElement());
      while (localEnumeration2.hasMoreElements()) {
        localVector.addElement(localEnumeration2.nextElement());
      }
    }
    return localVector.elements();
  }
  
  public Enumeration fields(String paramString)
  {
    Vector localVector = (Vector)this.fields.get(paramString);
    paramString = localVector;
    if (localVector == null) {
      paramString = new Vector();
    }
    return paramString.elements();
  }
  
  public abstract int getArraySize(String paramString);
  
  public PimField getField(String paramString, int paramInt)
  {
    return (PimField)((Vector)this.fields.get(paramString)).elementAt(paramInt);
  }
  
  public int getFieldCount(String paramString)
  {
    paramString = (Vector)this.fields.get(paramString);
    if (paramString == null) {
      return 0;
    }
    return paramString.size();
  }
  
  public int getType(String paramString)
  {
    if (getArraySize(paramString) == -1) {
      return 0;
    }
    return 1;
  }
  
  public abstract String getType();
  
  public void removeField(String paramString, int paramInt)
  {
    ((Vector)this.fields.get(paramString)).removeElementAt(paramInt);
  }
  
  public String toString()
  {
    return getType() + ":" + this.fields.toString();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/pim/PimItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */