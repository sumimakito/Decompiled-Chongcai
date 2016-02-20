package com.sina.weibo.sdk.cmd;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.Utility;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

public class WbAppActivator
{
  private static final String TAG = WbAppActivator.class.getName();
  private static WbAppActivator mInstance;
  private String mAppkey;
  private Context mContext;
  private AppInstallCmdExecutor mInstallExecutor;
  private AppInvokeCmdExecutor mInvokeExecutor;
  private volatile ReentrantLock mLock = new ReentrantLock(true);
  
  private WbAppActivator(Context paramContext, String paramString)
  {
    this.mContext = paramContext.getApplicationContext();
    this.mInvokeExecutor = new AppInvokeCmdExecutor(this.mContext);
    this.mInstallExecutor = new AppInstallCmdExecutor(this.mContext);
    this.mAppkey = paramString;
  }
  
  public static WbAppActivator getInstance(Context paramContext, String paramString)
  {
    try
    {
      if (mInstance == null) {
        mInstance = new WbAppActivator(paramContext, paramString);
      }
      paramContext = mInstance;
      return paramContext;
    }
    finally {}
  }
  
  private void handleInstallCmd(List<AppInstallCmd> paramList)
  {
    if (paramList != null)
    {
      this.mInstallExecutor.start();
      paramList = paramList.iterator();
    }
    for (;;)
    {
      if (!paramList.hasNext())
      {
        this.mInstallExecutor.stop();
        return;
      }
      AppInstallCmd localAppInstallCmd = (AppInstallCmd)paramList.next();
      this.mInstallExecutor.doExecutor(localAppInstallCmd);
    }
  }
  
  private void handleInvokeCmd(List<AppInvokeCmd> paramList)
  {
    if (paramList != null) {
      paramList = paramList.iterator();
    }
    for (;;)
    {
      if (!paramList.hasNext()) {
        return;
      }
      AppInvokeCmd localAppInvokeCmd = (AppInvokeCmd)paramList.next();
      this.mInvokeExecutor.doExecutor(localAppInvokeCmd);
    }
  }
  
  private static String requestCmdInfo(Context paramContext, String paramString)
  {
    String str1 = paramContext.getPackageName();
    String str2 = Utility.getSign(paramContext, str1);
    WeiboParameters localWeiboParameters = new WeiboParameters(paramString);
    localWeiboParameters.put("appkey", paramString);
    localWeiboParameters.put("packagename", str1);
    localWeiboParameters.put("key_hash", str2);
    localWeiboParameters.put("version", "0031005000");
    return NetUtils.internalHttpRequest(paramContext, "http://api.weibo.cn/2/client/common_config", "GET", localWeiboParameters);
  }
  
  public void activateApp()
  {
    final SharedPreferences localSharedPreferences = FrequencyHelper.getWeiboSdkSp(this.mContext);
    long l1 = FrequencyHelper.getFrequency(this.mContext, localSharedPreferences);
    long l2 = FrequencyHelper.getLastTime(this.mContext, localSharedPreferences);
    l2 = System.currentTimeMillis() - l2;
    if (l2 < l1)
    {
      LogUtil.v(TAG, String.format("it's only %d ms from last time get cmd", new Object[] { Long.valueOf(l2) }));
      return;
    }
    new Thread(new Runnable()
    {
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: invokestatic 31	com/sina/weibo/sdk/cmd/WbAppActivator:access$0	()Ljava/lang/String;
        //   3: new 33	java/lang/StringBuilder
        //   6: dup
        //   7: ldc 35
        //   9: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   12: aload_0
        //   13: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   16: invokestatic 42	com/sina/weibo/sdk/cmd/WbAppActivator:access$1	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
        //   19: invokevirtual 48	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
        //   22: invokevirtual 52	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
        //   25: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   28: invokestatic 61	com/sina/weibo/sdk/utils/LogUtil:v	(Ljava/lang/String;Ljava/lang/String;)V
        //   31: aload_0
        //   32: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   35: invokestatic 42	com/sina/weibo/sdk/cmd/WbAppActivator:access$1	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
        //   38: invokevirtual 64	java/util/concurrent/locks/ReentrantLock:tryLock	()Z
        //   41: ifne +4 -> 45
        //   44: return
        //   45: aconst_null
        //   46: astore 4
        //   48: aconst_null
        //   49: astore_2
        //   50: aconst_null
        //   51: astore_3
        //   52: aload_2
        //   53: astore_1
        //   54: aload_0
        //   55: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   58: invokestatic 68	com/sina/weibo/sdk/cmd/WbAppActivator:access$2	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;
        //   61: aload_0
        //   62: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   65: invokestatic 72	com/sina/weibo/sdk/cmd/WbAppActivator:access$3	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/lang/String;
        //   68: invokestatic 76	com/sina/weibo/sdk/cmd/WbAppActivator:access$4	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
        //   71: astore 5
        //   73: aload_3
        //   74: astore_1
        //   75: aload 5
        //   77: ifnull +42 -> 119
        //   80: aload_2
        //   81: astore_1
        //   82: new 78	com/sina/weibo/sdk/cmd/CmdInfo
        //   85: dup
        //   86: aload 5
        //   88: invokestatic 84	com/sina/weibo/sdk/utils/AesEncrypt:Decrypt	(Ljava/lang/String;)Ljava/lang/String;
        //   91: invokespecial 85	com/sina/weibo/sdk/cmd/CmdInfo:<init>	(Ljava/lang/String;)V
        //   94: astore_2
        //   95: aload_0
        //   96: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   99: aload_2
        //   100: invokevirtual 89	com/sina/weibo/sdk/cmd/CmdInfo:getInstallCmds	()Ljava/util/List;
        //   103: invokestatic 93	com/sina/weibo/sdk/cmd/WbAppActivator:access$5	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;Ljava/util/List;)V
        //   106: aload_0
        //   107: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   110: aload_2
        //   111: invokevirtual 96	com/sina/weibo/sdk/cmd/CmdInfo:getInvokeCmds	()Ljava/util/List;
        //   114: invokestatic 99	com/sina/weibo/sdk/cmd/WbAppActivator:access$6	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;Ljava/util/List;)V
        //   117: aload_2
        //   118: astore_1
        //   119: aload_0
        //   120: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   123: invokestatic 42	com/sina/weibo/sdk/cmd/WbAppActivator:access$1	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
        //   126: invokevirtual 102	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   129: aload_1
        //   130: ifnull +39 -> 169
        //   133: aload_0
        //   134: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   137: invokestatic 68	com/sina/weibo/sdk/cmd/WbAppActivator:access$2	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;
        //   140: aload_0
        //   141: getfield 21	com/sina/weibo/sdk/cmd/WbAppActivator$1:val$sdkSp	Landroid/content/SharedPreferences;
        //   144: aload_1
        //   145: invokevirtual 106	com/sina/weibo/sdk/cmd/CmdInfo:getFrequency	()I
        //   148: i2l
        //   149: invokestatic 112	com/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper:saveFrequency	(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
        //   152: aload_0
        //   153: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   156: invokestatic 68	com/sina/weibo/sdk/cmd/WbAppActivator:access$2	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;
        //   159: aload_0
        //   160: getfield 21	com/sina/weibo/sdk/cmd/WbAppActivator$1:val$sdkSp	Landroid/content/SharedPreferences;
        //   163: invokestatic 118	java/lang/System:currentTimeMillis	()J
        //   166: invokestatic 121	com/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper:saveLastTime	(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
        //   169: invokestatic 31	com/sina/weibo/sdk/cmd/WbAppActivator:access$0	()Ljava/lang/String;
        //   172: new 33	java/lang/StringBuilder
        //   175: dup
        //   176: ldc 123
        //   178: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   181: aload_0
        //   182: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   185: invokestatic 42	com/sina/weibo/sdk/cmd/WbAppActivator:access$1	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
        //   188: invokevirtual 48	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
        //   191: invokevirtual 52	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
        //   194: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   197: invokestatic 61	com/sina/weibo/sdk/utils/LogUtil:v	(Ljava/lang/String;Ljava/lang/String;)V
        //   200: return
        //   201: astore_3
        //   202: aload 4
        //   204: astore_2
        //   205: aload_2
        //   206: astore_1
        //   207: invokestatic 31	com/sina/weibo/sdk/cmd/WbAppActivator:access$0	()Ljava/lang/String;
        //   210: aload_3
        //   211: invokevirtual 126	com/sina/weibo/sdk/exception/WeiboException:getMessage	()Ljava/lang/String;
        //   214: invokestatic 129	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
        //   217: aload_0
        //   218: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   221: invokestatic 42	com/sina/weibo/sdk/cmd/WbAppActivator:access$1	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
        //   224: invokevirtual 102	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   227: aload_2
        //   228: ifnull +39 -> 267
        //   231: aload_0
        //   232: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   235: invokestatic 68	com/sina/weibo/sdk/cmd/WbAppActivator:access$2	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;
        //   238: aload_0
        //   239: getfield 21	com/sina/weibo/sdk/cmd/WbAppActivator$1:val$sdkSp	Landroid/content/SharedPreferences;
        //   242: aload_2
        //   243: invokevirtual 106	com/sina/weibo/sdk/cmd/CmdInfo:getFrequency	()I
        //   246: i2l
        //   247: invokestatic 112	com/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper:saveFrequency	(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
        //   250: aload_0
        //   251: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   254: invokestatic 68	com/sina/weibo/sdk/cmd/WbAppActivator:access$2	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;
        //   257: aload_0
        //   258: getfield 21	com/sina/weibo/sdk/cmd/WbAppActivator$1:val$sdkSp	Landroid/content/SharedPreferences;
        //   261: invokestatic 118	java/lang/System:currentTimeMillis	()J
        //   264: invokestatic 121	com/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper:saveLastTime	(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
        //   267: invokestatic 31	com/sina/weibo/sdk/cmd/WbAppActivator:access$0	()Ljava/lang/String;
        //   270: new 33	java/lang/StringBuilder
        //   273: dup
        //   274: ldc 123
        //   276: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   279: aload_0
        //   280: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   283: invokestatic 42	com/sina/weibo/sdk/cmd/WbAppActivator:access$1	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
        //   286: invokevirtual 48	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
        //   289: invokevirtual 52	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
        //   292: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   295: invokestatic 61	com/sina/weibo/sdk/utils/LogUtil:v	(Ljava/lang/String;Ljava/lang/String;)V
        //   298: return
        //   299: astore_2
        //   300: aload_0
        //   301: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   304: invokestatic 42	com/sina/weibo/sdk/cmd/WbAppActivator:access$1	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
        //   307: invokevirtual 102	java/util/concurrent/locks/ReentrantLock:unlock	()V
        //   310: aload_1
        //   311: ifnull +39 -> 350
        //   314: aload_0
        //   315: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   318: invokestatic 68	com/sina/weibo/sdk/cmd/WbAppActivator:access$2	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;
        //   321: aload_0
        //   322: getfield 21	com/sina/weibo/sdk/cmd/WbAppActivator$1:val$sdkSp	Landroid/content/SharedPreferences;
        //   325: aload_1
        //   326: invokevirtual 106	com/sina/weibo/sdk/cmd/CmdInfo:getFrequency	()I
        //   329: i2l
        //   330: invokestatic 112	com/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper:saveFrequency	(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
        //   333: aload_0
        //   334: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   337: invokestatic 68	com/sina/weibo/sdk/cmd/WbAppActivator:access$2	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;
        //   340: aload_0
        //   341: getfield 21	com/sina/weibo/sdk/cmd/WbAppActivator$1:val$sdkSp	Landroid/content/SharedPreferences;
        //   344: invokestatic 118	java/lang/System:currentTimeMillis	()J
        //   347: invokestatic 121	com/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper:saveLastTime	(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
        //   350: invokestatic 31	com/sina/weibo/sdk/cmd/WbAppActivator:access$0	()Ljava/lang/String;
        //   353: new 33	java/lang/StringBuilder
        //   356: dup
        //   357: ldc 123
        //   359: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   362: aload_0
        //   363: getfield 19	com/sina/weibo/sdk/cmd/WbAppActivator$1:this$0	Lcom/sina/weibo/sdk/cmd/WbAppActivator;
        //   366: invokestatic 42	com/sina/weibo/sdk/cmd/WbAppActivator:access$1	(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
        //   369: invokevirtual 48	java/util/concurrent/locks/ReentrantLock:isLocked	()Z
        //   372: invokevirtual 52	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
        //   375: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   378: invokestatic 61	com/sina/weibo/sdk/utils/LogUtil:v	(Ljava/lang/String;Ljava/lang/String;)V
        //   381: aload_2
        //   382: athrow
        //   383: astore_3
        //   384: aload_2
        //   385: astore_1
        //   386: aload_3
        //   387: astore_2
        //   388: goto -88 -> 300
        //   391: astore_3
        //   392: goto -187 -> 205
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	395	0	this	1
        //   53	333	1	localObject1	Object
        //   49	194	2	localObject2	Object
        //   299	86	2	localObject3	Object
        //   387	1	2	localObject4	Object
        //   51	23	3	localObject5	Object
        //   201	10	3	localWeiboException1	com.sina.weibo.sdk.exception.WeiboException
        //   383	4	3	localObject6	Object
        //   391	1	3	localWeiboException2	com.sina.weibo.sdk.exception.WeiboException
        //   46	157	4	localObject7	Object
        //   71	16	5	str	String
        // Exception table:
        //   from	to	target	type
        //   54	73	201	com/sina/weibo/sdk/exception/WeiboException
        //   82	95	201	com/sina/weibo/sdk/exception/WeiboException
        //   54	73	299	finally
        //   82	95	299	finally
        //   207	217	299	finally
        //   95	117	383	finally
        //   95	117	391	com/sina/weibo/sdk/exception/WeiboException
      }
    }).start();
  }
  
  private static class FrequencyHelper
  {
    private static final int DEFAULT_FREQUENCY = 3600000;
    private static final String KEY_FREQUENCY = "frequency_get_cmd";
    private static final String KEY_LAST_TIME_GET_CMD = "last_time_get_cmd";
    private static final String WEIBO_SDK_PREFERENCES_NAME = "com_sina_weibo_sdk";
    
    public static long getFrequency(Context paramContext, SharedPreferences paramSharedPreferences)
    {
      long l = 3600000L;
      if (paramSharedPreferences != null) {
        l = paramSharedPreferences.getLong("frequency_get_cmd", 3600000L);
      }
      return l;
    }
    
    public static long getLastTime(Context paramContext, SharedPreferences paramSharedPreferences)
    {
      long l = 0L;
      if (paramSharedPreferences != null) {
        l = paramSharedPreferences.getLong("last_time_get_cmd", 0L);
      }
      return l;
    }
    
    public static SharedPreferences getWeiboSdkSp(Context paramContext)
    {
      return paramContext.getSharedPreferences("com_sina_weibo_sdk", 0);
    }
    
    public static void saveFrequency(Context paramContext, SharedPreferences paramSharedPreferences, long paramLong)
    {
      if ((paramSharedPreferences != null) && (paramLong > 0L))
      {
        paramContext = paramSharedPreferences.edit();
        paramContext.putLong("frequency_get_cmd", paramLong);
        paramContext.commit();
      }
    }
    
    public static void saveLastTime(Context paramContext, SharedPreferences paramSharedPreferences, long paramLong)
    {
      if (paramSharedPreferences != null)
      {
        paramContext = paramSharedPreferences.edit();
        paramContext.putLong("last_time_get_cmd", paramLong);
        paramContext.commit();
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/cmd/WbAppActivator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */