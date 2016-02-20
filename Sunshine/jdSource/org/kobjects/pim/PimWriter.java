package org.kobjects.pim;

import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;

public class PimWriter
{
  Writer writer;
  
  public PimWriter(Writer paramWriter)
  {
    this.writer = paramWriter;
  }
  
  public void writeEntry(PimItem paramPimItem)
    throws IOException
  {
    this.writer.write("begin:");
    this.writer.write(paramPimItem.getType());
    this.writer.write("\r\n");
    Enumeration localEnumeration = paramPimItem.fieldNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      int i = 0;
      while (i < paramPimItem.getFieldCount(str))
      {
        PimField localPimField = paramPimItem.getField(str, i);
        this.writer.write(str);
        this.writer.write(58);
        this.writer.write(localPimField.getValue().toString());
        this.writer.write("\r\n");
        i += 1;
      }
    }
    this.writer.write("end:");
    this.writer.write(paramPimItem.getType());
    this.writer.write("\r\n\r\n");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/pim/PimWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */