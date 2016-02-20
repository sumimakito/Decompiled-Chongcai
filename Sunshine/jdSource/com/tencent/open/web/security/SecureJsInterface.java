package com.tencent.open.web.security;

import com.tencent.open.a.b;
import com.tencent.open.a.f;

public class SecureJsInterface
  extends a.b
{
  public static boolean isPWDEdit = false;
  private String a;
  
  public void clearAllEdit()
  {
    f.c("openSDK_LOG.SI", "-->clear all edit.");
    try
    {
      JniInterface.clearAllPWD();
      return;
    }
    catch (Exception localException)
    {
      f.e("openSDK_LOG.SI", "-->clear all edit exception: " + localException.getMessage());
      throw new RuntimeException(localException);
    }
  }
  
  public void curPosFromJS(String paramString)
  {
    f.b("openSDK_LOG.SI", "-->curPosFromJS: " + paramString);
    int i = -1;
    try
    {
      int j = Integer.parseInt(paramString);
      i = j;
    }
    catch (NumberFormatException paramString)
    {
      for (;;)
      {
        f.e("openSDK_LOG.SI", "-->curPosFromJS number format exception.");
      }
      if ((!a.c) && (!a.b)) {
        break label91;
      }
      if (!Boolean.valueOf(JniInterface.BackSpaceChar(a.b, i)).booleanValue()) {
        break label90;
      }
      a.b = false;
      label90:
      return;
      label91:
      this.a = a.a;
      JniInterface.insetTextToArray(i, this.a, this.a.length());
      f.b("openSDK_LOG.SI", "mKey: " + this.a);
    }
    if (i < 0) {
      throw new RuntimeException("position is illegal.");
    }
  }
  
  public boolean customCallback()
  {
    return true;
  }
  
  public String getMD5FromNative()
  {
    f.c("openSDK_LOG.SI", "-->get md5 form native");
    try
    {
      String str = JniInterface.getPWDKeyToMD5(null);
      f.b("openSDK_LOG.SI", "-->getMD5FromNative, MD5= " + str);
      return str;
    }
    catch (Exception localException)
    {
      f.e("openSDK_LOG.SI", "-->get md5 form native exception: " + localException.getMessage());
      throw new RuntimeException(localException);
    }
  }
  
  public void isPasswordEdit(String paramString)
  {
    f.c("openSDK_LOG.SI", "-->is pswd edit, flag: " + paramString);
    int i = -1;
    try
    {
      int j = Integer.parseInt(paramString);
      i = j;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        f.e("openSDK_LOG.SI", "-->is pswd edit exception: " + paramString.getMessage());
      }
      if (i != 0) {
        break label92;
      }
      isPWDEdit = false;
      label92:
      while (i != 1) {
        return;
      }
      isPWDEdit = true;
    }
    if ((i != 0) && (i != 1)) {
      throw new RuntimeException("is pswd edit flag is illegal.");
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/web/security/SecureJsInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */