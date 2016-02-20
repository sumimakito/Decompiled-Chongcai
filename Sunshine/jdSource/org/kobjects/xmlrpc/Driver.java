package org.kobjects.xmlrpc;

import java.io.FileReader;
import org.kobjects.xml.XmlReader;

public class Driver
{
  public static void main(String[] paramArrayOfString)
    throws Exception
  {
    new XmlRpcParser(new XmlReader(new FileReader(paramArrayOfString[0]))).parseResponse();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/kobjects/xmlrpc/Driver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */