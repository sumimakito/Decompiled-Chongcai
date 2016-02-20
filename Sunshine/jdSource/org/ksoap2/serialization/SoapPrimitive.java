package org.ksoap2.serialization;

public class SoapPrimitive
  extends AttributeContainer
{
  String name;
  String namespace;
  String value;
  
  public SoapPrimitive(String paramString1, String paramString2, String paramString3)
  {
    this.namespace = paramString1;
    this.name = paramString2;
    this.value = paramString3;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (!(paramObject instanceof SoapPrimitive)) {
      return false;
    }
    paramObject = (SoapPrimitive)paramObject;
    label58:
    int i;
    if (this.name.equals(((SoapPrimitive)paramObject).name)) {
      if (this.namespace == null)
      {
        if (((SoapPrimitive)paramObject).namespace != null) {
          break label88;
        }
        if (this.value != null) {
          break label93;
        }
        if (((SoapPrimitive)paramObject).value != null) {
          break label88;
        }
        i = 1;
        if ((i == 0) || (!attributesAreEqual((AttributeContainer)paramObject))) {
          break label110;
        }
      }
    }
    for (;;)
    {
      return bool;
      if (this.namespace.equals(((SoapPrimitive)paramObject).namespace)) {
        break;
      }
      label88:
      label93:
      do
      {
        i = 0;
        break;
      } while (!this.value.equals(((SoapPrimitive)paramObject).value));
      break label58;
      label110:
      bool = false;
    }
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getNamespace()
  {
    return this.namespace;
  }
  
  public int hashCode()
  {
    int j = this.name.hashCode();
    if (this.namespace == null) {}
    for (int i = 0;; i = this.namespace.hashCode()) {
      return i ^ j;
    }
  }
  
  public String toString()
  {
    return this.value;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/serialization/SoapPrimitive.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */