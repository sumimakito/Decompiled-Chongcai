package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.k;
import com.tencent.stat.common.p;
import java.util.Iterator;
import org.apache.http.HttpHost;
import org.json.JSONException;
import org.json.JSONObject;

public class StatConfig
{
  private static int A = 4096;
  private static boolean B = false;
  private static String C = null;
  static b a;
  static b b;
  static String c;
  static String d;
  private static StatLogger e = ;
  private static StatReportStrategy f;
  private static boolean g;
  private static int h;
  private static int i;
  public static boolean isAutoExceptionCaught;
  private static int j;
  private static int k;
  private static int l;
  private static String m;
  private static String n;
  private static String o;
  private static int p;
  private static int q;
  private static boolean r;
  private static long s;
  private static long t;
  private static String u;
  private static int v;
  private static volatile int w;
  private static int x;
  private static int y;
  private static boolean z;
  
  static
  {
    a = new b(2);
    b = new b(1);
    f = StatReportStrategy.APP_LAUNCH;
    g = true;
    h = 30000;
    i = 1024;
    j = 30;
    k = 3;
    l = 30;
    c = "__HIBERNATE__";
    m = null;
    d = "";
    p = 1440;
    q = 1024;
    r = true;
    s = 0L;
    t = 300000L;
    isAutoExceptionCaught = true;
    u = "http://pingma.qq.com:80/mstat/report";
    v = 0;
    w = 0;
    x = 20;
    y = 0;
    z = false;
  }
  
  static int a()
  {
    return j;
  }
  
  static String a(Context paramContext)
  {
    return k.d(p.a(paramContext, "_mta_ky_tag_", null));
  }
  
  static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = b.b.getString(paramString1);
      if (paramString1 != null) {
        paramString2 = paramString1;
      }
      return paramString2;
    }
    catch (Throwable paramString1)
    {
      e.w(paramString1);
    }
    return paramString2;
  }
  
  static void a(int paramInt)
  {
    try
    {
      w = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static void a(Context paramContext, String paramString)
  {
    if (paramString != null) {
      p.b(paramContext, "_mta_ky_tag_", k.c(paramString));
    }
  }
  
  static void a(b paramb)
  {
    if (paramb.a == b.a)
    {
      b = paramb;
      b(b.b);
    }
    while (paramb.a != a.a) {
      return;
    }
    a = paramb;
  }
  
  static void a(b paramb, JSONObject paramJSONObject)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        Iterator localIterator = paramJSONObject.keys();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str.equalsIgnoreCase("v"))
          {
            int i2 = paramJSONObject.getInt(str);
            if (paramb.d != i2)
            {
              i1 = 1;
              paramb.d = i2;
              break;
            }
          }
          else
          {
            if (str.equalsIgnoreCase("c"))
            {
              str = paramJSONObject.getString("c");
              if (str.length() <= 0) {
                break label203;
              }
              paramb.b = new JSONObject(str);
              break label203;
            }
            if (!str.equalsIgnoreCase("m")) {
              break label206;
            }
            paramb.c = paramJSONObject.getString("m");
            break label206;
          }
        }
        else
        {
          if (i1 == 1)
          {
            paramJSONObject = n.a(d.a());
            if (paramJSONObject != null) {
              paramJSONObject.a(paramb);
            }
            if (paramb.a == b.a)
            {
              b(paramb.b);
              c(paramb.b);
            }
          }
          return;
        }
      }
      catch (JSONException paramb)
      {
        e.e(paramb);
        return;
      }
      catch (Throwable paramb)
      {
        e.e(paramb);
        return;
      }
    }
    label203:
    label206:
    for (;;)
    {
      break;
    }
  }
  
  static void a(JSONObject paramJSONObject)
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = paramJSONObject.keys();
        if (localIterator.hasNext())
        {
          localObject = (String)localIterator.next();
          if (((String)localObject).equalsIgnoreCase(Integer.toString(b.a)))
          {
            localObject = paramJSONObject.getJSONObject((String)localObject);
            a(b, (JSONObject)localObject);
          }
        }
        else
        {
          return;
        }
      }
      catch (JSONException paramJSONObject)
      {
        e.e(paramJSONObject);
      }
      do
      {
        if (((String)localObject).equalsIgnoreCase(Integer.toString(a.a)))
        {
          localObject = paramJSONObject.getJSONObject((String)localObject);
          a(a, (JSONObject)localObject);
          break;
        }
      } while (!((String)localObject).equalsIgnoreCase("rs"));
      Object localObject = StatReportStrategy.getStatReportStrategy(paramJSONObject.getInt((String)localObject));
      if (localObject != null)
      {
        f = (StatReportStrategy)localObject;
        e.d("Change to ReportStrategy:" + ((StatReportStrategy)localObject).name());
      }
    }
  }
  
  static void a(boolean paramBoolean)
  {
    StatNativeCrashReport.setNativeCrashDebugEnable(paramBoolean);
  }
  
  static boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    return (paramInt1 >= paramInt2) && (paramInt1 <= paramInt3);
  }
  
  private static boolean a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      if (n == null)
      {
        n = paramString;
        return true;
      }
    } while (n.contains(paramString));
    n = n + "|" + paramString;
    return true;
  }
  
  static HttpHost b()
  {
    if ((m != null) && (m.length() > 0))
    {
      String str = m;
      String[] arrayOfString = str.split(":");
      int i1 = 80;
      if (arrayOfString.length == 2)
      {
        str = arrayOfString[0];
        i1 = Integer.parseInt(arrayOfString[1]);
      }
      return new HttpHost(str, i1);
    }
    return null;
  }
  
  static void b(int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    y = paramInt;
  }
  
  static void b(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = StatReportStrategy.getStatReportStrategy(paramJSONObject.getInt("rs"));
      if (paramJSONObject != null) {
        setStatSendStrategy(paramJSONObject);
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      e.d("rs not found.");
    }
  }
  
  static void c()
  {
    try
    {
      w += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static void c(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = paramJSONObject.getString(c);
      e.d("hibernateVer:" + paramJSONObject + ", current version:" + "1.6.2");
      long l1 = k.b(paramJSONObject);
      if (k.b("1.6.2") <= l1)
      {
        p.b(d.a(), c, l1);
        setEnableStatService(false);
        e.warn("MTA has disable for SDK version of " + paramJSONObject + " or lower.");
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      e.d("__HIBERNATE__ not found.");
    }
  }
  
  static void d()
  {
    y += 1;
  }
  
  static int e()
  {
    return y;
  }
  
  /* Error */
  public static String getAppKey(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 268	com/tencent/stat/StatConfig:n	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: getstatic 268	com/tencent/stat/StatConfig:n	Ljava/lang/String;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: aload_0
    //   19: ifnull +16 -> 35
    //   22: getstatic 268	com/tencent/stat/StatConfig:n	Ljava/lang/String;
    //   25: ifnonnull +10 -> 35
    //   28: aload_0
    //   29: invokestatic 322	com/tencent/stat/common/k:i	(Landroid/content/Context;)Ljava/lang/String;
    //   32: putstatic 268	com/tencent/stat/StatConfig:n	Ljava/lang/String;
    //   35: getstatic 268	com/tencent/stat/StatConfig:n	Ljava/lang/String;
    //   38: ifnull +15 -> 53
    //   41: getstatic 268	com/tencent/stat/StatConfig:n	Ljava/lang/String;
    //   44: invokevirtual 325	java/lang/String:trim	()Ljava/lang/String;
    //   47: invokevirtual 200	java/lang/String:length	()I
    //   50: ifne +12 -> 62
    //   53: getstatic 50	com/tencent/stat/StatConfig:e	Lcom/tencent/stat/common/StatLogger;
    //   56: ldc_w 327
    //   59: invokevirtual 330	com/tencent/stat/common/StatLogger:error	(Ljava/lang/Object;)V
    //   62: getstatic 268	com/tencent/stat/StatConfig:n	Ljava/lang/String;
    //   65: astore_0
    //   66: goto -53 -> 13
    //   69: astore_0
    //   70: ldc 2
    //   72: monitorexit
    //   73: aload_0
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   3	13	69	finally
    //   22	35	69	finally
    //   35	53	69	finally
    //   53	62	69	finally
    //   62	66	69	finally
  }
  
  public static int getCurSessionStatReportCount()
  {
    return w;
  }
  
  public static String getCustomProperty(String paramString)
  {
    try
    {
      paramString = a.b.getString(paramString);
      return paramString;
    }
    catch (Throwable paramString)
    {
      e.e(paramString);
    }
    return null;
  }
  
  public static String getCustomProperty(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = a.b.getString(paramString1);
      if (paramString1 != null) {
        paramString2 = paramString1;
      }
      return paramString2;
    }
    catch (Throwable paramString1)
    {
      e.e(paramString1);
    }
    return paramString2;
  }
  
  public static String getCustomUserId(Context paramContext)
  {
    if (paramContext == null)
    {
      e.error("Context for getCustomUid is null.");
      return null;
    }
    if (C == null) {
      C = p.a(paramContext, "MTA_CUSTOM_UID", "");
    }
    return C;
  }
  
  public static DeviceInfo getDeviceInfo(Context paramContext)
  {
    return StatMid.getDeviceInfo(paramContext);
  }
  
  /* Error */
  public static String getInstallChannel(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 346	com/tencent/stat/StatConfig:o	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: getstatic 346	com/tencent/stat/StatConfig:o	Ljava/lang/String;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: aload_0
    //   19: invokestatic 348	com/tencent/stat/common/k:j	(Landroid/content/Context;)Ljava/lang/String;
    //   22: putstatic 346	com/tencent/stat/StatConfig:o	Ljava/lang/String;
    //   25: getstatic 346	com/tencent/stat/StatConfig:o	Ljava/lang/String;
    //   28: ifnull +15 -> 43
    //   31: getstatic 346	com/tencent/stat/StatConfig:o	Ljava/lang/String;
    //   34: invokevirtual 325	java/lang/String:trim	()Ljava/lang/String;
    //   37: invokevirtual 200	java/lang/String:length	()I
    //   40: ifne +12 -> 52
    //   43: getstatic 50	com/tencent/stat/StatConfig:e	Lcom/tencent/stat/common/StatLogger;
    //   46: ldc_w 350
    //   49: invokevirtual 154	com/tencent/stat/common/StatLogger:w	(Ljava/lang/Object;)V
    //   52: getstatic 346	com/tencent/stat/StatConfig:o	Ljava/lang/String;
    //   55: astore_0
    //   56: goto -43 -> 13
    //   59: astore_0
    //   60: ldc 2
    //   62: monitorexit
    //   63: aload_0
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   3	13	59	finally
    //   18	43	59	finally
    //   43	52	59	finally
    //   52	56	59	finally
  }
  
  public static int getMaxBatchReportCount()
  {
    return l;
  }
  
  public static int getMaxDaySessionNumbers()
  {
    return x;
  }
  
  public static int getMaxParallelTimmingEvents()
  {
    return q;
  }
  
  public static int getMaxReportEventLength()
  {
    return A;
  }
  
  public static int getMaxSendRetryCount()
  {
    return k;
  }
  
  public static int getMaxSessionStatReportCount()
  {
    return v;
  }
  
  public static int getMaxStoreEventCount()
  {
    return i;
  }
  
  public static String getMid(Context paramContext)
  {
    return StatMid.getMid(paramContext);
  }
  
  public static String getQQ()
  {
    return d;
  }
  
  public static int getSendPeriodMinutes()
  {
    return p;
  }
  
  public static int getSessionTimoutMillis()
  {
    return h;
  }
  
  public static String getStatReportUrl()
  {
    return u;
  }
  
  public static StatReportStrategy getStatSendStrategy()
  {
    return f;
  }
  
  public static void initNativeCrashReport(Context paramContext, String paramString)
  {
    if (!isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      e.error("The Context of StatConfig.initNativeCrashReport() can not be null!");
      return;
    }
    StatNativeCrashReport.initNativeCrash(paramContext, paramString);
  }
  
  public static boolean isAutoExceptionCaught()
  {
    return isAutoExceptionCaught;
  }
  
  public static boolean isDebugEnable()
  {
    return k.b().isDebugEnable();
  }
  
  public static boolean isEnableConcurrentProcess()
  {
    return B;
  }
  
  public static boolean isEnableSmartReporting()
  {
    return r;
  }
  
  public static boolean isEnableStatService()
  {
    return g;
  }
  
  public static void setAppKey(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      e.error("ctx in StatConfig.setAppKey() is null");
    }
    do
    {
      return;
      if ((paramString == null) || (paramString.length() > 256))
      {
        e.error("appkey in StatConfig.setAppKey() is null or exceed 256 bytes");
        return;
      }
      if (n == null) {
        n = a(paramContext);
      }
    } while (!(a(paramString) | a(k.i(paramContext))));
    a(paramContext, n);
  }
  
  public static void setAppKey(String paramString)
  {
    if (paramString == null)
    {
      e.error("appkey in StatConfig.setAppKey() is null");
      return;
    }
    if (paramString.length() > 256)
    {
      e.error("The length of appkey cann't exceed 256 bytes.");
      return;
    }
    n = paramString;
  }
  
  public static void setAutoExceptionCaught(boolean paramBoolean)
  {
    isAutoExceptionCaught = paramBoolean;
  }
  
  public static void setCustomUserId(Context paramContext, String paramString)
  {
    if (paramContext == null)
    {
      e.error("Context for setCustomUid is null.");
      return;
    }
    p.b(paramContext, "MTA_CUSTOM_UID", paramString);
    C = paramString;
  }
  
  public static void setDebugEnable(boolean paramBoolean)
  {
    k.b().setDebugEnable(paramBoolean);
    a(paramBoolean);
  }
  
  public static void setEnableConcurrentProcess(boolean paramBoolean)
  {
    B = paramBoolean;
  }
  
  public static void setEnableSmartReporting(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public static void setEnableStatService(boolean paramBoolean)
  {
    g = paramBoolean;
    if (!paramBoolean) {
      e.warn("!!!!!!MTA StatService has been disabled!!!!!!");
    }
  }
  
  public static void setInstallChannel(String paramString)
  {
    if (paramString.length() > 128)
    {
      e.error("the length of installChannel can not exceed the range of 128 bytes.");
      return;
    }
    o = paramString;
  }
  
  public static void setMaxBatchReportCount(int paramInt)
  {
    if (!a(paramInt, 2, 1000))
    {
      e.error("setMaxBatchReportCount can not exceed the range of [2,1000].");
      return;
    }
    l = paramInt;
  }
  
  public static void setMaxDaySessionNumbers(int paramInt)
  {
    if (paramInt <= 0)
    {
      e.e("maxDaySessionNumbers must be greater than 0.");
      return;
    }
    x = paramInt;
  }
  
  public static void setMaxParallelTimmingEvents(int paramInt)
  {
    if (!a(paramInt, 1, 4096))
    {
      e.error("setMaxParallelTimmingEvents can not exceed the range of [1, 4096].");
      return;
    }
    q = paramInt;
  }
  
  public static void setMaxReportEventLength(int paramInt)
  {
    if (paramInt <= 0)
    {
      e.error("maxReportEventLength on setMaxReportEventLength() must greater than 0.");
      return;
    }
    A = paramInt;
  }
  
  public static void setMaxSendRetryCount(int paramInt)
  {
    if (!a(paramInt, 1, 1000))
    {
      e.error("setMaxSendRetryCount can not exceed the range of [1,1000].");
      return;
    }
    k = paramInt;
  }
  
  public static void setMaxSessionStatReportCount(int paramInt)
  {
    if (paramInt < 0)
    {
      e.error("maxSessionStatReportCount cannot be less than 0.");
      return;
    }
    v = paramInt;
  }
  
  public static void setMaxStoreEventCount(int paramInt)
  {
    if (!a(paramInt, 0, 500000))
    {
      e.error("setMaxStoreEventCount can not exceed the range of [0, 500000].");
      return;
    }
    i = paramInt;
  }
  
  public static void setQQ(Context paramContext, String paramString)
  {
    StatService.reportQQ(paramContext, paramString);
  }
  
  public static void setSendPeriodMinutes(int paramInt)
  {
    if (!a(paramInt, 1, 10080))
    {
      e.error("setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes.");
      return;
    }
    p = paramInt;
  }
  
  public static void setSessionTimoutMillis(int paramInt)
  {
    if (!a(paramInt, 1000, 86400000))
    {
      e.error("setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000].");
      return;
    }
    h = paramInt;
  }
  
  public static void setStatReportUrl(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      e.error("statReportUrl cannot be null or empty.");
      return;
    }
    u = paramString;
  }
  
  public static void setStatSendStrategy(StatReportStrategy paramStatReportStrategy)
  {
    f = paramStatReportStrategy;
    e.d("Change to statSendStrategy: " + paramStatReportStrategy);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/StatConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */