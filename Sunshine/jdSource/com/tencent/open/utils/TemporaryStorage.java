package com.tencent.open.utils;

import java.util.HashMap;

public class TemporaryStorage
{
  private static HashMap<String, Object> a = new HashMap();
  
  public static Object get(String paramString)
  {
    return a.remove(paramString);
  }
  
  public static void remove(String paramString)
  {
    a.remove(paramString);
  }
  
  public static Object set(String paramString, Object paramObject)
  {
    return a.put(paramString, paramObject);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/TemporaryStorage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */