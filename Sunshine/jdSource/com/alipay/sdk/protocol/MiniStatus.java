package com.alipay.sdk.protocol;

public enum MiniStatus
{
  private String e;
  
  private MiniStatus(String paramString1)
  {
    this.e = paramString1;
  }
  
  public static MiniStatus a(String paramString)
  {
    Object localObject = null;
    MiniStatus[] arrayOfMiniStatus = values();
    int j = arrayOfMiniStatus.length;
    int i = 0;
    if (i < j)
    {
      MiniStatus localMiniStatus = arrayOfMiniStatus[i];
      if (!paramString.startsWith(localMiniStatus.e)) {
        break label48;
      }
      localObject = localMiniStatus;
    }
    label48:
    for (;;)
    {
      i += 1;
      break;
      return (MiniStatus)localObject;
    }
  }
  
  private String a()
  {
    return this.e;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/protocol/MiniStatus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */