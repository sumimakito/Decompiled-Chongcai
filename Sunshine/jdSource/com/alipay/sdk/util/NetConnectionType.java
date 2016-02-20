package com.alipay.sdk.util;

public enum NetConnectionType
{
  private int p;
  private String q;
  
  private NetConnectionType(int paramInt1, String paramString1)
  {
    this.p = paramInt1;
    this.q = paramString1;
  }
  
  public static NetConnectionType a(int paramInt)
  {
    NetConnectionType[] arrayOfNetConnectionType = values();
    int i2 = arrayOfNetConnectionType.length;
    int i1 = 0;
    while (i1 < i2)
    {
      NetConnectionType localNetConnectionType = arrayOfNetConnectionType[i1];
      if (localNetConnectionType.p == paramInt) {
        return localNetConnectionType;
      }
      i1 += 1;
    }
    return o;
  }
  
  private void a(String paramString)
  {
    this.q = paramString;
  }
  
  private int b()
  {
    return this.p;
  }
  
  public final String a()
  {
    return this.q;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/util/NetConnectionType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */