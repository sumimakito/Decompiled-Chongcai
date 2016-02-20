package com.alipay.sdk.encrypt;

public final class Base64
{
  private static final int a = 128;
  private static final int b = 64;
  private static final int c = 24;
  private static final int d = 8;
  private static final int e = 16;
  private static final int f = 4;
  private static final int g = -128;
  private static final char h = '=';
  private static final byte[] i;
  private static final char[] j;
  
  static
  {
    int n = 0;
    i = new byte[''];
    j = new char[64];
    int k = 0;
    while (k < 128)
    {
      i[k] = -1;
      k += 1;
    }
    k = 90;
    while (k >= 65)
    {
      i[k] = ((byte)(k - 65));
      k -= 1;
    }
    k = 122;
    while (k >= 97)
    {
      i[k] = ((byte)(k - 97 + 26));
      k -= 1;
    }
    k = 57;
    while (k >= 48)
    {
      i[k] = ((byte)(k - 48 + 52));
      k -= 1;
    }
    i[43] = 62;
    i[47] = 63;
    k = 0;
    while (k <= 25)
    {
      j[k] = ((char)(k + 65));
      k += 1;
    }
    int m = 26;
    k = 0;
    while (m <= 51)
    {
      j[m] = ((char)(k + 97));
      m += 1;
      k += 1;
    }
    m = 52;
    k = n;
    while (m <= 61)
    {
      j[m] = ((char)(k + 48));
      m += 1;
      k += 1;
    }
    j[62] = '+';
    j[63] = '/';
  }
  
  private static int a(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null) {
      n = 0;
    }
    int i1;
    int m;
    int k;
    do
    {
      return n;
      i1 = paramArrayOfChar.length;
      m = 0;
      k = 0;
      n = k;
    } while (m >= i1);
    int n = paramArrayOfChar[m];
    if ((n == 32) || (n == 13) || (n == 10) || (n == 9))
    {
      n = 1;
      label54:
      if (n != 0) {
        break label82;
      }
      n = k + 1;
      paramArrayOfChar[k] = paramArrayOfChar[m];
      k = n;
    }
    label82:
    for (;;)
    {
      m += 1;
      break;
      n = 0;
      break label54;
    }
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    int n = 0;
    if (paramArrayOfByte == null) {
      return null;
    }
    int k = paramArrayOfByte.length * 8;
    if (k == 0) {
      return "";
    }
    int i4 = k % 24;
    int i3 = k / 24;
    char[] arrayOfChar;
    label54:
    int i5;
    int i6;
    int i7;
    int i8;
    if (i4 != 0)
    {
      k = i3 + 1;
      arrayOfChar = new char[k * 4];
      m = 0;
      k = 0;
      if (m >= i3) {
        break label274;
      }
      i1 = n + 1;
      n = paramArrayOfByte[n];
      i5 = i1 + 1;
      i1 = paramArrayOfByte[i1];
      i6 = paramArrayOfByte[i5];
      i7 = (byte)(i1 & 0xF);
      i8 = (byte)(n & 0x3);
      if ((n & 0xFFFFFF80) != 0) {
        break label233;
      }
      n = (byte)(n >> 2);
      label113:
      if ((i1 & 0xFFFFFF80) != 0) {
        break label245;
      }
      i1 = (byte)(i1 >> 4);
      label128:
      if ((i6 & 0xFFFFFF80) != 0) {
        break label259;
      }
    }
    label233:
    label245:
    label259:
    for (int i2 = (byte)(i6 >> 6);; i2 = (byte)(i6 >> 6 ^ 0xFC))
    {
      int i9 = k + 1;
      arrayOfChar[k] = j[n];
      k = i9 + 1;
      arrayOfChar[i9] = j[(i1 | i8 << 4)];
      n = k + 1;
      arrayOfChar[k] = j[(i2 | i7 << 2)];
      arrayOfChar[n] = j[(i6 & 0x3F)];
      m += 1;
      k = n + 1;
      n = i5 + 1;
      break label54;
      k = i3;
      break;
      n = (byte)(n >> 2 ^ 0xC0);
      break label113;
      i1 = (byte)(i1 >> 4 ^ 0xF0);
      break label128;
    }
    label274:
    if (i4 == 8)
    {
      m = paramArrayOfByte[n];
      n = (byte)(m & 0x3);
      if ((m & 0xFFFFFF80) == 0)
      {
        m = (byte)(m >> 2);
        i1 = k + 1;
        arrayOfChar[k] = j[m];
        k = i1 + 1;
        arrayOfChar[i1] = j[(n << 4)];
        arrayOfChar[k] = '=';
        arrayOfChar[(k + 1)] = '=';
      }
    }
    while (i4 != 16) {
      for (;;)
      {
        return new String(arrayOfChar);
        m = (byte)(m >> 2 ^ 0xC0);
      }
    }
    int m = paramArrayOfByte[n];
    n = paramArrayOfByte[(n + 1)];
    int i1 = (byte)(n & 0xF);
    i2 = (byte)(m & 0x3);
    if ((m & 0xFFFFFF80) == 0)
    {
      m = (byte)(m >> 2);
      label411:
      if ((n & 0xFFFFFF80) != 0) {
        break label492;
      }
    }
    label492:
    for (n = (byte)(n >> 4);; n = (byte)(n >> 4 ^ 0xF0))
    {
      i3 = k + 1;
      arrayOfChar[k] = j[m];
      k = i3 + 1;
      arrayOfChar[i3] = j[(n | i2 << 4)];
      arrayOfChar[k] = j[(i1 << 2)];
      arrayOfChar[(k + 1)] = '=';
      break;
      m = (byte)(m >> 2 ^ 0xC0);
      break label411;
    }
  }
  
  private static boolean a(char paramChar)
  {
    return (paramChar == ' ') || (paramChar == '\r') || (paramChar == '\n') || (paramChar == '\t');
  }
  
  public static byte[] a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject = paramString.toCharArray();
    int n;
    if (localObject == null) {
      n = 0;
    }
    int i1;
    int m;
    int k;
    for (;;)
    {
      if (n % 4 != 0)
      {
        return null;
        i1 = localObject.length;
        m = 0;
        k = 0;
        n = k;
        if (m < i1)
        {
          n = localObject[m];
          if ((n == 32) || (n == 13) || (n == 10) || (n == 9))
          {
            n = 1;
            label89:
            if (n != 0) {
              break label664;
            }
            n = k + 1;
            localObject[k] = localObject[m];
            k = n;
          }
        }
      }
    }
    label249:
    label664:
    for (;;)
    {
      m += 1;
      break;
      n = 0;
      break label89;
      i1 = n / 4;
      if (i1 == 0) {
        return new byte[0];
      }
      paramString = new byte[i1 * 3];
      n = 0;
      k = 0;
      m = 0;
      while (m < i1 - 1)
      {
        i2 = n + 1;
        c1 = localObject[n];
        char c3;
        char c4;
        if (c(c1))
        {
          n = i2 + 1;
          c2 = localObject[i2];
          if (c(c2))
          {
            i2 = n + 1;
            c3 = localObject[n];
            if (c(c3))
            {
              n = i2 + 1;
              c4 = localObject[i2];
              if (c(c4)) {
                break label249;
              }
            }
          }
        }
        return null;
        int i6 = i[c1];
        int i4 = i[c2];
        i2 = i[c3];
        i3 = i[c4];
        int i5 = k + 1;
        paramString[k] = ((byte)(i6 << 2 | i4 >> 4));
        i6 = i5 + 1;
        paramString[i5] = ((byte)((i4 & 0xF) << 4 | i2 >> 2 & 0xF));
        k = i6 + 1;
        paramString[i6] = ((byte)(i2 << 6 | i3));
        m += 1;
      }
      i1 = n + 1;
      char c1 = localObject[n];
      if (c(c1))
      {
        i2 = i1 + 1;
        c2 = localObject[i1];
        if (c(c2)) {}
      }
      else
      {
        return null;
      }
      n = i[c1];
      i1 = i[c2];
      c1 = localObject[i2];
      char c2 = localObject[(i2 + 1)];
      if ((!c(c1)) || (!c(c2)))
      {
        if ((b(c1)) && (b(c2)))
        {
          if ((i1 & 0xF) != 0) {
            return null;
          }
          localObject = new byte[m * 3 + 1];
          System.arraycopy(paramString, 0, localObject, 0, m * 3);
          localObject[k] = ((byte)(n << 2 | i1 >> 4));
          return (byte[])localObject;
        }
        if ((!b(c1)) && (b(c2)))
        {
          i2 = i[c1];
          if ((i2 & 0x3) != 0) {
            return null;
          }
          localObject = new byte[m * 3 + 2];
          System.arraycopy(paramString, 0, localObject, 0, m * 3);
          localObject[k] = ((byte)(n << 2 | i1 >> 4));
          localObject[(k + 1)] = ((byte)((i1 & 0xF) << 4 | i2 >> 2 & 0xF));
          return (byte[])localObject;
        }
        return null;
      }
      m = i[c1];
      int i2 = i[c2];
      int i3 = k + 1;
      paramString[k] = ((byte)(n << 2 | i1 >> 4));
      paramString[i3] = ((byte)((i1 & 0xF) << 4 | m >> 2 & 0xF));
      paramString[(i3 + 1)] = ((byte)(i2 | m << 6));
      return paramString;
    }
  }
  
  private static boolean b(char paramChar)
  {
    return paramChar == '=';
  }
  
  private static boolean c(char paramChar)
  {
    return (paramChar < '') && (i[paramChar] != -1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/encrypt/Base64.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */