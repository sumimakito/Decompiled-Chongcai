package org.mozilla.intl.chardet;

import java.io.BufferedInputStream;
import java.io.PrintStream;
import java.net.URL;

public class HtmlCharsetDetector
{
  public static boolean found = false;
  
  public static void main(String[] paramArrayOfString)
    throws Exception
  {
    int j = 0;
    if ((paramArrayOfString.length != 1) && (paramArrayOfString.length != 2))
    {
      System.out.println("Usage: HtmlCharsetDetector <url> [<languageHint>]");
      System.out.println("");
      System.out.println("Where <url> is http://...");
      System.out.println("For optional <languageHint>. Use following...");
      System.out.println("\t\t1 => Japanese");
      System.out.println("\t\t2 => Chinese");
      System.out.println("\t\t3 => Simplified Chinese");
      System.out.println("\t\t4 => Traditional Chinese");
      System.out.println("\t\t5 => Korean");
      System.out.println("\t\t6 => Dont know (default)");
    }
    for (;;)
    {
      return;
      if (paramArrayOfString.length == 2) {}
      nsDetector localnsDetector;
      boolean bool2;
      for (int i = Integer.parseInt(paramArrayOfString[1]);; i = 0)
      {
        localnsDetector = new nsDetector(i);
        localnsDetector.Init(new nsICharsetDetectionObserver()
        {
          public void Notify(String paramAnonymousString)
          {
            HtmlCharsetDetector.found = true;
            System.out.println("CHARSET = " + paramAnonymousString);
          }
        });
        paramArrayOfString = new BufferedInputStream(new URL(paramArrayOfString[0]).openStream());
        byte[] arrayOfByte = new byte['Ѐ'];
        bool2 = true;
        boolean bool1 = false;
        for (;;)
        {
          i = paramArrayOfString.read(arrayOfByte, 0, arrayOfByte.length);
          if (i == -1) {
            break;
          }
          boolean bool3 = bool2;
          if (bool2) {
            bool3 = localnsDetector.isAscii(arrayOfByte, i);
          }
          bool2 = bool3;
          if (!bool3)
          {
            bool2 = bool3;
            if (!bool1)
            {
              bool1 = localnsDetector.DoIt(arrayOfByte, i, false);
              bool2 = bool3;
            }
          }
        }
      }
      localnsDetector.DataEnd();
      if (bool2)
      {
        System.out.println("CHARSET = ASCII");
        found = true;
      }
      if (!found)
      {
        paramArrayOfString = localnsDetector.getProbableCharsets();
        i = j;
        while (i < paramArrayOfString.length)
        {
          System.out.println("Probable Charset = " + paramArrayOfString[i]);
          i += 1;
        }
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/mozilla/intl/chardet/HtmlCharsetDetector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */