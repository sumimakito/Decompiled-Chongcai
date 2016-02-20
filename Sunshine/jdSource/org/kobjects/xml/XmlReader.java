package org.kobjects.xml;

import java.io.IOException;
import java.io.Reader;
import java.util.Hashtable;

public class XmlReader
{
  static final int CDSECT = 5;
  public static final int END_DOCUMENT = 1;
  public static final int END_TAG = 3;
  static final int ENTITY_REF = 6;
  private static final int LEGACY = 999;
  public static final int START_DOCUMENT = 0;
  public static final int START_TAG = 2;
  public static final int TEXT = 4;
  private static final String UNEXPECTED_EOF = "Unexpected EOF";
  private String[] TYPES;
  private int attributeCount;
  private String[] attributes;
  private int column;
  private boolean degenerated;
  private int depth;
  private String[] elementStack = new String[4];
  private Hashtable entityMap;
  private boolean eof;
  private boolean isWhitespace;
  private int line;
  private String name;
  private int peek0;
  private int peek1;
  private Reader reader;
  public boolean relaxed;
  private char[] srcBuf;
  private int srcCount;
  private int srcPos;
  private String text;
  private char[] txtBuf;
  private int txtPos;
  private int type;
  
  public XmlReader(Reader paramReader)
    throws IOException
  {
    int i;
    if (Runtime.getRuntime().freeMemory() >= 1048576L)
    {
      i = 8192;
      this.srcBuf = new char[i];
      this.txtBuf = new char[''];
      this.attributes = new String[16];
      this.TYPES = new String[] { "Start Document", "End Document", "Start Tag", "End Tag", "Text" };
      this.reader = paramReader;
      this.peek0 = paramReader.read();
      this.peek1 = paramReader.read();
      if (this.peek0 != -1) {
        break label212;
      }
    }
    label212:
    for (boolean bool = true;; bool = false)
    {
      this.eof = bool;
      this.entityMap = new Hashtable();
      this.entityMap.put("amp", "&");
      this.entityMap.put("apos", "'");
      this.entityMap.put("gt", ">");
      this.entityMap.put("lt", "<");
      this.entityMap.put("quot", "\"");
      this.line = 1;
      this.column = 1;
      return;
      i = 128;
      break;
    }
  }
  
  private static final String[] ensureCapacity(String[] paramArrayOfString, int paramInt)
  {
    if (paramArrayOfString.length >= paramInt) {
      return paramArrayOfString;
    }
    String[] arrayOfString = new String[paramInt + 16];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramArrayOfString.length);
    return arrayOfString;
  }
  
  private final void exception(String paramString)
    throws IOException
  {
    throw new IOException(paramString + " pos: " + getPositionDescription());
  }
  
  private final void parseDoctype()
    throws IOException
  {
    int i = 1;
    int j;
    do
    {
      for (;;)
      {
        switch (read())
        {
        default: 
          break;
        case -1: 
          exception("Unexpected EOF");
        case 60: 
          i += 1;
        }
      }
      j = i - 1;
      i = j;
    } while (j != 0);
  }
  
  private final void parseEndTag()
    throws IOException
  {
    read();
    read();
    this.name = readName();
    if ((this.depth == 0) && (!this.relaxed)) {
      exception("element stack empty");
    }
    if (this.name.equals(this.elementStack[(this.depth - 1)])) {
      this.depth -= 1;
    }
    for (;;)
    {
      skip();
      read('>');
      return;
      if (!this.relaxed) {
        exception("expected: " + this.elementStack[this.depth]);
      }
    }
  }
  
  private final void parseLegacy(boolean paramBoolean)
    throws IOException
  {
    String str = "";
    read();
    int i = read();
    if (i == 63) {
      i = 63;
    }
    int j;
    for (;;)
    {
      j = 0;
      while (j < str.length())
      {
        read(str.charAt(j));
        j += 1;
      }
      if (i == 33)
      {
        if (this.peek0 == 45)
        {
          str = "--";
          i = 45;
        }
        else
        {
          str = "DOCTYPE";
          i = -1;
        }
      }
      else
      {
        if (i != 91) {
          exception("cantreachme: " + i);
        }
        str = "CDATA[";
        i = 93;
      }
    }
    if (i == -1) {
      parseDoctype();
    }
    do
    {
      return;
      do
      {
        if (this.eof) {
          exception("Unexpected EOF");
        }
        j = read();
        if (paramBoolean) {
          push(j);
        }
      } while (((i != 63) && (j != i)) || (this.peek0 != i) || (this.peek1 != 62));
      read();
      read();
    } while ((!paramBoolean) || (i == 63));
    pop(this.txtPos - 1);
  }
  
  private final void parseStartTag()
    throws IOException
  {
    read();
    this.name = readName();
    this.elementStack = ensureCapacity(this.elementStack, this.depth + 1);
    Object localObject = this.elementStack;
    int i = this.depth;
    this.depth = (i + 1);
    localObject[i] = this.name;
    for (;;)
    {
      skip();
      i = this.peek0;
      if (i == 47)
      {
        this.degenerated = true;
        read();
        skip();
        read('>');
        return;
      }
      if (i == 62)
      {
        read();
        return;
      }
      if (i == -1) {
        exception("Unexpected EOF");
      }
      localObject = readName();
      if (((String)localObject).length() == 0) {
        exception("attr name expected");
      }
      skip();
      read('=');
      skip();
      int j = read();
      i = j;
      if (j != 39)
      {
        i = j;
        if (j != 34)
        {
          if (!this.relaxed) {
            exception("<" + this.name + ">: invalid delimiter: " + (char)j);
          }
          i = 32;
        }
      }
      j = this.attributeCount;
      this.attributeCount = (j + 1);
      j <<= 1;
      this.attributes = ensureCapacity(this.attributes, j + 4);
      this.attributes[j] = localObject;
      int k = this.txtPos;
      pushText(i);
      this.attributes[(j + 1)] = pop(k);
      if (i != 32) {
        read();
      }
    }
  }
  
  private final int peekType()
  {
    switch (this.peek0)
    {
    default: 
      return 4;
    case -1: 
      return 1;
    case 38: 
      return 6;
    }
    switch (this.peek1)
    {
    default: 
      return 2;
    case 47: 
      return 3;
    case 91: 
      return 5;
    }
    return 999;
  }
  
  private final String pop(int paramInt)
  {
    String str = new String(this.txtBuf, paramInt, this.txtPos - paramInt);
    this.txtPos = paramInt;
    return str;
  }
  
  private final void push(int paramInt)
  {
    if (paramInt == 0) {
      return;
    }
    if (this.txtPos == this.txtBuf.length)
    {
      arrayOfChar = new char[this.txtPos * 4 / 3 + 4];
      System.arraycopy(this.txtBuf, 0, arrayOfChar, 0, this.txtPos);
      this.txtBuf = arrayOfChar;
    }
    char[] arrayOfChar = this.txtBuf;
    int i = this.txtPos;
    this.txtPos = (i + 1);
    arrayOfChar[i] = ((char)paramInt);
  }
  
  private final boolean pushText(int paramInt)
    throws IOException
  {
    boolean bool = true;
    int i = this.peek0;
    if ((this.eof) || (i == paramInt) || ((paramInt == 32) && ((i <= 32) || (i == 62)))) {
      return bool;
    }
    if (i == 38) {
      if (!pushEntity()) {
        bool = false;
      }
    }
    for (;;)
    {
      i = this.peek0;
      break;
      if (i > 32) {
        bool = false;
      }
      push(read());
    }
  }
  
  private final int read()
    throws IOException
  {
    int i = this.peek0;
    this.peek0 = this.peek1;
    if (this.peek0 == -1)
    {
      this.eof = true;
      return i;
    }
    if ((i == 10) || (i == 13))
    {
      this.line += 1;
      this.column = 0;
      if ((i == 13) && (this.peek0 == 10)) {
        this.peek0 = 0;
      }
    }
    this.column += 1;
    if (this.srcPos >= this.srcCount)
    {
      this.srcCount = this.reader.read(this.srcBuf, 0, this.srcBuf.length);
      if (this.srcCount <= 0)
      {
        this.peek1 = -1;
        return i;
      }
      this.srcPos = 0;
    }
    char[] arrayOfChar = this.srcBuf;
    int j = this.srcPos;
    this.srcPos = (j + 1);
    this.peek1 = arrayOfChar[j];
    return i;
  }
  
  private final void read(char paramChar)
    throws IOException
  {
    if (read() != paramChar)
    {
      if (!this.relaxed) {
        break label31;
      }
      if (paramChar <= ' ')
      {
        skip();
        read();
      }
    }
    return;
    label31:
    exception("expected: '" + paramChar + "'");
  }
  
  private final String readName()
    throws IOException
  {
    int i = this.txtPos;
    int j = this.peek0;
    if (((j < 97) || (j > 122)) && ((j < 65) || (j > 90)) && (j != 95) && (j != 58) && (!this.relaxed)) {
      exception("name expected");
    }
    do
    {
      push(read());
      j = this.peek0;
    } while (((j >= 97) && (j <= 122)) || ((j >= 65) && (j <= 90)) || ((j >= 48) && (j <= 57)) || (j == 95) || (j == 45) || (j == 58) || (j == 46));
    return pop(i);
  }
  
  private final void skip()
    throws IOException
  {
    while ((!this.eof) && (this.peek0 <= 32)) {
      read();
    }
  }
  
  public void defineCharacterEntity(String paramString1, String paramString2)
  {
    this.entityMap.put(paramString1, paramString2);
  }
  
  public int getAttributeCount()
  {
    return this.attributeCount;
  }
  
  public String getAttributeName(int paramInt)
  {
    if (paramInt >= this.attributeCount) {
      throw new IndexOutOfBoundsException();
    }
    return this.attributes[(paramInt << 1)];
  }
  
  public String getAttributeValue(int paramInt)
  {
    if (paramInt >= this.attributeCount) {
      throw new IndexOutOfBoundsException();
    }
    return this.attributes[((paramInt << 1) + 1)];
  }
  
  public String getAttributeValue(String paramString)
  {
    int i = (this.attributeCount << 1) - 2;
    while (i >= 0)
    {
      if (this.attributes[i].equals(paramString)) {
        return this.attributes[(i + 1)];
      }
      i -= 2;
    }
    return null;
  }
  
  public int getColumnNumber()
  {
    return this.column;
  }
  
  public int getDepth()
  {
    return this.depth;
  }
  
  public int getLineNumber()
  {
    return this.line;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getPositionDescription()
  {
    Object localObject;
    if (this.type < this.TYPES.length)
    {
      localObject = this.TYPES[this.type];
      localObject = new StringBuffer((String)localObject);
      ((StringBuffer)localObject).append(" @" + this.line + ":" + this.column + ": ");
      if ((this.type != 2) && (this.type != 3)) {
        break label144;
      }
      ((StringBuffer)localObject).append('<');
      if (this.type == 3) {
        ((StringBuffer)localObject).append('/');
      }
      ((StringBuffer)localObject).append(this.name);
      ((StringBuffer)localObject).append('>');
    }
    for (;;)
    {
      return ((StringBuffer)localObject).toString();
      localObject = "Other";
      break;
      label144:
      if (this.isWhitespace) {
        ((StringBuffer)localObject).append("[whitespace]");
      } else {
        ((StringBuffer)localObject).append(getText());
      }
    }
  }
  
  public String getText()
  {
    if (this.text == null) {
      this.text = pop(0);
    }
    return this.text;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public boolean isEmptyElementTag()
  {
    return this.degenerated;
  }
  
  public boolean isWhitespace()
  {
    return this.isWhitespace;
  }
  
  public int next()
    throws IOException
  {
    boolean bool1 = true;
    if (this.degenerated)
    {
      this.type = 3;
      this.degenerated = false;
      this.depth -= 1;
      return this.type;
    }
    this.txtPos = 0;
    this.isWhitespace = true;
    do
    {
      this.attributeCount = 0;
      this.name = null;
      this.text = null;
      this.type = peekType();
      switch (this.type)
      {
      default: 
        parseLegacy(false);
      }
    } while ((this.type > 4) || ((this.type == 4) && (peekType() >= 4)));
    boolean bool2 = this.isWhitespace;
    if (this.type == 4) {}
    for (;;)
    {
      this.isWhitespace = (bool1 & bool2);
      return this.type;
      this.isWhitespace &= pushEntity();
      this.type = 4;
      break;
      parseStartTag();
      break;
      parseEndTag();
      break;
      this.isWhitespace &= pushText(60);
      break;
      parseLegacy(true);
      this.isWhitespace = false;
      this.type = 4;
      break;
      bool1 = false;
    }
  }
  
  public final boolean pushEntity()
    throws IOException
  {
    read();
    int i = this.txtPos;
    while ((!this.eof) && (this.peek0 != 59)) {
      push(read());
    }
    String str3 = pop(i);
    read();
    if ((str3.length() > 0) && (str3.charAt(0) == '#'))
    {
      if (str3.charAt(1) == 'x') {}
      for (i = Integer.parseInt(str3.substring(2), 16);; i = Integer.parseInt(str3.substring(1)))
      {
        push(i);
        if (i > 32) {
          break;
        }
        return true;
      }
      return false;
    }
    String str2 = (String)this.entityMap.get(str3);
    boolean bool = true;
    String str1 = str2;
    if (str2 == null) {
      str1 = "&" + str3 + ";";
    }
    i = 0;
    while (i < str1.length())
    {
      int j = str1.charAt(i);
      if (j > 32) {
        bool = false;
      }
      push(j);
      i += 1;
    }
    return bool;
  }
  
  public String readText()
    throws IOException
  {
    if (this.type != 4) {
      return "";
    }
    String str = getText();
    next();
    return str;
  }
  
  public void require(int paramInt, String paramString)
    throws IOException
  {
    if ((this.type == 4) && (paramInt != 4) && (isWhitespace())) {
      next();
    }
    if ((paramInt != this.type) || ((paramString != null) && (!paramString.equals(getName())))) {
      exception("expected: " + this.TYPES[paramInt] + "/" + paramString);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/xml/XmlReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */