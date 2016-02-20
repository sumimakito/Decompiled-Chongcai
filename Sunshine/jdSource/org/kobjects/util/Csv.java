package org.kobjects.util;

import java.util.Vector;

public class Csv
{
  public static String[] decode(String paramString)
  {
    Vector localVector = new Vector();
    int i = 0;
    int k = paramString.length();
    while ((i < k) && (paramString.charAt(i) <= ' ')) {
      i += 1;
    }
    if (i >= k)
    {
      label46:
      paramString = new String[localVector.size()];
      i = 0;
      while (i < paramString.length)
      {
        paramString[i] = ((String)localVector.elementAt(i));
        i += 1;
      }
    }
    StringBuffer localStringBuffer;
    label105:
    int j;
    char c;
    if (paramString.charAt(i) == '"')
    {
      i += 1;
      localStringBuffer = new StringBuffer();
      j = i + 1;
      c = paramString.charAt(i);
      if ((c == '^') && (j < k))
      {
        i = j + 1;
        c = paramString.charAt(j);
        if (c == '^') {}
        for (;;)
        {
          localStringBuffer.append(c);
          break;
          c = (char)(c - '@');
        }
      }
      if (c != '"') {
        break label342;
      }
      if ((j == k) || (paramString.charAt(j) != '"'))
      {
        localVector.addElement(localStringBuffer.toString());
        while ((j < k) && (paramString.charAt(j) <= ' ')) {
          j += 1;
        }
      }
    }
    label342:
    for (i = j + 1;; i = j)
    {
      localStringBuffer.append(c);
      break label105;
      if (j >= k) {
        break label46;
      }
      if (paramString.charAt(j) != ',') {
        throw new RuntimeException("Comma expected at " + j + " line: " + paramString);
      }
      i = j + 1;
      break;
      j = paramString.indexOf(',', i);
      if (j == -1)
      {
        localVector.addElement(paramString.substring(i).trim());
        break label46;
      }
      localVector.addElement(paramString.substring(i, j).trim());
      i = j + 1;
      break;
      return paramString;
    }
  }
  
  public static String encode(String paramString, char paramChar)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < paramString.length())
    {
      char c = paramString.charAt(i);
      if ((c == paramChar) || (c == '^'))
      {
        localStringBuffer.append(c);
        localStringBuffer.append(c);
      }
      for (;;)
      {
        i += 1;
        break;
        if (c < ' ')
        {
          localStringBuffer.append('^');
          localStringBuffer.append((char)(c + '@'));
        }
        else
        {
          localStringBuffer.append(c);
        }
      }
    }
    return localStringBuffer.toString();
  }
  
  public static String encode(Object[] paramArrayOfObject)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < paramArrayOfObject.length)
    {
      if (i != 0) {
        localStringBuffer.append(',');
      }
      Object localObject = paramArrayOfObject[i];
      if (((localObject instanceof Number)) || ((localObject instanceof Boolean))) {
        localStringBuffer.append(localObject.toString());
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuffer.append('"');
        localStringBuffer.append(encode(localObject.toString(), '"'));
        localStringBuffer.append('"');
      }
    }
    return localStringBuffer.toString();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/util/Csv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */