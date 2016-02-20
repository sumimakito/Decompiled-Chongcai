package com.alipay.sdk.encrypt;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5
{
  private static String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      paramString = b(localMessageDigest.digest());
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = b(localMessageDigest.digest());
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return "";
  }
  
  private static String b(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length * 2);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      localStringBuffer.append(Character.forDigit((paramArrayOfByte[i] & 0xF0) >> 4, 16));
      localStringBuffer.append(Character.forDigit(paramArrayOfByte[i] & 0xF, 16));
      i += 1;
    }
    return localStringBuffer.toString();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/encrypt/MD5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */