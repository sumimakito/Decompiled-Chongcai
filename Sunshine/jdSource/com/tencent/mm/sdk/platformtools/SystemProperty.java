package com.tencent.mm.sdk.platformtools;

import java.util.HashMap;

public final class SystemProperty
{
  private static final HashMap<String, String> bf = new HashMap();
  
  public static String getProperty(String paramString)
  {
    return (String)bf.get(paramString);
  }
  
  public static void setProperty(String paramString1, String paramString2)
  {
    bf.put(paramString1, paramString2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/SystemProperty.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */