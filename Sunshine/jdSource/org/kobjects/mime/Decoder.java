package org.kobjects.mime;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.Hashtable;
import org.kobjects.base64.Base64;

public class Decoder
{
  String boundary;
  char[] buf = new char['Ā'];
  String characterEncoding;
  boolean consumed;
  boolean eof;
  Hashtable header;
  InputStream is;
  
  public Decoder(InputStream paramInputStream, String paramString)
    throws IOException
  {
    this(paramInputStream, paramString, null);
  }
  
  public Decoder(InputStream paramInputStream, String paramString1, String paramString2)
    throws IOException
  {
    this.characterEncoding = paramString2;
    this.is = paramInputStream;
    this.boundary = ("--" + paramString1);
    do
    {
      paramString1 = readLine();
      if (paramString1 == null) {
        throw new IOException("Unexpected EOF");
      }
    } while (!paramString1.startsWith(this.boundary));
    if (paramString1.endsWith("--"))
    {
      this.eof = true;
      paramInputStream.close();
    }
    this.consumed = true;
  }
  
  public static Hashtable getHeaderElements(String paramString)
  {
    String str = "";
    int i = 0;
    Hashtable localHashtable = new Hashtable();
    int k = paramString.length();
    for (;;)
    {
      if ((i < k) && (paramString.charAt(i) <= ' '))
      {
        i += 1;
      }
      else
      {
        if (i >= k) {}
        int j;
        do
        {
          do
          {
            return localHashtable;
            if (paramString.charAt(i) != '"') {
              break;
            }
            i += 1;
            j = paramString.indexOf('"', i);
            if (j == -1) {
              throw new RuntimeException("End quote expected in " + paramString);
            }
            localHashtable.put(str, paramString.substring(i, j));
            j += 2;
          } while (j >= k);
          i = j;
          if (paramString.charAt(j - 1) != ';')
          {
            throw new RuntimeException("; expected in " + paramString);
            j = paramString.indexOf(';', i);
            if (j == -1)
            {
              localHashtable.put(str, paramString.substring(i));
              return localHashtable;
            }
            localHashtable.put(str, paramString.substring(i, j));
            i = j + 1;
          }
          j = paramString.indexOf('=', i);
        } while (j == -1);
        str = paramString.substring(i, j).toLowerCase().trim();
        i = j + 1;
      }
    }
  }
  
  private final String readLine()
    throws IOException
  {
    int i = 0;
    for (;;)
    {
      int j = this.is.read();
      if ((j == -1) && (i == 0)) {
        return null;
      }
      if ((j == -1) || (j == 10)) {
        return new String(this.buf, 0, i);
      }
      if (j != 13)
      {
        if (i >= this.buf.length)
        {
          char[] arrayOfChar = new char[this.buf.length * 3 / 2];
          System.arraycopy(this.buf, 0, arrayOfChar, 0, this.buf.length);
          this.buf = arrayOfChar;
        }
        this.buf[i] = ((char)j);
        i += 1;
      }
    }
  }
  
  public String getHeader(String paramString)
  {
    return (String)this.header.get(paramString.toLowerCase());
  }
  
  public Enumeration getHeaderNames()
  {
    return this.header.keys();
  }
  
  public boolean next()
    throws IOException
  {
    if (!this.consumed) {
      readContent(null);
    }
    if (this.eof) {
      return false;
    }
    this.header = new Hashtable();
    for (;;)
    {
      String str = readLine();
      if ((str == null) || (str.equals("")))
      {
        this.consumed = false;
        return true;
      }
      int i = str.indexOf(':');
      if (i == -1) {
        throw new IOException("colon missing in multipart header line: " + str);
      }
      this.header.put(str.substring(0, i).trim().toLowerCase(), str.substring(i + 1).trim());
    }
  }
  
  public String readContent()
    throws IOException
  {
    Object localObject = new ByteArrayOutputStream();
    readContent((OutputStream)localObject);
    if (this.characterEncoding == null) {}
    for (localObject = new String(((ByteArrayOutputStream)localObject).toByteArray());; localObject = new String(((ByteArrayOutputStream)localObject).toByteArray(), this.characterEncoding))
    {
      System.out.println("Field content: '" + (String)localObject + "'");
      return (String)localObject;
    }
  }
  
  public void readContent(OutputStream paramOutputStream)
    throws IOException
  {
    if (this.consumed) {
      throw new RuntimeException("Content already consumed!");
    }
    getHeader("Content-Type");
    String str;
    if ("base64".equals(getHeader("Content-Transfer-Encoding")))
    {
      new ByteArrayOutputStream();
      str = readLine();
      if (str == null) {
        throw new IOException("Unexpected EOF");
      }
      if (!str.startsWith(this.boundary)) {}
    }
    int i;
    int k;
    for (paramOutputStream = str;; paramOutputStream = readLine())
    {
      if (paramOutputStream.endsWith("--")) {
        this.eof = true;
      }
      this.consumed = true;
      return;
      Base64.decode(str, paramOutputStream);
      break;
      str = "\r\n" + this.boundary;
      i = 0;
      do
      {
        k = this.is.read();
        if (k == -1) {
          throw new RuntimeException("Unexpected EOF");
        }
        if ((char)k != str.charAt(i)) {
          break;
        }
        j = i + 1;
        i = j;
      } while (j != str.length());
    }
    int j = i;
    if (i > 0)
    {
      j = 0;
      while (j < i)
      {
        paramOutputStream.write((byte)str.charAt(j));
        j += 1;
      }
      if ((char)k != str.charAt(0)) {
        break label260;
      }
    }
    label260:
    for (j = 1;; j = 0)
    {
      i = j;
      if (j != 0) {
        break;
      }
      paramOutputStream.write((byte)k);
      i = j;
      break;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/mime/Decoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */