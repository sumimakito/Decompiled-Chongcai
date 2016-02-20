package com.tencent.stat.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;

class l
{
  static int a()
  {
    try
    {
      int i = new File("/sys/devices/system/cpu/").listFiles(new m()).length;
      return i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 1;
  }
  
  static int b()
  {
    j = 0;
    String str = "";
    try
    {
      InputStream localInputStream = new ProcessBuilder(new String[] { "/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq" }).start().getInputStream();
      byte[] arrayOfByte = new byte[24];
      while (localInputStream.read(arrayOfByte) != -1) {
        str = str + new String(arrayOfByte);
      }
      localInputStream.close();
      str = str.trim();
      i = j;
      if (str.length() > 0) {
        i = Integer.valueOf(str).intValue();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        k.g().e(localException);
        int i = j;
      }
    }
    return i * 1000;
  }
  
  static int c()
  {
    j = 0;
    String str = "";
    try
    {
      InputStream localInputStream = new ProcessBuilder(new String[] { "/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq" }).start().getInputStream();
      byte[] arrayOfByte = new byte[24];
      while (localInputStream.read(arrayOfByte) != -1) {
        str = str + new String(arrayOfByte);
      }
      localInputStream.close();
      str = str.trim();
      i = j;
      if (str.length() > 0) {
        i = Integer.valueOf(str).intValue();
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        k.g().e(localIOException);
        int i = j;
      }
    }
    return i * 1000;
  }
  
  static String d()
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
      String[] arrayOfString = localBufferedReader.readLine().split(":\\s+", 2);
      int i = 0;
      while (i < arrayOfString.length) {
        i += 1;
      }
      localBufferedReader.close();
      localBufferedReader = arrayOfString[1];
      return localBufferedReader;
    }
    catch (Throwable localThrowable)
    {
      k.g().e(localThrowable);
    }
    return "";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/common/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */