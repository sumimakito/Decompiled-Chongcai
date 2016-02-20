package com.ta.utdid2.core.persistent;

import android.util.Xml;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

class XmlUtils
{
  public static final void beginDocument(XmlPullParser paramXmlPullParser, String paramString)
    throws XmlPullParserException, IOException
  {
    int i;
    do
    {
      i = paramXmlPullParser.next();
    } while ((i != 2) && (i != 1));
    if (i != 2) {
      throw new XmlPullParserException("No start tag found");
    }
    if (!paramXmlPullParser.getName().equals(paramString)) {
      throw new XmlPullParserException("Unexpected start tag: found " + paramXmlPullParser.getName() + ", expected " + paramString);
    }
  }
  
  public static final boolean convertValueToBoolean(CharSequence paramCharSequence, boolean paramBoolean)
  {
    boolean bool = false;
    if (paramCharSequence == null) {
      return paramBoolean;
    }
    if ((!paramCharSequence.equals("1")) && (!paramCharSequence.equals("true")))
    {
      paramBoolean = bool;
      if (!paramCharSequence.equals("TRUE")) {}
    }
    else
    {
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  public static final int convertValueToInt(CharSequence paramCharSequence, int paramInt)
  {
    if (paramCharSequence == null) {
      return paramInt;
    }
    paramCharSequence = paramCharSequence.toString();
    int k = 1;
    int j = 0;
    int i = paramCharSequence.length();
    paramInt = 10;
    if ('-' == paramCharSequence.charAt(0))
    {
      k = -1;
      j = 0 + 1;
    }
    if ('0' == paramCharSequence.charAt(j))
    {
      if (j == i - 1) {
        return 0;
      }
      paramInt = paramCharSequence.charAt(j + 1);
      if ((120 == paramInt) || (88 == paramInt))
      {
        i = j + 2;
        paramInt = 16;
      }
    }
    for (;;)
    {
      return Integer.parseInt(paramCharSequence.substring(i), paramInt) * k;
      i = j + 1;
      paramInt = 8;
      continue;
      i = j;
      if ('#' == paramCharSequence.charAt(j))
      {
        i = j + 1;
        paramInt = 16;
      }
    }
  }
  
  public static final int convertValueToList(CharSequence paramCharSequence, String[] paramArrayOfString, int paramInt)
  {
    if (paramCharSequence != null)
    {
      int i = 0;
      while (i < paramArrayOfString.length)
      {
        if (paramCharSequence.equals(paramArrayOfString[i])) {
          return i;
        }
        i += 1;
      }
    }
    return paramInt;
  }
  
  public static final int convertValueToUnsignedInt(String paramString, int paramInt)
  {
    if (paramString == null) {
      return paramInt;
    }
    return parseUnsignedIntAttribute(paramString);
  }
  
  public static final void nextElement(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    int i;
    do
    {
      i = paramXmlPullParser.next();
    } while ((i != 2) && (i != 1));
  }
  
  public static final int parseUnsignedIntAttribute(CharSequence paramCharSequence)
  {
    paramCharSequence = paramCharSequence.toString();
    int j = 0;
    int k = paramCharSequence.length();
    int i = 10;
    if ('0' == paramCharSequence.charAt(0))
    {
      if (k - 1 == 0) {
        return 0;
      }
      i = paramCharSequence.charAt(1);
      if ((120 == i) || (88 == i))
      {
        j = 0 + 2;
        i = 16;
      }
    }
    for (;;)
    {
      return (int)Long.parseLong(paramCharSequence.substring(j), i);
      j = 0 + 1;
      i = 8;
      continue;
      if ('#' == paramCharSequence.charAt(0))
      {
        j = 0 + 1;
        i = 16;
      }
    }
  }
  
  public static final ArrayList readListXml(InputStream paramInputStream)
    throws XmlPullParserException, IOException
  {
    XmlPullParser localXmlPullParser = Xml.newPullParser();
    localXmlPullParser.setInput(paramInputStream, null);
    return (ArrayList)readValueXml(localXmlPullParser, new String[1]);
  }
  
  public static final HashMap readMapXml(InputStream paramInputStream)
    throws XmlPullParserException, IOException
  {
    XmlPullParser localXmlPullParser = Xml.newPullParser();
    localXmlPullParser.setInput(paramInputStream, null);
    return (HashMap)readValueXml(localXmlPullParser, new String[1]);
  }
  
  public static final int[] readThisIntArrayXml(XmlPullParser paramXmlPullParser, String paramString, String[] paramArrayOfString)
    throws XmlPullParserException, IOException
  {
    int i;
    int j;
    try
    {
      i = Integer.parseInt(paramXmlPullParser.getAttributeValue(null, "num"));
      paramArrayOfString = new int[i];
      i = 0;
      j = paramXmlPullParser.getEventType();
    }
    catch (NullPointerException paramXmlPullParser)
    {
      try
      {
        do
        {
          paramArrayOfString[i] = Integer.parseInt(paramXmlPullParser.getAttributeValue(null, "value"));
          k = i;
          m = paramXmlPullParser.next();
          j = m;
          i = k;
        } while (m != 1);
        throw new XmlPullParserException("Document ended before " + paramString + " end tag");
      }
      catch (NullPointerException paramXmlPullParser)
      {
        throw new XmlPullParserException("Need value attribute in item");
      }
      catch (NumberFormatException paramXmlPullParser)
      {
        throw new XmlPullParserException("Not a number in value attribute in item");
      }
      paramXmlPullParser = paramXmlPullParser;
      throw new XmlPullParserException("Need num attribute in byte-array");
    }
    catch (NumberFormatException paramXmlPullParser)
    {
      throw new XmlPullParserException("Not a number in num attribute in byte-array");
    }
    if (j == 2) {
      if (!paramXmlPullParser.getName().equals("item")) {}
    }
    for (;;)
    {
      int m;
      throw new XmlPullParserException("Expected item tag at: " + paramXmlPullParser.getName());
      int k = i;
      if (j == 3)
      {
        if (paramXmlPullParser.getName().equals(paramString)) {
          return paramArrayOfString;
        }
        if (!paramXmlPullParser.getName().equals("item")) {
          break;
        }
        k = i + 1;
      }
    }
    throw new XmlPullParserException("Expected " + paramString + " end tag at: " + paramXmlPullParser.getName());
  }
  
  public static final ArrayList readThisListXml(XmlPullParser paramXmlPullParser, String paramString, String[] paramArrayOfString)
    throws XmlPullParserException, IOException
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramXmlPullParser.getEventType();
    if (i == 2) {
      localArrayList.add(readThisValueXml(paramXmlPullParser, paramArrayOfString));
    }
    while (i != 3)
    {
      int j = paramXmlPullParser.next();
      i = j;
      if (j != 1) {
        break;
      }
      throw new XmlPullParserException("Document ended before " + paramString + " end tag");
    }
    if (paramXmlPullParser.getName().equals(paramString)) {
      return localArrayList;
    }
    throw new XmlPullParserException("Expected " + paramString + " end tag at: " + paramXmlPullParser.getName());
  }
  
  public static final HashMap readThisMapXml(XmlPullParser paramXmlPullParser, String paramString, String[] paramArrayOfString)
    throws XmlPullParserException, IOException
  {
    HashMap localHashMap = new HashMap();
    int i = paramXmlPullParser.getEventType();
    if (i == 2)
    {
      localObject = readThisValueXml(paramXmlPullParser, paramArrayOfString);
      if (paramArrayOfString[0] != null) {
        localHashMap.put(paramArrayOfString[0], localObject);
      }
    }
    while (i != 3)
    {
      Object localObject;
      int j = paramXmlPullParser.next();
      i = j;
      if (j != 1) {
        break;
      }
      throw new XmlPullParserException("Document ended before " + paramString + " end tag");
      throw new XmlPullParserException("Map value without name attribute: " + paramXmlPullParser.getName());
    }
    if (paramXmlPullParser.getName().equals(paramString)) {
      return localHashMap;
    }
    throw new XmlPullParserException("Expected " + paramString + " end tag at: " + paramXmlPullParser.getName());
  }
  
  private static final Object readThisValueXml(XmlPullParser paramXmlPullParser, String[] paramArrayOfString)
    throws XmlPullParserException, IOException
  {
    String str1 = paramXmlPullParser.getAttributeValue(null, "name");
    String str2 = paramXmlPullParser.getName();
    Object localObject;
    if (str2.equals("null")) {
      localObject = null;
    }
    int i;
    label221:
    label496:
    label538:
    do
    {
      for (;;)
      {
        i = paramXmlPullParser.next();
        if (i == 1) {
          break label632;
        }
        if (i != 3) {
          break label538;
        }
        if (!paramXmlPullParser.getName().equals(str2)) {
          break label496;
        }
        paramArrayOfString[0] = str1;
        return localObject;
        if (str2.equals("string"))
        {
          localObject = "";
          do
          {
            for (;;)
            {
              i = paramXmlPullParser.next();
              if (i == 1) {
                break label221;
              }
              if (i == 3)
              {
                if (paramXmlPullParser.getName().equals("string"))
                {
                  paramArrayOfString[0] = str1;
                  return localObject;
                }
                throw new XmlPullParserException("Unexpected end tag in <string>: " + paramXmlPullParser.getName());
              }
              if (i != 4) {
                break;
              }
              localObject = (String)localObject + paramXmlPullParser.getText();
            }
          } while (i != 2);
          throw new XmlPullParserException("Unexpected start tag in <string>: " + paramXmlPullParser.getName());
          throw new XmlPullParserException("Unexpected end of document in <string>");
        }
        if (str2.equals("int"))
        {
          localObject = Integer.valueOf(Integer.parseInt(paramXmlPullParser.getAttributeValue(null, "value")));
        }
        else if (str2.equals("long"))
        {
          localObject = Long.valueOf(paramXmlPullParser.getAttributeValue(null, "value"));
        }
        else if (str2.equals("float"))
        {
          localObject = new Float(paramXmlPullParser.getAttributeValue(null, "value"));
        }
        else if (str2.equals("double"))
        {
          localObject = new Double(paramXmlPullParser.getAttributeValue(null, "value"));
        }
        else
        {
          if (!str2.equals("boolean")) {
            break;
          }
          localObject = Boolean.valueOf(paramXmlPullParser.getAttributeValue(null, "value"));
        }
      }
      if (str2.equals("int-array"))
      {
        paramXmlPullParser.next();
        paramXmlPullParser = readThisIntArrayXml(paramXmlPullParser, "int-array", paramArrayOfString);
        paramArrayOfString[0] = str1;
        return paramXmlPullParser;
      }
      if (str2.equals("map"))
      {
        paramXmlPullParser.next();
        paramXmlPullParser = readThisMapXml(paramXmlPullParser, "map", paramArrayOfString);
        paramArrayOfString[0] = str1;
        return paramXmlPullParser;
      }
      if (str2.equals("list"))
      {
        paramXmlPullParser.next();
        paramXmlPullParser = readThisListXml(paramXmlPullParser, "list", paramArrayOfString);
        paramArrayOfString[0] = str1;
        return paramXmlPullParser;
      }
      throw new XmlPullParserException("Unknown tag: " + str2);
      throw new XmlPullParserException("Unexpected end tag in <" + str2 + ">: " + paramXmlPullParser.getName());
      if (i == 4) {
        throw new XmlPullParserException("Unexpected text in <" + str2 + ">: " + paramXmlPullParser.getName());
      }
    } while (i != 2);
    throw new XmlPullParserException("Unexpected start tag in <" + str2 + ">: " + paramXmlPullParser.getName());
    label632:
    throw new XmlPullParserException("Unexpected end of document in <" + str2 + ">");
  }
  
  public static final Object readValueXml(XmlPullParser paramXmlPullParser, String[] paramArrayOfString)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getEventType();
    for (;;)
    {
      if (i == 2) {
        return readThisValueXml(paramXmlPullParser, paramArrayOfString);
      }
      if (i == 3) {
        throw new XmlPullParserException("Unexpected end tag at: " + paramXmlPullParser.getName());
      }
      if (i == 4) {
        throw new XmlPullParserException("Unexpected text: " + paramXmlPullParser.getText());
      }
      try
      {
        int j = paramXmlPullParser.next();
        i = j;
        if (j != 1) {
          continue;
        }
        throw new XmlPullParserException("Unexpected end of document");
      }
      catch (Exception paramArrayOfString)
      {
        throw new XmlPullParserException("Unexpected call next(): " + paramXmlPullParser.getName());
      }
    }
  }
  
  public static void skipCurrentTag(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth();
    int j;
    do
    {
      j = paramXmlPullParser.next();
    } while ((j != 1) && ((j != 3) || (paramXmlPullParser.getDepth() > i)));
  }
  
  public static final void writeByteArrayXml(byte[] paramArrayOfByte, String paramString, XmlSerializer paramXmlSerializer)
    throws XmlPullParserException, IOException
  {
    if (paramArrayOfByte == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramXmlSerializer.startTag(null, "byte-array");
    if (paramString != null) {
      paramXmlSerializer.attribute(null, "name", paramString);
    }
    int k = paramArrayOfByte.length;
    paramXmlSerializer.attribute(null, "num", Integer.toString(k));
    paramString = new StringBuilder(paramArrayOfByte.length * 2);
    int i = 0;
    if (i < k)
    {
      int m = paramArrayOfByte[i];
      int j = m >> 4;
      if (j >= 10)
      {
        j = j + 97 - 10;
        label118:
        paramString.append(j);
        j = m & 0xFF;
        if (j < 10) {
          break label174;
        }
        j = j + 97 - 10;
      }
      for (;;)
      {
        paramString.append(j);
        i += 1;
        break;
        j += 48;
        break label118;
        label174:
        j += 48;
      }
    }
    paramXmlSerializer.text(paramString.toString());
    paramXmlSerializer.endTag(null, "byte-array");
  }
  
  public static final void writeIntArrayXml(int[] paramArrayOfInt, String paramString, XmlSerializer paramXmlSerializer)
    throws XmlPullParserException, IOException
  {
    if (paramArrayOfInt == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramXmlSerializer.startTag(null, "int-array");
    if (paramString != null) {
      paramXmlSerializer.attribute(null, "name", paramString);
    }
    int j = paramArrayOfInt.length;
    paramXmlSerializer.attribute(null, "num", Integer.toString(j));
    int i = 0;
    while (i < j)
    {
      paramXmlSerializer.startTag(null, "item");
      paramXmlSerializer.attribute(null, "value", Integer.toString(paramArrayOfInt[i]));
      paramXmlSerializer.endTag(null, "item");
      i += 1;
    }
    paramXmlSerializer.endTag(null, "int-array");
  }
  
  public static final void writeListXml(List paramList, OutputStream paramOutputStream)
    throws XmlPullParserException, IOException
  {
    XmlSerializer localXmlSerializer = Xml.newSerializer();
    localXmlSerializer.setOutput(paramOutputStream, "utf-8");
    localXmlSerializer.startDocument(null, Boolean.valueOf(true));
    localXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
    writeListXml(paramList, null, localXmlSerializer);
    localXmlSerializer.endDocument();
  }
  
  public static final void writeListXml(List paramList, String paramString, XmlSerializer paramXmlSerializer)
    throws XmlPullParserException, IOException
  {
    if (paramList == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramXmlSerializer.startTag(null, "list");
    if (paramString != null) {
      paramXmlSerializer.attribute(null, "name", paramString);
    }
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      writeValueXml(paramList.get(i), null, paramXmlSerializer);
      i += 1;
    }
    paramXmlSerializer.endTag(null, "list");
  }
  
  public static final void writeMapXml(Map paramMap, OutputStream paramOutputStream)
    throws XmlPullParserException, IOException
  {
    FastXmlSerializer localFastXmlSerializer = new FastXmlSerializer();
    localFastXmlSerializer.setOutput(paramOutputStream, "utf-8");
    localFastXmlSerializer.startDocument(null, Boolean.valueOf(true));
    localFastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
    writeMapXml(paramMap, null, localFastXmlSerializer);
    localFastXmlSerializer.endDocument();
  }
  
  public static final void writeMapXml(Map paramMap, String paramString, XmlSerializer paramXmlSerializer)
    throws XmlPullParserException, IOException
  {
    if (paramMap == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramMap = paramMap.entrySet().iterator();
    paramXmlSerializer.startTag(null, "map");
    if (paramString != null) {
      paramXmlSerializer.attribute(null, "name", paramString);
    }
    while (paramMap.hasNext())
    {
      paramString = (Map.Entry)paramMap.next();
      writeValueXml(paramString.getValue(), (String)paramString.getKey(), paramXmlSerializer);
    }
    paramXmlSerializer.endTag(null, "map");
  }
  
  public static final void writeValueXml(Object paramObject, String paramString, XmlSerializer paramXmlSerializer)
    throws XmlPullParserException, IOException
  {
    if (paramObject == null)
    {
      paramXmlSerializer.startTag(null, "null");
      if (paramString != null) {
        paramXmlSerializer.attribute(null, "name", paramString);
      }
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    if ((paramObject instanceof String))
    {
      paramXmlSerializer.startTag(null, "string");
      if (paramString != null) {
        paramXmlSerializer.attribute(null, "name", paramString);
      }
      paramXmlSerializer.text(paramObject.toString());
      paramXmlSerializer.endTag(null, "string");
      return;
    }
    String str;
    if ((paramObject instanceof Integer)) {
      str = "int";
    }
    for (;;)
    {
      paramXmlSerializer.startTag(null, str);
      if (paramString != null) {
        paramXmlSerializer.attribute(null, "name", paramString);
      }
      paramXmlSerializer.attribute(null, "value", paramObject.toString());
      paramXmlSerializer.endTag(null, str);
      return;
      if ((paramObject instanceof Long))
      {
        str = "long";
      }
      else if ((paramObject instanceof Float))
      {
        str = "float";
      }
      else if ((paramObject instanceof Double))
      {
        str = "double";
      }
      else
      {
        if (!(paramObject instanceof Boolean)) {
          break;
        }
        str = "boolean";
      }
    }
    if ((paramObject instanceof byte[]))
    {
      writeByteArrayXml((byte[])paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof int[]))
    {
      writeIntArrayXml((int[])paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof Map))
    {
      writeMapXml((Map)paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof List))
    {
      writeListXml((List)paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof CharSequence))
    {
      paramXmlSerializer.startTag(null, "string");
      if (paramString != null) {
        paramXmlSerializer.attribute(null, "name", paramString);
      }
      paramXmlSerializer.text(paramObject.toString());
      paramXmlSerializer.endTag(null, "string");
      return;
    }
    throw new RuntimeException("writeValueXml: unable to write value " + paramObject);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/ta/utdid2/core/persistent/XmlUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */