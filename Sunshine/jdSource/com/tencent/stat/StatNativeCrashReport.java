package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.k;
import com.tencent.stat.common.p;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedHashSet;

public class StatNativeCrashReport
{
  public static final String PRE_TAG_TOMBSTONE_FNAME = "tombstone_";
  static StatNativeCrashReport a;
  private static StatLogger b = ;
  private static boolean d;
  private static boolean e;
  private static String f;
  private volatile boolean c = false;
  
  static
  {
    a = new StatNativeCrashReport();
    d = false;
    e = false;
    f = null;
    try
    {
      System.loadLibrary("MtaNativeCrash");
      return;
    }
    catch (Throwable localThrowable)
    {
      d = false;
      b.w(localThrowable);
    }
  }
  
  static String a(File paramFile)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      paramFile = new BufferedReader(new FileReader(paramFile));
      for (;;)
      {
        String str = paramFile.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str);
        localStringBuilder.append('\n');
      }
      return localStringBuilder.toString();
    }
    catch (IOException paramFile)
    {
      b.e(paramFile);
    }
    for (;;)
    {
      paramFile.close();
    }
  }
  
  static LinkedHashSet<File> a(Context paramContext)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    paramContext = getTombstonesDir(paramContext);
    if (paramContext != null)
    {
      paramContext = new File(paramContext);
      if ((paramContext != null) && (paramContext.isDirectory()))
      {
        paramContext = paramContext.listFiles();
        if (paramContext != null)
        {
          int j = paramContext.length;
          int i = 0;
          while (i < j)
          {
            Object localObject = paramContext[i];
            if ((((File)localObject).getName().startsWith("tombstone_")) && (((File)localObject).isFile()))
            {
              b.d("get tombstone file:" + ((File)localObject).getAbsolutePath().toString());
              localLinkedHashSet.add(((File)localObject).getAbsoluteFile());
            }
            i += 1;
          }
        }
      }
    }
    return localLinkedHashSet;
  }
  
  static long b(File paramFile)
  {
    paramFile = paramFile.getName().replace("tombstone_", "");
    try
    {
      long l = Long.valueOf(paramFile).longValue();
      return l;
    }
    catch (NumberFormatException paramFile)
    {
      b.e(paramFile);
    }
    return 0L;
  }
  
  public static void doNativeCrashTest()
  {
    a.makeJniCrash();
  }
  
  public static String getTombstonesDir(Context paramContext)
  {
    if (f == null) {
      f = p.a(paramContext, "__mta_tombstone__", "");
    }
    return f;
  }
  
  public static void initNativeCrash(Context paramContext, String paramString)
  {
    if (a.c) {
      return;
    }
    String str = paramString;
    if (paramString == null) {}
    try
    {
      str = paramContext.getDir("tombstones", 0).getAbsolutePath();
      if (str.length() > 128)
      {
        b.e("The length of tombstones dir: " + str + " can't exceeds 200 bytes.");
        return;
      }
    }
    catch (Throwable paramContext)
    {
      b.w(paramContext);
      return;
    }
    f = str;
    p.b(paramContext, "__mta_tombstone__", str);
    setNativeCrashEnable(true);
    a.initJNICrash(str);
    a.c = true;
    b.d("initNativeCrash success.");
  }
  
  public static boolean isNativeCrashDebugEnable()
  {
    return e;
  }
  
  public static boolean isNativeCrashEnable()
  {
    return d;
  }
  
  public static String onNativeCrashHappened()
  {
    try
    {
      new RuntimeException("MTA has caught a native crash, java stack:\n").printStackTrace();
      return "";
    }
    catch (RuntimeException localRuntimeException)
    {
      return localRuntimeException.toString();
    }
  }
  
  public static void setNativeCrashDebugEnable(boolean paramBoolean)
  {
    try
    {
      a.enableNativeCrashDebug(paramBoolean);
      e = paramBoolean;
      return;
    }
    catch (Throwable localThrowable)
    {
      b.w(localThrowable);
    }
  }
  
  public static void setNativeCrashEnable(boolean paramBoolean)
  {
    try
    {
      a.enableNativeCrash(paramBoolean);
      d = paramBoolean;
      return;
    }
    catch (Throwable localThrowable)
    {
      b.w(localThrowable);
    }
  }
  
  public native void enableNativeCrash(boolean paramBoolean);
  
  public native void enableNativeCrashDebug(boolean paramBoolean);
  
  public native boolean initJNICrash(String paramString);
  
  public native String makeJniCrash();
  
  public native String stringFromJNI();
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/StatNativeCrashReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */