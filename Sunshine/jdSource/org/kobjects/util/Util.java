package org.kobjects.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class Util
{
  public static String buildUrl(String paramString1, String paramString2)
  {
    int i = paramString2.indexOf(':');
    String str;
    if ((paramString2.startsWith("/")) || (i == 1)) {
      str = "file:///" + paramString2;
    }
    do
    {
      return str;
      if (i <= 2) {
        break;
      }
      str = paramString2;
    } while (i < 6);
    if (paramString1 == null) {
      paramString1 = "file:///";
    }
    for (;;)
    {
      return paramString1 + paramString2;
      str = paramString1;
      if (paramString1.indexOf(':') == -1) {
        str = "file:///" + paramString1;
      }
      paramString1 = str;
      if (!str.endsWith("/")) {
        paramString1 = str + "/";
      }
    }
  }
  
  public static int indexOf(Object[] paramArrayOfObject, Object paramObject)
  {
    int i = 0;
    while (i < paramArrayOfObject.length)
    {
      if (paramArrayOfObject[i].equals(paramObject)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public static void sort(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    if (paramInt2 - paramInt1 <= 2)
    {
      if ((paramInt2 - paramInt1 == 2) && (paramArrayOfObject[paramInt1].toString().compareTo(paramArrayOfObject[(paramInt1 + 1)].toString()) > 0))
      {
        localObject = paramArrayOfObject[paramInt1];
        paramArrayOfObject[paramInt1] = paramArrayOfObject[(paramInt1 + 1)];
        paramArrayOfObject[(paramInt1 + 1)] = localObject;
      }
      return;
    }
    if (paramInt2 - paramInt1 == 3)
    {
      sort(paramArrayOfObject, paramInt1, paramInt1 + 2);
      sort(paramArrayOfObject, paramInt1 + 1, paramInt1 + 3);
      sort(paramArrayOfObject, paramInt1, paramInt1 + 2);
      return;
    }
    int m = (paramInt1 + paramInt2) / 2;
    sort(paramArrayOfObject, paramInt1, m);
    sort(paramArrayOfObject, m, paramInt2);
    Object localObject = new Object[paramInt2 - paramInt1];
    int k = paramInt1;
    int i = m;
    int j = 0;
    if (j < localObject.length)
    {
      if (k == m)
      {
        localObject[j] = paramArrayOfObject[i];
        i += 1;
      }
      for (;;)
      {
        j += 1;
        break;
        if ((i == paramInt2) || (paramArrayOfObject[k].toString().compareTo(paramArrayOfObject[i].toString()) < 0))
        {
          localObject[j] = paramArrayOfObject[k];
          k += 1;
        }
        else
        {
          localObject[j] = paramArrayOfObject[i];
          i += 1;
        }
      }
    }
    System.arraycopy(localObject, 0, paramArrayOfObject, paramInt1, localObject.length);
  }
  
  public static OutputStream streamcopy(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    int i;
    byte[] arrayOfByte;
    if (Runtime.getRuntime().freeMemory() >= 1048576L)
    {
      i = 16384;
      arrayOfByte = new byte[i];
    }
    for (;;)
    {
      i = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
      if (i == -1)
      {
        paramInputStream.close();
        return paramOutputStream;
        i = 128;
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/util/Util.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */