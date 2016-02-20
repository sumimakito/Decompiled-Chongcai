package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.stat.a.c;
import com.tencent.stat.a.h;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.f;
import com.tencent.stat.common.p;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class StatService
{
  private static Handler a;
  private static volatile Map<c, Long> b = new ConcurrentHashMap();
  private static volatile long c = 0L;
  private static volatile long d = 0L;
  private static volatile int e = 0;
  private static volatile String f = "";
  private static volatile String g = "";
  private static Map<String, Long> h = new ConcurrentHashMap();
  private static StatLogger i = com.tencent.stat.common.k.b();
  private static Thread.UncaughtExceptionHandler j = null;
  private static volatile boolean k = true;
  
  static int a(Context paramContext, boolean paramBoolean)
  {
    int n = 1;
    long l = System.currentTimeMillis();
    if ((paramBoolean) && (l - c >= StatConfig.getSessionTimoutMillis())) {}
    for (int m = 1;; m = 0)
    {
      c = l;
      if (d == 0L) {
        d = com.tencent.stat.common.k.c();
      }
      if (l >= d)
      {
        d = com.tencent.stat.common.k.c();
        if (n.a(paramContext).b(paramContext).getUserType() != 1) {
          n.a(paramContext).b(paramContext).b(1);
        }
        StatConfig.b(0);
        StatMid.a(paramContext);
        m = 1;
      }
      if (k) {
        m = n;
      }
      for (;;)
      {
        if (m != 0)
        {
          if (StatConfig.e() >= StatConfig.getMaxDaySessionNumbers()) {
            break label154;
          }
          com.tencent.stat.common.k.F(paramContext);
          d(paramContext);
        }
        for (;;)
        {
          if (k)
          {
            f.b(paramContext);
            testSpeed(paramContext);
            e(paramContext);
            k = false;
          }
          return e;
          label154:
          i.e("Exceed StatConfig.getMaxDaySessionNumbers().");
        }
      }
    }
  }
  
  static JSONObject a()
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      JSONObject localJSONObject2 = new JSONObject();
      if (StatConfig.b.d != 0) {
        localJSONObject2.put("v", StatConfig.b.d);
      }
      localJSONObject1.put(Integer.toString(StatConfig.b.a), localJSONObject2);
      localJSONObject2 = new JSONObject();
      if (StatConfig.a.d != 0) {
        localJSONObject2.put("v", StatConfig.a.d);
      }
      localJSONObject1.put(Integer.toString(StatConfig.a.a), localJSONObject2);
      return localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      i.e(localJSONException);
    }
    return localJSONObject1;
  }
  
  static void a(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return;
      try
      {
        if ((a == null) && (b(paramContext))) {
          if (!f.a(paramContext))
          {
            i.e("ooh, Compatibility problem was found in this device!");
            i.e("If you are on debug mode, please delete apk and try again.");
            StatConfig.setEnableStatService(false);
          }
        }
      }
      finally {}
    }
    HandlerThread localHandlerThread = new HandlerThread("StatService");
    localHandlerThread.start();
    a = new Handler(localHandlerThread.getLooper());
    n.a(paramContext);
    d.a(paramContext);
    d.b();
    StatConfig.getDeviceInfo(paramContext);
    j = Thread.getDefaultUncaughtExceptionHandler();
    if (StatConfig.isAutoExceptionCaught()) {
      Thread.setDefaultUncaughtExceptionHandler(new g(paramContext.getApplicationContext()));
    }
    for (;;)
    {
      if ((StatConfig.getStatSendStrategy() == StatReportStrategy.APP_LAUNCH) && (com.tencent.stat.common.k.h(paramContext))) {
        n.a(paramContext).a(-1);
      }
      i.d("Init MTA StatService success.");
      break;
      i.warn("MTA SDK AutoExceptionCaught is disable");
    }
  }
  
  static void a(Context paramContext, Throwable paramThrowable)
  {
    try
    {
      if (!StatConfig.isEnableStatService()) {
        return;
      }
      if (paramContext == null)
      {
        i.error("The Context of StatService.reportSdkSelfException() can not be null!");
        return;
      }
    }
    catch (Throwable paramContext)
    {
      i.e("reportSdkSelfException error: " + paramContext);
      return;
    }
    paramThrowable = new com.tencent.stat.a.d(paramContext, a(paramContext, false), 99, paramThrowable);
    if (c(paramContext) != null) {
      c(paramContext).post(new k(paramThrowable));
    }
  }
  
  static void a(Context paramContext, Map<String, ?> paramMap)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.sendAdditionEvent() can not be null!");
        return;
      }
      try
      {
        paramMap = new com.tencent.stat.a.a(paramContext, a(paramContext, false), paramMap);
        if (c(paramContext) != null)
        {
          c(paramContext).post(new k(paramMap));
          return;
        }
      }
      catch (Throwable paramMap)
      {
        i.e(paramMap);
        a(paramContext, paramMap);
      }
    }
  }
  
  static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  static boolean b(Context paramContext)
  {
    long l = p.a(paramContext, StatConfig.c, 0L);
    if (com.tencent.stat.common.k.b("1.6.2") <= l)
    {
      StatConfig.setEnableStatService(false);
      return false;
    }
    return true;
  }
  
  static Handler c(Context paramContext)
  {
    if (a == null) {
      a(paramContext);
    }
    return a;
  }
  
  public static void commitEvents(Context paramContext, int paramInt)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      i.error("The Context of StatService.commitEvents() can not be null!");
      return;
    }
    if ((paramInt < -1) || (paramInt == 0))
    {
      i.error("The maxNumber of StatService.commitEvents() should be -1 or bigger than 0.");
      return;
    }
    try
    {
      n.a(paramContext).a(paramInt);
      return;
    }
    catch (Throwable localThrowable)
    {
      i.e(localThrowable);
      a(paramContext, localThrowable);
    }
  }
  
  static void d(Context paramContext)
  {
    if (c(paramContext) != null)
    {
      i.d("start new session.");
      e = com.tencent.stat.common.k.a();
      StatConfig.a(0);
      StatConfig.d();
      c(paramContext).post(new k(new com.tencent.stat.a.k(paramContext, e, a())));
    }
  }
  
  static void e(Context paramContext)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.reportNativeCrash() can not be null!");
        return;
      }
      try
      {
        if (c(paramContext) != null)
        {
          c(paramContext).post(new i(paramContext));
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        i.e(localThrowable);
        a(paramContext, localThrowable);
      }
    }
  }
  
  public static void onPause(Context paramContext)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      i.error("The Context of StatService.onPause() can not be null!");
      return;
    }
    trackEndPage(paramContext, com.tencent.stat.common.k.k(paramContext));
  }
  
  public static void onResume(Context paramContext)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      i.error("The Context of StatService.onResume() can not be null!");
      return;
    }
    trackBeginPage(paramContext, com.tencent.stat.common.k.k(paramContext));
  }
  
  public static void reportAppMonitorStat(Context paramContext, StatAppMonitor paramStatAppMonitor)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.reportAppMonitorStat() can not be null!");
        return;
      }
      if (paramStatAppMonitor == null)
      {
        i.error("The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!");
        return;
      }
      if (paramStatAppMonitor.getInterfaceName() == null)
      {
        i.error("The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!");
        return;
      }
      try
      {
        paramStatAppMonitor = new h(paramContext, a(paramContext, false), paramStatAppMonitor);
        if (c(paramContext) != null)
        {
          c(paramContext).post(new k(paramStatAppMonitor));
          return;
        }
      }
      catch (Throwable paramStatAppMonitor)
      {
        i.e(paramStatAppMonitor);
        a(paramContext, paramStatAppMonitor);
      }
    }
  }
  
  public static void reportError(Context paramContext, String paramString)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.reportError() can not be null!");
        return;
      }
      if (a(paramString))
      {
        i.error("Error message in StatService.reportError() is empty.");
        return;
      }
      try
      {
        paramString = new com.tencent.stat.a.d(paramContext, a(paramContext, false), paramString, 0, StatConfig.getMaxReportEventLength());
        if (c(paramContext) != null)
        {
          c(paramContext).post(new k(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        i.e(paramString);
        a(paramContext, paramString);
      }
    }
  }
  
  public static void reportException(Context paramContext, Throwable paramThrowable)
  {
    if (!StatConfig.isEnableStatService()) {}
    do
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.reportException() can not be null!");
        return;
      }
      if (paramThrowable == null)
      {
        i.error("The Throwable error message of StatService.reportException() can not be null!");
        return;
      }
      paramThrowable = new com.tencent.stat.a.d(paramContext, a(paramContext, false), 1, paramThrowable);
    } while (c(paramContext) == null);
    c(paramContext).post(new k(paramThrowable));
  }
  
  public static void reportGameUser(Context paramContext, StatGameUser paramStatGameUser)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.reportGameUser() can not be null!");
        return;
      }
      if (paramStatGameUser == null)
      {
        i.error("The gameUser of StatService.reportGameUser() can not be null!");
        return;
      }
      if ((paramStatGameUser.getAccount() == null) || (paramStatGameUser.getAccount().length() == 0))
      {
        i.error("The account of gameUser on StatService.reportGameUser() can not be null or empty!");
        return;
      }
      try
      {
        paramStatGameUser = new com.tencent.stat.a.g(paramContext, a(paramContext, false), paramStatGameUser);
        if (c(paramContext) != null)
        {
          c(paramContext).post(new k(paramStatGameUser));
          return;
        }
      }
      catch (Throwable paramStatGameUser)
      {
        i.e(paramStatGameUser);
        a(paramContext, paramStatGameUser);
      }
    }
  }
  
  public static void reportQQ(Context paramContext, String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!StatConfig.d.equals(str))
    {
      StatConfig.d = new String(str);
      a(paramContext, null);
    }
  }
  
  public static void setEnvAttributes(Context paramContext, Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.size() > 512))
    {
      i.error("The map in setEnvAttributes can't be null or its size can't exceed 512.");
      return;
    }
    try
    {
      com.tencent.stat.common.a.a(paramContext, paramMap);
      return;
    }
    catch (JSONException paramContext)
    {
      i.e(paramContext);
    }
  }
  
  public static void startNewSession(Context paramContext)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      i.error("The Context of StatService.startNewSession() can not be null!");
      return;
    }
    try
    {
      stopSession();
      a(paramContext, true);
      return;
    }
    catch (Throwable localThrowable)
    {
      i.e(localThrowable);
      a(paramContext, localThrowable);
    }
  }
  
  public static boolean startStatService(Context paramContext, String paramString1, String paramString2)
  {
    if (!StatConfig.isEnableStatService())
    {
      i.error("MTA StatService is disable.");
      return false;
    }
    i.d("MTA SDK version, current: " + "1.6.2" + " ,required: " + paramString2);
    if ((paramContext == null) || (paramString2 == null))
    {
      i.error("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
      StatConfig.setEnableStatService(false);
      throw new MtaSDkException("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
    }
    if (com.tencent.stat.common.k.b("1.6.2") < com.tencent.stat.common.k.b(paramString2))
    {
      paramContext = "MTA SDK version conflicted, current: " + "1.6.2" + ",required: " + paramString2;
      paramContext = paramContext + ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/";
      i.error(paramContext);
      StatConfig.setEnableStatService(false);
      throw new MtaSDkException(paramContext);
    }
    try
    {
      paramString2 = StatConfig.getInstallChannel(paramContext);
      if ((paramString2 == null) || (paramString2.length() == 0)) {
        StatConfig.setInstallChannel("-");
      }
      if (paramString1 != null) {
        StatConfig.setAppKey(paramContext, paramString1);
      }
      c(paramContext);
      a(paramContext, false);
      return true;
    }
    catch (Throwable paramContext)
    {
      i.e(paramContext);
    }
    return false;
  }
  
  public static void stopSession()
  {
    c = 0L;
  }
  
  public static void testSpeed(Context paramContext)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.testSpeed() can not be null!");
        return;
      }
      try
      {
        if (c(paramContext) != null)
        {
          c(paramContext).post(new j(paramContext, null));
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        i.e(localThrowable);
        a(paramContext, localThrowable);
      }
    }
  }
  
  public static void testSpeed(Context paramContext, Map<String, Integer> paramMap)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.testSpeed() can not be null!");
        return;
      }
      if ((paramMap == null) || (paramMap.size() == 0))
      {
        i.error("The domainMap of StatService.testSpeed() can not be null or empty!");
        return;
      }
      try
      {
        if (c(paramContext) != null)
        {
          c(paramContext).post(new j(paramContext, paramMap));
          return;
        }
      }
      catch (Throwable paramMap)
      {
        i.e(paramMap);
        a(paramContext, paramMap);
      }
    }
  }
  
  public static void trackBeginPage(Context paramContext, String paramString)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if ((paramContext == null) || (paramString == null) || (paramString.length() == 0))
    {
      i.error("The Context or pageName of StatService.trackBeginPage() can not be null or empty!");
      return;
    }
    try
    {
      synchronized (h)
      {
        if (h.size() >= StatConfig.getMaxParallelTimmingEvents())
        {
          i.error("The number of page events exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
          return;
        }
      }
      f = paramString;
    }
    catch (Throwable paramString)
    {
      i.e(paramString);
      a(paramContext, paramString);
      return;
    }
    if (h.containsKey(f))
    {
      i.e("Duplicate PageID : " + f + ", onResume() repeated?");
      return;
    }
    h.put(f, Long.valueOf(System.currentTimeMillis()));
    a(paramContext, true);
  }
  
  public static void trackCustomBeginEvent(Context paramContext, String paramString, String... paramVarArgs)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      i.error("The Context of StatService.trackCustomBeginEvent() can not be null!");
      return;
    }
    if (a(paramString))
    {
      i.error("The event_id of StatService.trackCustomBeginEvent() can not be null or empty.");
      return;
    }
    try
    {
      paramString = new c(paramString, paramVarArgs, null);
      if (b.containsKey(paramString))
      {
        i.error("Duplicate CustomEvent key: " + paramString.toString() + ", trackCustomBeginEvent() repeated?");
        return;
      }
    }
    catch (Throwable paramString)
    {
      i.e(paramString);
      a(paramContext, paramString);
      return;
    }
    if (b.size() <= StatConfig.getMaxParallelTimmingEvents())
    {
      b.put(paramString, Long.valueOf(System.currentTimeMillis()));
      return;
    }
    i.error("The number of timedEvent exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
  }
  
  public static void trackCustomBeginKVEvent(Context paramContext, String paramString, Properties paramProperties)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      i.error("The Context of StatService.trackCustomBeginEvent() can not be null!");
      return;
    }
    if (a(paramString))
    {
      i.error("The event_id of StatService.trackCustomBeginEvent() can not be null or empty.");
      return;
    }
    try
    {
      paramString = new c(paramString, null, paramProperties);
      if (b.containsKey(paramString))
      {
        i.error("Duplicate CustomEvent key: " + paramString.toString() + ", trackCustomBeginKVEvent() repeated?");
        return;
      }
    }
    catch (Throwable paramString)
    {
      i.e(paramString);
      a(paramContext, paramString);
      return;
    }
    if (b.size() <= StatConfig.getMaxParallelTimmingEvents())
    {
      b.put(paramString, Long.valueOf(System.currentTimeMillis()));
      return;
    }
    i.error("The number of timedEvent exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
  }
  
  public static void trackCustomEndEvent(Context paramContext, String paramString, String... paramVarArgs)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      i.error("The Context of StatService.trackCustomEndEvent() can not be null!");
      return;
    }
    if (a(paramString))
    {
      i.error("The event_id of StatService.trackCustomEndEvent() can not be null or empty.");
      return;
    }
    c localc;
    for (;;)
    {
      try
      {
        localc = new c(paramString, paramVarArgs, null);
        Long localLong = (Long)b.remove(localc);
        if (localLong == null) {
          break label175;
        }
        paramString = new com.tencent.stat.a.b(paramContext, a(paramContext, false), paramString);
        paramString.a(paramVarArgs);
        paramVarArgs = Long.valueOf((System.currentTimeMillis() - localLong.longValue()) / 1000L);
        if (paramVarArgs.longValue() == 0L)
        {
          l = 1L;
          paramString.a(Long.valueOf(l).longValue());
          if (c(paramContext) == null) {
            break;
          }
          c(paramContext).post(new k(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        i.e(paramString);
        a(paramContext, paramString);
        return;
      }
      long l = paramVarArgs.longValue();
    }
    label175:
    i.error("No start time found for custom event: " + localc.toString() + ", lost trackCustomBeginEvent()?");
  }
  
  public static void trackCustomEndKVEvent(Context paramContext, String paramString, Properties paramProperties)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      i.error("The Context of StatService.trackCustomEndEvent() can not be null!");
      return;
    }
    if (a(paramString))
    {
      i.error("The event_id of StatService.trackCustomEndEvent() can not be null or empty.");
      return;
    }
    c localc;
    for (;;)
    {
      try
      {
        localc = new c(paramString, null, paramProperties);
        Long localLong = (Long)b.remove(localc);
        if (localLong == null) {
          break label175;
        }
        paramString = new com.tencent.stat.a.b(paramContext, a(paramContext, false), paramString);
        paramString.a(paramProperties);
        paramProperties = Long.valueOf((System.currentTimeMillis() - localLong.longValue()) / 1000L);
        if (paramProperties.longValue() == 0L)
        {
          l = 1L;
          paramString.a(Long.valueOf(l).longValue());
          if (c(paramContext) == null) {
            break;
          }
          c(paramContext).post(new k(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        i.e(paramString);
        a(paramContext, paramString);
        return;
      }
      long l = paramProperties.longValue();
    }
    label175:
    i.error("No start time found for custom event: " + localc.toString() + ", lost trackCustomBeginKVEvent()?");
  }
  
  public static void trackCustomEvent(Context paramContext, String paramString, String... paramVarArgs)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.trackCustomEvent() can not be null!");
        return;
      }
      if (a(paramString))
      {
        i.error("The event_id of StatService.trackCustomEvent() can not be null or empty.");
        return;
      }
      try
      {
        paramString = new com.tencent.stat.a.b(paramContext, a(paramContext, false), paramString);
        paramString.a(paramVarArgs);
        if (c(paramContext) != null)
        {
          c(paramContext).post(new k(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        i.e(paramString);
        a(paramContext, paramString);
      }
    }
  }
  
  public static void trackCustomKVEvent(Context paramContext, String paramString, Properties paramProperties)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        i.error("The Context of StatService.trackCustomEvent() can not be null!");
        return;
      }
      if (a(paramString))
      {
        i.error("The event_id of StatService.trackCustomEvent() can not be null or empty.");
        return;
      }
      try
      {
        paramString = new com.tencent.stat.a.b(paramContext, a(paramContext, false), paramString);
        paramString.a(paramProperties);
        if (c(paramContext) != null)
        {
          c(paramContext).post(new k(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        i.e(paramString);
        a(paramContext, paramString);
      }
    }
  }
  
  /* Error */
  public static void trackEndPage(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: invokestatic 256	com/tencent/stat/StatConfig:isEnableStatService	()Z
    //   3: ifne +4 -> 7
    //   6: return
    //   7: aload_0
    //   8: ifnull +14 -> 22
    //   11: aload_1
    //   12: ifnull +10 -> 22
    //   15: aload_1
    //   16: invokevirtual 313	java/lang/String:length	()I
    //   19: ifne +13 -> 32
    //   22: getstatic 55	com/tencent/stat/StatService:i	Lcom/tencent/stat/common/StatLogger;
    //   25: ldc_w 576
    //   28: invokevirtual 261	com/tencent/stat/common/StatLogger:error	(Ljava/lang/Object;)V
    //   31: return
    //   32: getstatic 48	com/tencent/stat/StatService:h	Ljava/util/Map;
    //   35: astore_2
    //   36: aload_2
    //   37: monitorenter
    //   38: getstatic 48	com/tencent/stat/StatService:h	Ljava/util/Map;
    //   41: aload_1
    //   42: invokeinterface 542 2 0
    //   47: checkcast 504	java/lang/Long
    //   50: astore_3
    //   51: aload_2
    //   52: monitorexit
    //   53: aload_3
    //   54: ifnull +148 -> 202
    //   57: invokestatic 68	java/lang/System:currentTimeMillis	()J
    //   60: aload_3
    //   61: invokevirtual 553	java/lang/Long:longValue	()J
    //   64: lsub
    //   65: ldc2_w 554
    //   68: ldiv
    //   69: invokestatic 508	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   72: astore_3
    //   73: aload_3
    //   74: astore_2
    //   75: aload_3
    //   76: invokevirtual 553	java/lang/Long:longValue	()J
    //   79: lconst_0
    //   80: lcmp
    //   81: ifgt +8 -> 89
    //   84: lconst_1
    //   85: invokestatic 508	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   88: astore_2
    //   89: getstatic 46	com/tencent/stat/StatService:g	Ljava/lang/String;
    //   92: astore 4
    //   94: aload 4
    //   96: astore_3
    //   97: aload 4
    //   99: ifnull +20 -> 119
    //   102: aload 4
    //   104: astore_3
    //   105: aload 4
    //   107: aload_1
    //   108: invokevirtual 428	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   111: iconst_1
    //   112: if_icmpne +7 -> 119
    //   115: ldc_w 473
    //   118: astore_3
    //   119: aload_0
    //   120: invokestatic 286	com/tencent/stat/StatService:c	(Landroid/content/Context;)Landroid/os/Handler;
    //   123: ifnull +55 -> 178
    //   126: new 578	com/tencent/stat/a/j
    //   129: dup
    //   130: aload_0
    //   131: aload_3
    //   132: aload_1
    //   133: aload_0
    //   134: iconst_0
    //   135: invokestatic 280	com/tencent/stat/StatService:a	(Landroid/content/Context;Z)I
    //   138: aload_2
    //   139: invokespecial 581	com/tencent/stat/a/j:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)V
    //   142: astore_2
    //   143: aload_1
    //   144: getstatic 44	com/tencent/stat/StatService:f	Ljava/lang/String;
    //   147: invokevirtual 428	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   150: ifne +12 -> 162
    //   153: getstatic 55	com/tencent/stat/StatService:i	Lcom/tencent/stat/common/StatLogger;
    //   156: ldc_w 583
    //   159: invokevirtual 250	com/tencent/stat/common/StatLogger:warn	(Ljava/lang/Object;)V
    //   162: aload_0
    //   163: invokestatic 286	com/tencent/stat/StatService:c	(Landroid/content/Context;)Landroid/os/Handler;
    //   166: new 288	com/tencent/stat/k
    //   169: dup
    //   170: aload_2
    //   171: invokespecial 291	com/tencent/stat/k:<init>	(Lcom/tencent/stat/a/e;)V
    //   174: invokevirtual 295	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   177: pop
    //   178: aload_1
    //   179: putstatic 46	com/tencent/stat/StatService:g	Ljava/lang/String;
    //   182: return
    //   183: astore_1
    //   184: getstatic 55	com/tencent/stat/StatService:i	Lcom/tencent/stat/common/StatLogger;
    //   187: aload_1
    //   188: invokevirtual 124	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   191: aload_0
    //   192: aload_1
    //   193: invokestatic 305	com/tencent/stat/StatService:a	(Landroid/content/Context;Ljava/lang/Throwable;)V
    //   196: return
    //   197: astore_1
    //   198: aload_2
    //   199: monitorexit
    //   200: aload_1
    //   201: athrow
    //   202: getstatic 55	com/tencent/stat/StatService:i	Lcom/tencent/stat/common/StatLogger;
    //   205: new 263	java/lang/StringBuilder
    //   208: dup
    //   209: invokespecial 264	java/lang/StringBuilder:<init>	()V
    //   212: ldc_w 585
    //   215: invokevirtual 270	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: aload_1
    //   219: invokevirtual 270	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: ldc_w 587
    //   225: invokevirtual 270	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: invokevirtual 276	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   231: invokevirtual 124	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   234: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	235	0	paramContext	Context
    //   0	235	1	paramString	String
    //   50	82	3	localObject2	Object
    //   92	14	4	str	String
    // Exception table:
    //   from	to	target	type
    //   32	38	183	java/lang/Throwable
    //   57	73	183	java/lang/Throwable
    //   75	89	183	java/lang/Throwable
    //   89	94	183	java/lang/Throwable
    //   105	115	183	java/lang/Throwable
    //   119	162	183	java/lang/Throwable
    //   162	178	183	java/lang/Throwable
    //   178	182	183	java/lang/Throwable
    //   200	202	183	java/lang/Throwable
    //   202	234	183	java/lang/Throwable
    //   38	53	197	finally
    //   198	200	197	finally
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/StatService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */