package com.tencent.stat.common;

import java.io.File;

class o
{
  private static int a = -1;
  
  public static boolean a()
  {
    if (a == 1) {
      return true;
    }
    if (a == 0) {
      return false;
    }
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "/bin";
    arrayOfString[1] = "/system/bin/";
    arrayOfString[2] = "/system/xbin/";
    arrayOfString[3] = "/system/sbin/";
    arrayOfString[4] = "/sbin/";
    arrayOfString[5] = "/vendor/bin/";
    int i = 0;
    for (;;)
    {
      try
      {
        if (i < arrayOfString.length)
        {
          File localFile = new File(arrayOfString[i] + "su");
          if ((localFile == null) || (!localFile.exists())) {
            break label114;
          }
          a = 1;
          return true;
        }
      }
      catch (Exception localException)
      {
        a = 0;
        return false;
      }
      label114:
      i += 1;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/common/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */