package com.tencent.stat.common;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.tencent.stat.StatConfig;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHost;
import org.json.JSONObject;

public class k
{
  private static String a = null;
  private static String b = null;
  private static String c = null;
  private static String d = null;
  private static Random e = null;
  private static StatLogger f = null;
  private static String g = null;
  private static l h = null;
  private static n i = null;
  private static String j = "__MTA_FIRST_ACTIVATE__";
  private static int k = -1;
  
  public static String A(Context paramContext)
  {
    for (;;)
    {
      int m;
      try
      {
        paramContext = (SensorManager)paramContext.getSystemService("sensor");
        if (paramContext != null)
        {
          paramContext = paramContext.getSensorList(-1);
          if (paramContext != null)
          {
            StringBuilder localStringBuilder = new StringBuilder();
            m = 0;
            if (m < paramContext.size())
            {
              localStringBuilder.append(((Sensor)paramContext.get(m)).getType());
              if (m == paramContext.size() - 1) {
                break label102;
              }
              localStringBuilder.append(",");
              break label102;
            }
            paramContext = localStringBuilder.toString();
            return paramContext;
          }
        }
      }
      catch (Throwable paramContext)
      {
        f.e(paramContext);
      }
      return "";
      label102:
      m += 1;
    }
  }
  
  public static WifiInfo B(Context paramContext)
  {
    if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
    {
      paramContext = (WifiManager)paramContext.getApplicationContext().getSystemService("wifi");
      if (paramContext != null) {
        return paramContext.getConnectionInfo();
      }
    }
    return null;
  }
  
  public static String C(Context paramContext)
  {
    try
    {
      paramContext = B(paramContext);
      if (paramContext != null)
      {
        paramContext = paramContext.getBSSID();
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      f.e(paramContext);
    }
    return null;
  }
  
  public static String D(Context paramContext)
  {
    try
    {
      paramContext = B(paramContext);
      if (paramContext != null)
      {
        paramContext = paramContext.getSSID();
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      f.e(paramContext);
    }
    return null;
  }
  
  /* Error */
  public static int E(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 47	com/tencent/stat/common/k:k	I
    //   6: iconst_m1
    //   7: if_icmpeq +12 -> 19
    //   10: getstatic 47	com/tencent/stat/common/k:k	I
    //   13: istore_1
    //   14: ldc 2
    //   16: monitorexit
    //   17: iload_1
    //   18: ireturn
    //   19: aload_0
    //   20: invokestatic 143	com/tencent/stat/common/k:F	(Landroid/content/Context;)V
    //   23: getstatic 47	com/tencent/stat/common/k:k	I
    //   26: istore_1
    //   27: goto -13 -> 14
    //   30: astore_0
    //   31: ldc 2
    //   33: monitorexit
    //   34: aload_0
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	paramContext	Context
    //   13	14	1	m	int
    // Exception table:
    //   from	to	target	type
    //   3	14	30	finally
    //   19	27	30	finally
  }
  
  public static void F(Context paramContext)
  {
    k = p.a(paramContext, j, 1);
    f.e(Integer.valueOf(k));
    if (k == 1) {
      p.b(paramContext, j, 0);
    }
  }
  
  private static long G(Context paramContext)
  {
    paramContext = (ActivityManager)paramContext.getSystemService("activity");
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    paramContext.getMemoryInfo(localMemoryInfo);
    return localMemoryInfo.availMem;
  }
  
  public static int a()
  {
    return h().nextInt(Integer.MAX_VALUE);
  }
  
  public static Long a(String paramString1, String paramString2, int paramInt1, int paramInt2, Long paramLong)
  {
    if ((paramString1 == null) || (paramString2 == null)) {}
    do
    {
      return paramLong;
      String str;
      if (!paramString2.equalsIgnoreCase("."))
      {
        str = paramString2;
        if (!paramString2.equalsIgnoreCase("|")) {}
      }
      else
      {
        str = "\\" + paramString2;
      }
      paramString2 = paramString1.split(str);
    } while (paramString2.length != paramInt2);
    try
    {
      paramString1 = Long.valueOf(0L);
      paramInt2 = 0;
      while (paramInt2 < paramString2.length)
      {
        long l1 = paramInt1;
        long l2 = paramString1.longValue();
        long l3 = Long.valueOf(paramString2[paramInt2]).longValue();
        paramInt2 += 1;
        paramString1 = Long.valueOf(l1 * (l2 + l3));
      }
      return paramString1;
    }
    catch (NumberFormatException paramString1) {}
    return paramLong;
  }
  
  public static String a(long paramLong)
  {
    return new SimpleDateFormat("yyyyMMdd").format(new Date(paramLong));
  }
  
  public static String a(String paramString)
  {
    if (paramString == null) {
      return "0";
    }
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      int m = 0;
      while (m < paramString.length)
      {
        int n = paramString[m] & 0xFF;
        if (n < 16) {
          ((StringBuffer)localObject).append("0");
        }
        ((StringBuffer)localObject).append(Integer.toHexString(n));
        m += 1;
      }
      paramString = ((StringBuffer)localObject).toString();
      return paramString;
    }
    catch (Throwable paramString) {}
    return "0";
  }
  
  public static HttpHost a(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    do
    {
      try
      {
        if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0) {
          return null;
        }
        paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (paramContext == null) {
          return null;
        }
        if ((paramContext.getTypeName() != null) && (paramContext.getTypeName().equalsIgnoreCase("WIFI"))) {
          return null;
        }
        paramContext = paramContext.getExtraInfo();
        if (paramContext == null) {
          return null;
        }
        if ((paramContext.equals("cmwap")) || (paramContext.equals("3gwap")) || (paramContext.equals("uniwap")))
        {
          paramContext = new HttpHost("10.0.0.172", 80);
          return paramContext;
        }
      }
      catch (Throwable paramContext)
      {
        f.e(paramContext);
        return null;
      }
    } while (!paramContext.equals("ctwap"));
    paramContext = new HttpHost("10.0.0.200", 80);
    return paramContext;
  }
  
  public static void a(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    if (paramString2 != null) {}
    try
    {
      if (paramString2.length() > 0) {
        paramJSONObject.put(paramString1, paramString2);
      }
      return;
    }
    catch (Throwable paramJSONObject)
    {
      f.e(paramJSONObject);
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      int m = paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName());
      if (m == 0) {
        bool = true;
      }
      return bool;
    }
    catch (Throwable paramContext)
    {
      f.e(paramContext);
    }
    return false;
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    GZIPInputStream localGZIPInputStream = new GZIPInputStream(localByteArrayInputStream);
    byte[] arrayOfByte = new byte['က'];
    paramArrayOfByte = new ByteArrayOutputStream(paramArrayOfByte.length * 2);
    for (;;)
    {
      int m = localGZIPInputStream.read(arrayOfByte);
      if (m == -1) {
        break;
      }
      paramArrayOfByte.write(arrayOfByte, 0, m);
    }
    arrayOfByte = paramArrayOfByte.toByteArray();
    localByteArrayInputStream.close();
    localGZIPInputStream.close();
    paramArrayOfByte.close();
    return arrayOfByte;
  }
  
  public static long b(String paramString)
  {
    return a(paramString, ".", 100, 3, Long.valueOf(0L)).longValue();
  }
  
  public static StatLogger b()
  {
    try
    {
      if (f == null)
      {
        f = new StatLogger("MtaSDK");
        f.setDebugEnable(false);
      }
      StatLogger localStatLogger = f;
      return localStatLogger;
    }
    finally {}
  }
  
  /* Error */
  public static String b(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	com/tencent/stat/common/k:a	Ljava/lang/String;
    //   6: ifnull +24 -> 30
    //   9: getstatic 25	com/tencent/stat/common/k:a	Ljava/lang/String;
    //   12: invokevirtual 375	java/lang/String:trim	()Ljava/lang/String;
    //   15: invokevirtual 324	java/lang/String:length	()I
    //   18: ifeq +12 -> 30
    //   21: getstatic 25	com/tencent/stat/common/k:a	Ljava/lang/String;
    //   24: astore_0
    //   25: ldc 2
    //   27: monitorexit
    //   28: aload_0
    //   29: areturn
    //   30: aload_0
    //   31: invokestatic 378	com/tencent/stat/common/k:l	(Landroid/content/Context;)Ljava/lang/String;
    //   34: putstatic 25	com/tencent/stat/common/k:a	Ljava/lang/String;
    //   37: getstatic 25	com/tencent/stat/common/k:a	Ljava/lang/String;
    //   40: ifnull +15 -> 55
    //   43: getstatic 25	com/tencent/stat/common/k:a	Ljava/lang/String;
    //   46: invokevirtual 375	java/lang/String:trim	()Ljava/lang/String;
    //   49: invokevirtual 324	java/lang/String:length	()I
    //   52: ifne +17 -> 69
    //   55: invokestatic 177	com/tencent/stat/common/k:h	()Ljava/util/Random;
    //   58: ldc -78
    //   60: invokevirtual 184	java/util/Random:nextInt	(I)I
    //   63: invokestatic 380	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   66: putstatic 25	com/tencent/stat/common/k:a	Ljava/lang/String;
    //   69: getstatic 25	com/tencent/stat/common/k:a	Ljava/lang/String;
    //   72: astore_0
    //   73: goto -48 -> 25
    //   76: astore_0
    //   77: ldc 2
    //   79: monitorexit
    //   80: aload_0
    //   81: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   3	25	76	finally
    //   30	55	76	finally
    //   55	69	76	finally
    //   69	73	76	finally
  }
  
  public static String b(Context paramContext, String paramString)
  {
    String str = paramString;
    if (StatConfig.isEnableConcurrentProcess() == true)
    {
      if (g == null) {
        g = u(paramContext);
      }
      str = paramString;
      if (g != null) {
        str = paramString + "_" + g;
      }
    }
    return str;
  }
  
  public static long c()
  {
    try
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(11, 0);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      localCalendar.set(14, 0);
      long l = localCalendar.getTimeInMillis();
      return l + 86400000L;
    }
    catch (Throwable localThrowable)
    {
      f.e(localThrowable);
    }
    return System.currentTimeMillis() + 86400000L;
  }
  
  public static String c(Context paramContext)
  {
    try
    {
      if ((c == null) || ("" == c)) {
        c = f(paramContext);
      }
      paramContext = c;
      return paramContext;
    }
    finally {}
  }
  
  public static String c(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (Build.VERSION.SDK_INT < 8);
    try
    {
      str = new String(g.b(e.a(paramString.getBytes("UTF-8")), 0), "UTF-8");
      return str;
    }
    catch (Throwable localThrowable)
    {
      f.e(localThrowable);
    }
    return paramString;
  }
  
  public static int d()
  {
    return Build.VERSION.SDK_INT;
  }
  
  public static DisplayMetrics d(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public static String d(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (Build.VERSION.SDK_INT < 8);
    try
    {
      str = new String(e.b(g.a(paramString.getBytes("UTF-8"), 0)), "UTF-8");
      return str;
    }
    catch (Throwable localThrowable)
    {
      f.e(localThrowable);
    }
    return paramString;
  }
  
  public static String e()
  {
    long l1 = f() / 1000000L;
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    long l2 = localStatFs.getBlockSize();
    l2 = localStatFs.getAvailableBlocks() * l2 / 1000000L;
    return String.valueOf(l2) + "/" + String.valueOf(l1);
  }
  
  public static boolean e(Context paramContext)
  {
    try
    {
      if (!a(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
        break label70;
      }
      paramContext = (ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity");
      if (paramContext == null) {
        break label99;
      }
      paramContext = paramContext.getAllNetworkInfo();
      if (paramContext == null) {
        break label99;
      }
      m = 0;
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        int m;
        label70:
        f.e(paramContext);
        continue;
        m += 1;
      }
    }
    if (m < paramContext.length) {
      if ((paramContext[m].getTypeName().equalsIgnoreCase("WIFI")) && (paramContext[m].isConnected()))
      {
        return true;
        f.warn("can not get the permission of android.permission.ACCESS_WIFI_STATE");
        return false;
      }
    }
    label99:
    return false;
  }
  
  public static long f()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    long l = localStatFs.getBlockSize();
    return localStatFs.getBlockCount() * l;
  }
  
  public static String f(Context paramContext)
  {
    if (a(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
      try
      {
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext == null) {
          return "";
        }
        paramContext = paramContext.getConnectionInfo().getMacAddress();
        return paramContext;
      }
      catch (Exception paramContext)
      {
        f.e(paramContext);
        return "";
      }
    }
    f.e("Could not get permission of android.permission.ACCESS_WIFI_STATE");
    return "";
  }
  
  public static boolean g(Context paramContext)
  {
    try
    {
      if ((a(paramContext, "android.permission.INTERNET")) && (a(paramContext, "android.permission.ACCESS_NETWORK_STATE")))
      {
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramContext != null)
        {
          paramContext = paramContext.getActiveNetworkInfo();
          if ((paramContext == null) || (!paramContext.isAvailable()) || (!paramContext.getTypeName().equalsIgnoreCase("WIFI"))) {
            break label88;
          }
          return true;
        }
      }
      else
      {
        f.warn("can not get the permisson of android.permission.INTERNET");
      }
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        f.e(paramContext);
      }
    }
    return false;
    label88:
    return false;
  }
  
  private static Random h()
  {
    try
    {
      if (e == null) {
        e = new Random();
      }
      Random localRandom = e;
      return localRandom;
    }
    finally {}
  }
  
  public static boolean h(Context paramContext)
  {
    try
    {
      if ((a(paramContext, "android.permission.INTERNET")) && (a(paramContext, "android.permission.ACCESS_NETWORK_STATE")))
      {
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramContext != null)
        {
          paramContext = paramContext.getActiveNetworkInfo();
          if ((paramContext != null) && (paramContext.isAvailable())) {
            return true;
          }
          f.w("Network error");
          return false;
        }
      }
      else
      {
        f.warn("can not get the permisson of android.permission.INTERNET");
      }
    }
    catch (Throwable paramContext)
    {
      for (;;) {}
    }
    return false;
  }
  
  private static long i()
  {
    long l2 = 0L;
    long l1 = l2;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      l1 = l2;
      l2 = Integer.valueOf(localBufferedReader.readLine().split("\\s+")[1]).intValue() * 1024;
      l1 = l2;
      localBufferedReader.close();
      return l2;
    }
    catch (IOException localIOException) {}
    return l1;
  }
  
  public static String i(Context paramContext)
  {
    if (b != null) {
      return b;
    }
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = paramContext.metaData.getString("TA_APPKEY");
        if (paramContext == null) {
          break label62;
        }
        b = paramContext;
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      f.w("Could not read APPKEY meta-data from AndroidManifest.xml");
    }
    for (;;)
    {
      return null;
      label62:
      f.w("Could not read APPKEY meta-data from AndroidManifest.xml");
    }
  }
  
  public static String j(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = paramContext.metaData.get("InstallChannel");
        if (paramContext != null) {
          return paramContext.toString();
        }
        f.w("Could not read InstallChannel meta-data from AndroidManifest.xml");
      }
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        f.e("Could not read InstallChannel meta-data from AndroidManifest.xml");
      }
    }
    return null;
  }
  
  public static String k(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    return paramContext.getClass().getName();
  }
  
  public static String l(Context paramContext)
  {
    String str;
    try
    {
      if (a(paramContext, "android.permission.READ_PHONE_STATE"))
      {
        str = "";
        if (!o(paramContext)) {
          break label59;
        }
        str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
        break label59;
      }
      f.e("Could not get permission of android.permission.READ_PHONE_STATE");
    }
    catch (Throwable paramContext)
    {
      label59:
      do
      {
        for (;;)
        {
          f.e(paramContext);
        }
      } while (str == null);
    }
    return null;
    return str;
  }
  
  public static String m(Context paramContext)
  {
    Context localContext = null;
    try
    {
      if (a(paramContext, "android.permission.READ_PHONE_STATE"))
      {
        if (!o(paramContext)) {
          return localContext;
        }
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext != null)
        {
          paramContext = paramContext.getSimOperator();
          break label65;
        }
      }
      else
      {
        f.e("Could not get permission of android.permission.READ_PHONE_STATE");
        return null;
      }
    }
    catch (Throwable paramContext)
    {
      f.e(paramContext);
      return null;
    }
    paramContext = null;
    label65:
    localContext = paramContext;
    return localContext;
  }
  
  public static String n(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      paramContext = str;
      if (str == null) {
        paramContext = "";
      }
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      f.e(paramContext);
    }
    return "";
  }
  
  public static boolean o(Context paramContext)
  {
    return paramContext.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", paramContext.getPackageName()) == 0;
  }
  
  public static String p(Context paramContext)
  {
    Object localObject;
    try
    {
      if ((a(paramContext, "android.permission.INTERNET")) && (a(paramContext, "android.permission.ACCESS_NETWORK_STATE")))
      {
        localObject = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localObject != null) && (((NetworkInfo)localObject).isConnected()))
        {
          paramContext = ((NetworkInfo)localObject).getTypeName();
          localObject = ((NetworkInfo)localObject).getExtraInfo();
          if (paramContext != null)
          {
            if (paramContext.equalsIgnoreCase("WIFI")) {
              return "WIFI";
            }
            if (!paramContext.equalsIgnoreCase("MOBILE")) {
              break label115;
            }
            if (localObject != null) {
              break label113;
            }
            return "MOBILE";
          }
        }
      }
      else
      {
        f.e("can not get the permission of android.permission.ACCESS_WIFI_STATE");
      }
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        f.e(paramContext);
      }
    }
    return null;
    label113:
    label115:
    do
    {
      return (String)localObject;
    } while (localObject != null);
    return paramContext;
  }
  
  public static Integer q(Context paramContext)
  {
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext != null)
      {
        int m = paramContext.getNetworkType();
        return Integer.valueOf(m);
      }
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  /* Error */
  public static String r(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 270	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: aload_0
    //   5: invokevirtual 275	android/content/Context:getPackageName	()Ljava/lang/String;
    //   8: iconst_0
    //   9: invokevirtual 606	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   12: getfield 611	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   15: astore_0
    //   16: aload_0
    //   17: ifnull +12 -> 29
    //   20: aload_0
    //   21: astore_1
    //   22: aload_0
    //   23: invokevirtual 324	java/lang/String:length	()I
    //   26: ifne +7 -> 33
    //   29: ldc_w 622
    //   32: astore_1
    //   33: aload_1
    //   34: areturn
    //   35: astore_1
    //   36: ldc 106
    //   38: astore_0
    //   39: getstatic 35	com/tencent/stat/common/k:f	Lcom/tencent/stat/common/StatLogger;
    //   42: aload_1
    //   43: invokevirtual 104	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   46: aload_0
    //   47: areturn
    //   48: astore_1
    //   49: goto -10 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramContext	Context
    //   21	13	1	localObject	Object
    //   35	8	1	localThrowable1	Throwable
    //   48	1	1	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   0	16	35	java/lang/Throwable
    //   22	29	48	java/lang/Throwable
  }
  
  public static int s(Context paramContext)
  {
    try
    {
      boolean bool = o.a();
      if (bool) {
        return 1;
      }
    }
    catch (Throwable paramContext)
    {
      f.e(paramContext);
    }
    return 0;
  }
  
  public static String t(Context paramContext)
  {
    try
    {
      if (a(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE"))
      {
        paramContext = Environment.getExternalStorageState();
        if ((paramContext != null) && (paramContext.equals("mounted")))
        {
          paramContext = Environment.getExternalStorageDirectory().getPath();
          if (paramContext != null)
          {
            paramContext = new StatFs(paramContext);
            long l1 = paramContext.getBlockCount() * paramContext.getBlockSize() / 1000000L;
            long l2 = paramContext.getAvailableBlocks();
            l2 = paramContext.getBlockSize() * l2 / 1000000L;
            return String.valueOf(l2) + "/" + String.valueOf(l1);
          }
        }
      }
      else
      {
        f.warn("can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE");
        return null;
      }
    }
    catch (Throwable paramContext)
    {
      f.e(paramContext);
    }
    return null;
  }
  
  static String u(Context paramContext)
  {
    try
    {
      int m = Process.myPid();
      paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if (localRunningAppProcessInfo.pid == m)
        {
          paramContext = localRunningAppProcessInfo.processName;
          return paramContext;
        }
      }
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public static String v(Context paramContext)
  {
    return b(paramContext, StatConstants.a);
  }
  
  public static Integer w(Context paramContext)
  {
    int n = 0;
    int m = 0;
    for (;;)
    {
      int i1;
      try
      {
        i1 = p.a(paramContext, "MTA_EVENT_INDEX", 0);
        if (i1 < 2147483646) {
          break label64;
        }
        n = m;
        p.b(paramContext, "MTA_EVENT_INDEX", m + 1);
      }
      catch (Throwable paramContext)
      {
        f.e(paramContext);
        m = n;
        continue;
      }
      finally {}
      return Integer.valueOf(m + 1);
      label64:
      m = i1;
    }
  }
  
  public static String x(Context paramContext)
  {
    long l1 = G(paramContext) / 1000000L;
    long l2 = i() / 1000000L;
    return String.valueOf(l1) + "/" + String.valueOf(l2);
  }
  
  public static l y(Context paramContext)
  {
    try
    {
      if (h == null) {
        h = new l();
      }
      paramContext = h;
      return paramContext;
    }
    finally {}
  }
  
  public static JSONObject z(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      y(paramContext);
      int m = l.b();
      if (m > 0) {
        localJSONObject.put("fx", m / 1000000);
      }
      y(paramContext);
      m = l.c();
      if (m > 0) {
        localJSONObject.put("fn", m / 1000000);
      }
      y(paramContext);
      m = l.a();
      if (m > 0) {
        localJSONObject.put("n", m);
      }
      y(paramContext);
      String str = l.d();
      if ((str != null) && (str.length() == 0))
      {
        y(paramContext);
        localJSONObject.put("na", l.d());
      }
      return localJSONObject;
    }
    catch (Exception paramContext)
    {
      f.e(paramContext);
    }
    return localJSONObject;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/common/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */