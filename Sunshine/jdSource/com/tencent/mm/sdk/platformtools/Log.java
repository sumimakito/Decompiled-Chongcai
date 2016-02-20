package com.tencent.mm.sdk.platformtools;

import android.os.Build;
import android.os.Build.VERSION;
import android.widget.Toast;
import com.tencent.mm.algorithm.MD5;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;

public class Log
{
  public static final int LEVEL_DEBUG = 1;
  public static final int LEVEL_ERROR = 4;
  public static final int LEVEL_FATAL = 5;
  public static final int LEVEL_INFO = 2;
  public static final int LEVEL_NONE = 6;
  public static final int LEVEL_VERBOSE = 0;
  public static final int LEVEL_WARNING = 3;
  private static PrintStream ar;
  private static byte[] as;
  private static final String at;
  private static int level = 0;
  
  static
  {
    as = null;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("VERSION.RELEASE:[" + Build.VERSION.RELEASE);
    localStringBuilder.append("] VERSION.CODENAME:[" + Build.VERSION.CODENAME);
    localStringBuilder.append("] VERSION.INCREMENTAL:[" + Build.VERSION.INCREMENTAL);
    localStringBuilder.append("] BOARD:[" + Build.BOARD);
    localStringBuilder.append("] DEVICE:[" + Build.DEVICE);
    localStringBuilder.append("] DISPLAY:[" + Build.DISPLAY);
    localStringBuilder.append("] FINGERPRINT:[" + Build.FINGERPRINT);
    localStringBuilder.append("] HOST:[" + Build.HOST);
    localStringBuilder.append("] MANUFACTURER:[" + Build.MANUFACTURER);
    localStringBuilder.append("] MODEL:[" + Build.MODEL);
    localStringBuilder.append("] PRODUCT:[" + Build.PRODUCT);
    localStringBuilder.append("] TAGS:[" + Build.TAGS);
    localStringBuilder.append("] TYPE:[" + Build.TYPE);
    localStringBuilder.append("] USER:[" + Build.USER + "]");
    at = localStringBuilder.toString();
  }
  
  public static void d(String paramString1, String paramString2)
  {
    d(paramString1, paramString2, null);
  }
  
  public static void d(String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (level <= 1) {
      if (paramVarArgs != null) {
        break label44;
      }
    }
    for (;;)
    {
      android.util.Log.d(paramString1, paramString2);
      LogHelper.writeToStream(ar, as, "D/" + paramString1, paramString2);
      return;
      label44:
      paramString2 = String.format(paramString2, paramVarArgs);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    e(paramString1, paramString2, null);
  }
  
  public static void e(String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (level <= 4) {
      if (paramVarArgs != null) {
        break label44;
      }
    }
    for (;;)
    {
      android.util.Log.e(paramString1, paramString2);
      LogHelper.writeToStream(ar, as, "E/" + paramString1, paramString2);
      return;
      label44:
      paramString2 = String.format(paramString2, paramVarArgs);
    }
  }
  
  public static void f(String paramString1, String paramString2)
  {
    f(paramString1, paramString2, null);
  }
  
  public static void f(String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (level <= 5) {
      if (paramVarArgs != null) {
        break label55;
      }
    }
    for (;;)
    {
      android.util.Log.e(paramString1, paramString2);
      LogHelper.writeToStream(ar, as, "F/" + paramString1, paramString2);
      Toast.makeText(MMApplicationContext.getContext(), paramString2, 1).show();
      return;
      label55:
      paramString2 = String.format(paramString2, paramVarArgs);
    }
  }
  
  public static int getLevel()
  {
    return level;
  }
  
  public static String getSysInfo()
  {
    return at;
  }
  
  public static void i(String paramString1, String paramString2)
  {
    i(paramString1, paramString2, null);
  }
  
  public static void i(String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (level <= 2) {
      if (paramVarArgs != null) {
        break label44;
      }
    }
    for (;;)
    {
      android.util.Log.i(paramString1, paramString2);
      LogHelper.writeToStream(ar, as, "I/" + paramString1, paramString2);
      return;
      label44:
      paramString2 = String.format(paramString2, paramVarArgs);
    }
  }
  
  public static void reset()
  {
    ar = null;
    as = null;
  }
  
  public static void setLevel(int paramInt, boolean paramBoolean)
  {
    level = paramInt;
    android.util.Log.w("MicroMsg.SDK.Log", "new log level: " + paramInt);
    if (paramBoolean) {
      android.util.Log.e("MicroMsg.SDK.Log", "no jni log level support");
    }
  }
  
  public static void setOutputPath(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString3 == null) || (paramString3.length() == 0)) {
      return;
    }
    for (;;)
    {
      try
      {
        localObject = new File(paramString1);
        if (!((File)localObject).exists()) {
          break;
        }
        if (((File)localObject).length() > 0L)
        {
          localObject = new FileInputStream(paramString1);
          setOutputStream((InputStream)localObject, new FileOutputStream(paramString1, true), paramString2, paramString3, paramInt);
          ((InputStream)localObject).close();
          return;
        }
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
      Object localObject = null;
    }
  }
  
  public static void setOutputStream(InputStream paramInputStream, OutputStream paramOutputStream, String paramString1, String paramString2, int paramInt)
  {
    try
    {
      ar = new PrintStream(new BufferedOutputStream(paramOutputStream));
      long l;
      if (paramInputStream != null)
      {
        paramInputStream = new BufferedReader(new InputStreamReader(paramInputStream));
        paramOutputStream = paramInputStream.readLine().substring(2).trim();
        paramString2 = paramInputStream.readLine().substring(2).trim();
        l = Util.getLong(paramInputStream.readLine().trim().substring(2), 0L);
        d("MicroMsg.SDK.Log", "using provided info, type=%s, user=%s, createtime=%d", new Object[] { paramOutputStream, paramString2, Long.valueOf(l) });
      }
      for (;;)
      {
        paramInputStream = new StringBuffer();
        paramInputStream.append(paramString2);
        paramInputStream.append(l);
        paramInputStream.append("dfdhgc");
        as = MD5.getMessageDigest(paramInputStream.toString().getBytes()).substring(7, 21).getBytes();
        android.util.Log.d("MicroMsg.SDK.Log", "set up out put stream");
        return;
        l = System.currentTimeMillis();
        LogHelper.initLogHeader(ar, paramString1, paramString2, l, paramInt);
      }
      return;
    }
    catch (Exception paramInputStream)
    {
      paramInputStream.printStackTrace();
    }
  }
  
  public static void v(String paramString1, String paramString2)
  {
    v(paramString1, paramString2, null);
  }
  
  public static void v(String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (level <= 0) {
      if (paramVarArgs != null) {
        break label44;
      }
    }
    for (;;)
    {
      android.util.Log.v(paramString1, paramString2);
      LogHelper.writeToStream(ar, as, "V/" + paramString1, paramString2);
      return;
      label44:
      paramString2 = String.format(paramString2, paramVarArgs);
    }
  }
  
  public static void w(String paramString1, String paramString2)
  {
    w(paramString1, paramString2, null);
  }
  
  public static void w(String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (level <= 3) {
      if (paramVarArgs != null) {
        break label45;
      }
    }
    for (;;)
    {
      android.util.Log.w(paramString1, paramString2);
      LogHelper.writeToStream(ar, as, "W/" + paramString1, paramString2);
      return;
      label45:
      paramString2 = String.format(paramString2, paramVarArgs);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/Log.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */