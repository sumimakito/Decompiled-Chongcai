package org.kobjects.util;

public class Strings
{
  public static String beautify(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString.length() > 0)
    {
      localStringBuffer.append(Character.toUpperCase(paramString.charAt(0)));
      int i = 1;
      while (i < paramString.length() - 1)
      {
        char c = paramString.charAt(i);
        if ((Character.isUpperCase(c)) && (Character.isLowerCase(paramString.charAt(i - 1))) && (Character.isLowerCase(paramString.charAt(i + 1)))) {
          localStringBuffer.append(" ");
        }
        localStringBuffer.append(c);
        i += 1;
      }
      if (paramString.length() > 1) {
        localStringBuffer.append(paramString.charAt(paramString.length() - 1));
      }
    }
    return localStringBuffer.toString();
  }
  
  public static String fill(String paramString, int paramInt, char paramChar)
  {
    if (paramInt < 0) {}
    for (int i = 1;; i = 0)
    {
      paramInt = Math.abs(paramInt);
      if (paramString.length() < paramInt) {
        break;
      }
      return paramString;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    paramInt -= paramString.length();
    while (paramInt > 0)
    {
      localStringBuffer.append(paramChar);
      paramInt -= 1;
    }
    if (i != 0)
    {
      localStringBuffer.append(paramString);
      return localStringBuffer.toString();
    }
    return paramString + localStringBuffer.toString();
  }
  
  public static String lTrim(String paramString1, String paramString2)
  {
    int i = 0;
    int j = paramString1.length();
    if (i < j) {
      if (paramString2 == null)
      {
        if (paramString1.charAt(i) > ' ') {}
      }
      else {
        while (paramString2.indexOf(paramString1.charAt(i)) != -1)
        {
          i += 1;
          break;
        }
      }
    }
    if (i == 0) {
      return paramString1;
    }
    return paramString1.substring(i);
  }
  
  public static String rTrim(String paramString1, String paramString2)
  {
    int i = paramString1.length() - 1;
    if (i >= 0) {
      if (paramString2 == null)
      {
        if (paramString1.charAt(i) > ' ') {}
      }
      else {
        while (paramString2.indexOf(paramString1.charAt(i)) != -1)
        {
          i -= 1;
          break;
        }
      }
    }
    if (i == paramString1.length() - 1) {
      return paramString1;
    }
    return paramString1.substring(0, i + 1);
  }
  
  public static String replace(String paramString1, String paramString2, String paramString3)
  {
    int i = paramString1.indexOf(paramString2);
    if (i == -1) {
      return paramString1;
    }
    StringBuffer localStringBuffer = new StringBuffer(paramString1.substring(0, i));
    for (;;)
    {
      localStringBuffer.append(paramString3);
      int j = i + paramString2.length();
      i = paramString1.indexOf(paramString2, j);
      if (i == -1)
      {
        localStringBuffer.append(paramString1.substring(j));
        return localStringBuffer.toString();
      }
      localStringBuffer.append(paramString1.substring(j, i));
    }
  }
  
  public static String toAscii(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < paramString.length())
    {
      char c = paramString.charAt(i);
      if (c <= ' ') {
        localStringBuffer.append(' ');
      }
      for (;;)
      {
        i += 1;
        break;
        if (c < '') {
          localStringBuffer.append(c);
        } else {
          switch (c)
          {
          default: 
            localStringBuffer.append('?');
            break;
          case 'Ä': 
            localStringBuffer.append("Ae");
            break;
          case 'ä': 
            localStringBuffer.append("ae");
            break;
          case 'Ö': 
            localStringBuffer.append("Oe");
            break;
          case 'ö': 
            localStringBuffer.append("oe");
            break;
          case 'Ü': 
            localStringBuffer.append("Ue");
            break;
          case 'ü': 
            localStringBuffer.append("ue");
            break;
          case 'ß': 
            localStringBuffer.append("ss");
          }
        }
      }
    }
    return localStringBuffer.toString();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/util/Strings.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */