package com.tencent.open.web.security;

public class JniInterface
{
  public static native boolean BackSpaceChar(boolean paramBoolean, int paramInt);
  
  public static native boolean clearAllPWD();
  
  public static native String getPWDKeyToMD5(String paramString);
  
  public static native boolean insetTextToArray(int paramInt1, String paramString, int paramInt2);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/web/security/JniInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */