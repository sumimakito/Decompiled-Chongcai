package cn.apppark.mcd.util.imge;

import java.io.ByteArrayOutputStream;

public class MYBase64
{
  private static byte[] base64DecodeChars = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1 };
  private static final char[] base64EncodeChars = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  
  public static byte[] decode(String paramString)
  {
    paramString = paramString.getBytes();
    int k = paramString.length;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(k);
    int i = 0;
    if (i < k) {}
    for (int j = i;; j = i)
    {
      byte[] arrayOfByte = base64DecodeChars;
      i = j + 1;
      int n = arrayOfByte[paramString[j]];
      if ((i >= k) || (n != -1))
      {
        if (n != -1) {}
        for (j = i;; j = i)
        {
          arrayOfByte = base64DecodeChars;
          i = j + 1;
          int m = arrayOfByte[paramString[j]];
          if ((i >= k) || (m != -1))
          {
            if (m != -1) {
              localByteArrayOutputStream.write(n << 2 | (m & 0x30) >>> 4);
            }
            for (j = i;; j = i)
            {
              i = j + 1;
              j = paramString[j];
              if (j == 61) {
                return localByteArrayOutputStream.toByteArray();
              }
              n = base64DecodeChars[j];
              if ((i >= k) || (n != -1))
              {
                if (n != -1) {
                  localByteArrayOutputStream.write((m & 0xF) << 4 | (n & 0x3C) >>> 2);
                }
                for (j = i;; j = i)
                {
                  i = j + 1;
                  j = paramString[j];
                  if (j == 61) {
                    return localByteArrayOutputStream.toByteArray();
                  }
                  j = base64DecodeChars[j];
                  if ((i >= k) || (j != -1))
                  {
                    if (j != -1)
                    {
                      localByteArrayOutputStream.write(j | (n & 0x3) << 6);
                      break;
                    }
                    return localByteArrayOutputStream.toByteArray();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  public static String encode(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int j = paramArrayOfByte.length;
    int i = 0;
    for (;;)
    {
      int n;
      int k;
      if (i < j)
      {
        n = i + 1;
        k = paramArrayOfByte[i] & 0xFF;
        if (n != j) {
          break label80;
        }
        localStringBuffer.append(base64EncodeChars[(k >>> 2)]);
        localStringBuffer.append(base64EncodeChars[((k & 0x3) << 4)]);
        localStringBuffer.append("==");
      }
      for (;;)
      {
        return localStringBuffer.toString();
        label80:
        m = n + 1;
        n = paramArrayOfByte[n] & 0xFF;
        if (m != j) {
          break;
        }
        localStringBuffer.append(base64EncodeChars[(k >>> 2)]);
        localStringBuffer.append(base64EncodeChars[((k & 0x3) << 4 | (n & 0xF0) >>> 4)]);
        localStringBuffer.append(base64EncodeChars[((n & 0xF) << 2)]);
        localStringBuffer.append("=");
      }
      i = m + 1;
      int m = paramArrayOfByte[m] & 0xFF;
      localStringBuffer.append(base64EncodeChars[(k >>> 2)]);
      localStringBuffer.append(base64EncodeChars[((k & 0x3) << 4 | (n & 0xF0) >>> 4)]);
      localStringBuffer.append(base64EncodeChars[((n & 0xF) << 2 | (m & 0xC0) >>> 6)]);
      localStringBuffer.append(base64EncodeChars[(m & 0x3F)]);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/imge/MYBase64.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */