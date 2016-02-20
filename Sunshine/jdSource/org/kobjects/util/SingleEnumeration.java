package org.kobjects.util;

import java.util.Enumeration;

public class SingleEnumeration
  implements Enumeration
{
  Object object;
  
  public SingleEnumeration(Object paramObject)
  {
    this.object = paramObject;
  }
  
  public boolean hasMoreElements()
  {
    return this.object != null;
  }
  
  public Object nextElement()
  {
    Object localObject = this.object;
    this.object = null;
    return localObject;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/util/SingleEnumeration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */