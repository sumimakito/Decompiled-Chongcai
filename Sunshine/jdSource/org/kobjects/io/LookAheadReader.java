package org.kobjects.io;

import java.io.IOException;
import java.io.Reader;

public class LookAheadReader
  extends Reader
{
  char[] buf;
  int bufPos;
  int bufValid;
  Reader reader;
  
  public LookAheadReader(Reader paramReader)
  {
    if (Runtime.getRuntime().freeMemory() > 1000000L) {}
    for (int i = 16384;; i = 128)
    {
      this.buf = new char[i];
      this.bufPos = 0;
      this.bufValid = 0;
      this.reader = paramReader;
      return;
    }
  }
  
  public void close()
    throws IOException
  {
    this.reader.close();
  }
  
  public int peek(int paramInt)
    throws IOException
  {
    if (paramInt > 127) {
      throw new RuntimeException("peek > 127 not supported!");
    }
    int i;
    do
    {
      this.bufValid += i;
      if (paramInt < this.bufValid) {
        break;
      }
      i = (this.bufPos + this.bufValid) % this.buf.length;
      int j = Math.min(this.buf.length - i, this.buf.length - this.bufValid);
      i = this.reader.read(this.buf, i, j);
    } while (i != -1);
    return -1;
    return this.buf[(this.bufPos + paramInt % this.buf.length)];
  }
  
  public int read()
    throws IOException
  {
    int i = peek(0);
    if (i != -1)
    {
      int j = this.bufPos + 1;
      this.bufPos = j;
      if (j == this.buf.length) {
        this.bufPos = 0;
      }
      this.bufValid -= 1;
    }
    return i;
  }
  
  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    if ((this.bufValid == 0) && (peek(0) == -1)) {
      return -1;
    }
    int i = paramInt2;
    if (paramInt2 > this.bufValid) {
      i = this.bufValid;
    }
    paramInt2 = i;
    if (i > this.buf.length - this.bufPos) {
      paramInt2 = this.buf.length - this.bufPos;
    }
    System.arraycopy(this.buf, this.bufPos, paramArrayOfChar, paramInt1, paramInt2);
    this.bufValid -= paramInt2;
    this.bufPos += paramInt2;
    if (this.bufPos > this.buf.length) {
      this.bufPos -= this.buf.length;
    }
    return paramInt2;
  }
  
  public String readLine()
    throws IOException
  {
    Object localObject;
    if (peek(0) == -1) {
      localObject = null;
    }
    String str;
    do
    {
      do
      {
        return (String)localObject;
        str = readTo("\r\n");
        localObject = str;
      } while (read() != 13);
      localObject = str;
    } while (peek(0) != 10);
    read();
    return str;
  }
  
  public String readTo(char paramChar)
    throws IOException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    while ((peek(0) != -1) && (peek(0) != paramChar)) {
      localStringBuffer.append((char)read());
    }
    return localStringBuffer.toString();
  }
  
  public String readTo(String paramString)
    throws IOException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    while ((peek(0) != -1) && (paramString.indexOf((char)peek(0)) == -1)) {
      localStringBuffer.append((char)read());
    }
    return localStringBuffer.toString();
  }
  
  public String readWhile(String paramString)
    throws IOException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    while ((peek(0) != -1) && (paramString.indexOf((char)peek(0)) != -1)) {
      localStringBuffer.append((char)read());
    }
    return localStringBuffer.toString();
  }
  
  public void skip(String paramString)
    throws IOException
  {
    new StringBuffer();
    while ((peek(0) != -1) && (paramString.indexOf((char)peek(0)) != -1)) {
      read();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/io/LookAheadReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */