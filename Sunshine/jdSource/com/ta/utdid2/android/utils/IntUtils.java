package com.ta.utdid2.android.utils;

public class IntUtils
{
  public static byte[] getBytes(int paramInt)
  {
    int i = (byte)(paramInt % 256);
    paramInt >>= 8;
    int j = (byte)(paramInt % 256);
    paramInt >>= 8;
    int k = (byte)(paramInt % 256);
    return new byte[] { (byte)((paramInt >> 8) % 256), k, j, i };
  }
  
  public static byte[] getBytes(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length == 4)
    {
      paramArrayOfByte[3] = ((byte)(paramInt % 256));
      paramInt >>= 8;
      paramArrayOfByte[2] = ((byte)(paramInt % 256));
      paramInt >>= 8;
      paramArrayOfByte[1] = ((byte)(paramInt % 256));
      paramArrayOfByte[0] = ((byte)((paramInt >> 8) % 256));
      return paramArrayOfByte;
    }
    return null;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/ta/utdid2/android/utils/IntUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */