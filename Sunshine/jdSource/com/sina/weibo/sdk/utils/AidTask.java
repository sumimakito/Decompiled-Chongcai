package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.WeiboParameters;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;

public class AidTask
{
  private static final String AID_FILE_NAME = "weibo_sdk_aid";
  private static final int MAX_RETRY_NUM = 3;
  private static final String TAG = "AidTask";
  private static final int VERSION = 1;
  public static final int WHAT_LOAD_AID_ERR = 1002;
  public static final int WHAT_LOAD_AID_SUC = 1001;
  private static AidTask sInstance;
  private AidInfo mAidInfo;
  private String mAppKey;
  private Context mContext;
  private CallbackHandler mHandler;
  private volatile ReentrantLock mTaskLock = new ReentrantLock(true);
  
  private AidTask(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
    this.mHandler = new CallbackHandler(this.mContext.getMainLooper());
    new Thread(new Runnable()
    {
      public void run()
      {
        int i = 0;
        for (;;)
        {
          if (i >= 1) {
            return;
          }
          File localFile = AidTask.this.getAidInfoFile(i);
          try
          {
            localFile.delete();
            i += 1;
          }
          catch (Exception localException)
          {
            for (;;) {}
          }
        }
      }
    }).start();
  }
  
  /* Error */
  private void cacheAidInfo(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aconst_null
    //   15: astore 4
    //   17: aconst_null
    //   18: astore 5
    //   20: new 134	java/io/FileOutputStream
    //   23: dup
    //   24: aload_0
    //   25: iconst_1
    //   26: invokespecial 93	com/sina/weibo/sdk/utils/AidTask:getAidInfoFile	(I)Ljava/io/File;
    //   29: invokespecial 137	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   32: astore_3
    //   33: aload_3
    //   34: aload_1
    //   35: invokevirtual 143	java/lang/String:getBytes	()[B
    //   38: invokevirtual 147	java/io/FileOutputStream:write	([B)V
    //   41: aload_3
    //   42: ifnull +66 -> 108
    //   45: aload_3
    //   46: invokevirtual 150	java/io/FileOutputStream:close	()V
    //   49: goto -38 -> 11
    //   52: astore_1
    //   53: aload 5
    //   55: astore_1
    //   56: aload_1
    //   57: ifnull -46 -> 11
    //   60: aload_1
    //   61: invokevirtual 150	java/io/FileOutputStream:close	()V
    //   64: goto -53 -> 11
    //   67: astore_1
    //   68: goto -57 -> 11
    //   71: astore_1
    //   72: aload 4
    //   74: astore_3
    //   75: aload_3
    //   76: ifnull +7 -> 83
    //   79: aload_3
    //   80: invokevirtual 150	java/io/FileOutputStream:close	()V
    //   83: aload_1
    //   84: athrow
    //   85: astore_1
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_1
    //   89: athrow
    //   90: astore_1
    //   91: goto -80 -> 11
    //   94: astore_3
    //   95: goto -12 -> 83
    //   98: astore_1
    //   99: goto -24 -> 75
    //   102: astore_1
    //   103: aload_3
    //   104: astore_1
    //   105: goto -49 -> 56
    //   108: goto -97 -> 11
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	AidTask
    //   0	111	1	paramString	String
    //   6	2	2	bool	boolean
    //   32	48	3	localObject1	Object
    //   94	10	3	localIOException	java.io.IOException
    //   15	58	4	localObject2	Object
    //   18	36	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   20	33	52	java/lang/Exception
    //   60	64	67	java/io/IOException
    //   20	33	71	finally
    //   2	7	85	finally
    //   45	49	85	finally
    //   60	64	85	finally
    //   79	83	85	finally
    //   83	85	85	finally
    //   45	49	90	java/io/IOException
    //   79	83	94	java/io/IOException
    //   33	41	98	finally
    //   33	41	102	java/lang/Exception
  }
  
  /* Error */
  private static String encryptRsa(String paramString1, String paramString2)
    throws Exception
  {
    // Byte code:
    //   0: ldc -102
    //   2: invokestatic 160	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   5: astore 5
    //   7: aload 5
    //   9: iconst_1
    //   10: aload_1
    //   11: invokestatic 164	com/sina/weibo/sdk/utils/AidTask:getPublicKey	(Ljava/lang/String;)Ljava/security/PublicKey;
    //   14: invokevirtual 168	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   17: aconst_null
    //   18: astore 4
    //   20: aload_0
    //   21: ldc -86
    //   23: invokevirtual 173	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   26: astore_0
    //   27: new 175	java/io/ByteArrayOutputStream
    //   30: dup
    //   31: invokespecial 176	java/io/ByteArrayOutputStream:<init>	()V
    //   34: astore_1
    //   35: iconst_0
    //   36: istore_2
    //   37: aload_0
    //   38: iload_2
    //   39: bipush 117
    //   41: invokestatic 180	com/sina/weibo/sdk/utils/AidTask:splite	([BII)I
    //   44: istore_3
    //   45: iload_3
    //   46: iconst_m1
    //   47: if_icmpne +120 -> 167
    //   50: aload_1
    //   51: invokevirtual 183	java/io/ByteArrayOutputStream:flush	()V
    //   54: aload_1
    //   55: invokevirtual 186	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   58: astore_0
    //   59: ldc 29
    //   61: new 188	java/lang/StringBuilder
    //   64: dup
    //   65: ldc -66
    //   67: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   70: aload_0
    //   71: arraylength
    //   72: invokevirtual 196	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   75: invokevirtual 199	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 205	com/sina/weibo/sdk/utils/LogUtil:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   81: aload_0
    //   82: invokestatic 211	com/sina/weibo/sdk/utils/Base64:encodebyte	([B)[B
    //   85: astore_0
    //   86: ldc 29
    //   88: new 188	java/lang/StringBuilder
    //   91: dup
    //   92: ldc -43
    //   94: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   97: aload_0
    //   98: arraylength
    //   99: invokevirtual 196	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   102: invokevirtual 199	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: invokestatic 205	com/sina/weibo/sdk/utils/LogUtil:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   108: new 139	java/lang/String
    //   111: dup
    //   112: aload_0
    //   113: ldc -86
    //   115: invokespecial 216	java/lang/String:<init>	([BLjava/lang/String;)V
    //   118: astore_0
    //   119: new 188	java/lang/StringBuilder
    //   122: dup
    //   123: ldc -38
    //   125: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   128: aload_0
    //   129: invokevirtual 221	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: invokevirtual 199	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: astore_0
    //   136: ldc 29
    //   138: new 188	java/lang/StringBuilder
    //   141: dup
    //   142: ldc -33
    //   144: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   147: aload_0
    //   148: invokevirtual 221	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 199	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokestatic 205	com/sina/weibo/sdk/utils/LogUtil:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   157: aload_1
    //   158: ifnull +7 -> 165
    //   161: aload_1
    //   162: invokevirtual 224	java/io/ByteArrayOutputStream:close	()V
    //   165: aload_0
    //   166: areturn
    //   167: aload 5
    //   169: aload_0
    //   170: iload_2
    //   171: iload_3
    //   172: invokevirtual 228	javax/crypto/Cipher:doFinal	([BII)[B
    //   175: astore 4
    //   177: aload_1
    //   178: aload 4
    //   180: invokevirtual 229	java/io/ByteArrayOutputStream:write	([B)V
    //   183: ldc 29
    //   185: new 188	java/lang/StringBuilder
    //   188: dup
    //   189: ldc -25
    //   191: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   194: iload_2
    //   195: invokevirtual 196	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   198: ldc -23
    //   200: invokevirtual 221	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: iload_3
    //   204: invokevirtual 196	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   207: ldc -21
    //   209: invokevirtual 221	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: aload 4
    //   214: arraylength
    //   215: invokevirtual 196	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   218: invokevirtual 199	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   221: invokestatic 205	com/sina/weibo/sdk/utils/LogUtil:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: iload_2
    //   225: iload_3
    //   226: iadd
    //   227: istore_2
    //   228: goto -191 -> 37
    //   231: astore_0
    //   232: aload 4
    //   234: astore_1
    //   235: aload_1
    //   236: ifnull +7 -> 243
    //   239: aload_1
    //   240: invokevirtual 224	java/io/ByteArrayOutputStream:close	()V
    //   243: aload_0
    //   244: athrow
    //   245: astore_1
    //   246: aload_0
    //   247: areturn
    //   248: astore_1
    //   249: goto -6 -> 243
    //   252: astore_0
    //   253: goto -18 -> 235
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	256	0	paramString1	String
    //   0	256	1	paramString2	String
    //   36	192	2	i	int
    //   44	183	3	j	int
    //   18	215	4	arrayOfByte	byte[]
    //   5	163	5	localCipher	javax.crypto.Cipher
    // Exception table:
    //   from	to	target	type
    //   27	35	231	finally
    //   161	165	245	java/io/IOException
    //   239	243	248	java/io/IOException
    //   37	45	252	finally
    //   50	157	252	finally
    //   167	224	252	finally
  }
  
  private static String genMfpString(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      String str = getOS();
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("1", str);
      }
      str = getImei(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("2", str);
      }
      str = getMeid(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("3", str);
      }
      str = getImsi(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("4", str);
      }
      str = getMac(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("5", str);
      }
      str = getIccid(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("6", str);
      }
      str = getSerialNo();
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("7", str);
      }
      str = getAndroidId(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("10", str);
      }
      str = getCpu();
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("13", str);
      }
      str = getModel();
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("14", str);
      }
      str = getSdSize();
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("15", str);
      }
      str = getResolution(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("16", str);
      }
      str = getSsid(paramContext);
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("17", str);
      }
      str = getDeviceName();
      if (!TextUtils.isEmpty(str)) {
        localJSONObject.put("18", str);
      }
      paramContext = getConnectType(paramContext);
      if (!TextUtils.isEmpty(paramContext)) {
        localJSONObject.put("19", paramContext);
      }
      paramContext = localJSONObject.toString();
      return paramContext;
    }
    catch (JSONException paramContext) {}
    return "";
  }
  
  private void generateAid(String paramString, final AidResultCallBack paramAidResultCallBack)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    this.mAppKey = paramString;
    new Thread(new Runnable()
    {
      public void run()
      {
        AidTask.this.mTaskLock.lock();
        Object localObject2 = AidTask.this.loadAidInfoFromCache();
        Object localObject4 = null;
        Object localObject1 = localObject2;
        localObject3 = localObject4;
        if (localObject2 == null) {
          localObject1 = localObject2;
        }
        try
        {
          localObject3 = AidTask.this.loadAidFromNet();
          localObject1 = localObject2;
          localObject2 = AidTask.AidInfo.parseJson((String)localObject3);
          localObject1 = localObject2;
          AidTask.this.cacheAidInfo((String)localObject3);
          localObject1 = localObject2;
          AidTask.this.mAidInfo = ((AidTask.AidInfo)localObject2);
          localObject3 = localObject4;
          localObject1 = localObject2;
        }
        catch (WeiboException localWeiboException)
        {
          for (;;)
          {
            localObject3 = localWeiboException;
            LogUtil.e("AidTask", "AidTaskInit WeiboException Msg : " + localWeiboException.getMessage());
            continue;
            localWeiboException.what = 1002;
            localWeiboException.obj = localObject3;
          }
        }
        AidTask.this.mTaskLock.unlock();
        localObject2 = Message.obtain();
        if (localObject1 != null)
        {
          ((Message)localObject2).what = 1001;
          ((Message)localObject2).obj = localObject1;
          AidTask.this.mHandler.setCallback(paramAidResultCallBack);
          AidTask.this.mHandler.sendMessage((Message)localObject2);
          return;
        }
      }
    }).start();
  }
  
  private File getAidInfoFile(int paramInt)
  {
    return new File(this.mContext.getFilesDir(), "weibo_sdk_aid" + paramInt);
  }
  
  private static String getAndroidId(Context paramContext)
  {
    try
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  private static String getConnectType(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext != null)
      {
        if (paramContext.getType() == 0) {}
        switch (paramContext.getSubtype())
        {
        default: 
          if (paramContext.getType() == 1) {
            return "wifi";
          }
          break;
        }
      }
    }
    catch (Exception paramContext)
    {
      return "none";
    }
    return "none";
    return "2G";
    return "3G";
    return "4G";
  }
  
  private static String getCpu()
  {
    try
    {
      String str = Build.CPU_ABI;
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  private static String getDeviceName()
  {
    try
    {
      String str = Build.BRAND;
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  private static String getIccid(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  private static String getImei(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  private static String getImsi(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  public static AidTask getInstance(Context paramContext)
  {
    try
    {
      if (sInstance == null) {
        sInstance = new AidTask(paramContext);
      }
      paramContext = sInstance;
      return paramContext;
    }
    finally {}
  }
  
  private static String getMac(Context paramContext)
  {
    try
    {
      paramContext = (WifiManager)paramContext.getSystemService("wifi");
      if (paramContext == null) {
        return "";
      }
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null) {
        return paramContext.getMacAddress();
      }
      return "";
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  private static String getMeid(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  private static String getMfp(Context paramContext)
  {
    String str = genMfpString(paramContext);
    paramContext = "";
    try
    {
      str = new String(str.getBytes(), "UTF-8");
      paramContext = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;) {}
    }
    LogUtil.d("AidTask", "genMfpString() utf-8 string : " + paramContext);
    try
    {
      paramContext = encryptRsa(paramContext, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB");
      LogUtil.d("AidTask", "encryptRsa() string : " + paramContext);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      LogUtil.e("AidTask", paramContext.getMessage());
      return "";
    }
  }
  
  private static String getModel()
  {
    try
    {
      String str = Build.MODEL;
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  private static String getOS()
  {
    try
    {
      String str = "Android " + Build.VERSION.RELEASE;
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  private static PublicKey getPublicKey(String paramString)
    throws Exception
  {
    paramString = new X509EncodedKeySpec(Base64.decode(paramString.getBytes()));
    return KeyFactory.getInstance("RSA").generatePublic(paramString);
  }
  
  private static String getResolution(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      paramContext = String.valueOf(localDisplayMetrics.widthPixels) + "*" + String.valueOf(localDisplayMetrics.heightPixels);
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  private static String getSdSize()
  {
    try
    {
      Object localObject = new StatFs(Environment.getExternalStorageDirectory().getPath());
      long l = ((StatFs)localObject).getBlockSize();
      localObject = Long.toString(((StatFs)localObject).getBlockCount() * l);
      return (String)localObject;
    }
    catch (Exception localException) {}
    return "";
  }
  
  private static String getSerialNo()
  {
    try
    {
      Object localObject = Class.forName("android.os.SystemProperties");
      localObject = (String)((Class)localObject).getMethod("get", new Class[] { String.class, String.class }).invoke(localObject, new Object[] { "ro.serialno", "unknown" });
      return (String)localObject;
    }
    catch (Exception localException) {}
    return "";
  }
  
  private static String getSsid(Context paramContext)
  {
    try
    {
      paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
      if (paramContext != null)
      {
        paramContext = paramContext.getSSID();
        return paramContext;
      }
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  private void initAidInfo(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    this.mAppKey = paramString;
    new Thread(new Runnable()
    {
      public void run()
      {
        if (!AidTask.this.mTaskLock.tryLock())
        {
          LogUtil.e("AidTask", "tryLock : false, return");
          return;
        }
        Object localObject = AidTask.this.loadAidInfoFromCache();
        int i;
        int j;
        if (localObject == null)
        {
          i = 1;
          j = i + 1;
        }
        for (;;)
        {
          try
          {
            localObject = AidTask.this.loadAidFromNet();
            AidTask.AidInfo localAidInfo = AidTask.AidInfo.parseJson((String)localObject);
            AidTask.this.cacheAidInfo((String)localObject);
            AidTask.this.mAidInfo = localAidInfo;
            AidTask.this.mTaskLock.unlock();
            return;
          }
          catch (WeiboException localWeiboException)
          {
            LogUtil.e("AidTask", "AidTaskInit WeiboException Msg : " + localWeiboException.getMessage());
            i = j;
          }
          if (j < 3) {
            break;
          }
          continue;
          AidTask.this.mAidInfo = localWeiboException;
        }
      }
    }).start();
  }
  
  private String loadAidFromNet()
    throws WeiboException
  {
    String str1 = this.mContext.getPackageName();
    String str2 = Utility.getSign(this.mContext, str1);
    String str3 = getMfp(this.mContext);
    WeiboParameters localWeiboParameters = new WeiboParameters(this.mAppKey);
    localWeiboParameters.put("appkey", this.mAppKey);
    localWeiboParameters.put("mfp", str3);
    localWeiboParameters.put("packagename", str1);
    localWeiboParameters.put("key_hash", str2);
    try
    {
      str1 = NetUtils.internalHttpRequest(this.mContext, "https://api.weibo.com/oauth2/getaid.json", "GET", localWeiboParameters);
      LogUtil.d("AidTask", "loadAidFromNet response : " + str1);
      return str1;
    }
    catch (WeiboException localWeiboException)
    {
      LogUtil.d("AidTask", "loadAidFromNet WeiboException Msg : " + localWeiboException.getMessage());
      throw localWeiboException;
    }
  }
  
  /* Error */
  private AidInfo loadAidInfoFromCache()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore_2
    //   4: aconst_null
    //   5: astore_3
    //   6: new 591	java/io/FileInputStream
    //   9: dup
    //   10: aload_0
    //   11: iconst_1
    //   12: invokespecial 93	com/sina/weibo/sdk/utils/AidTask:getAidInfoFile	(I)Ljava/io/File;
    //   15: invokespecial 592	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   18: astore_1
    //   19: aload_1
    //   20: invokevirtual 595	java/io/FileInputStream:available	()I
    //   23: newarray <illegal type>
    //   25: astore_2
    //   26: aload_1
    //   27: aload_2
    //   28: invokevirtual 599	java/io/FileInputStream:read	([B)I
    //   31: pop
    //   32: new 139	java/lang/String
    //   35: dup
    //   36: aload_2
    //   37: invokespecial 600	java/lang/String:<init>	([B)V
    //   40: invokestatic 604	com/sina/weibo/sdk/utils/AidTask$AidInfo:parseJson	(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    //   43: astore_2
    //   44: aload_1
    //   45: ifnull +7 -> 52
    //   48: aload_1
    //   49: invokevirtual 605	java/io/FileInputStream:close	()V
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_2
    //   55: areturn
    //   56: astore_1
    //   57: aload_3
    //   58: astore_1
    //   59: aload_1
    //   60: ifnull +7 -> 67
    //   63: aload_1
    //   64: invokevirtual 605	java/io/FileInputStream:close	()V
    //   67: aconst_null
    //   68: astore_2
    //   69: goto -17 -> 52
    //   72: astore_1
    //   73: aload_2
    //   74: ifnull +7 -> 81
    //   77: aload_2
    //   78: invokevirtual 605	java/io/FileInputStream:close	()V
    //   81: aload_1
    //   82: athrow
    //   83: astore_1
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_1
    //   87: athrow
    //   88: astore_1
    //   89: goto -37 -> 52
    //   92: astore_1
    //   93: goto -26 -> 67
    //   96: astore_2
    //   97: goto -16 -> 81
    //   100: astore_3
    //   101: aload_1
    //   102: astore_2
    //   103: aload_3
    //   104: astore_1
    //   105: goto -32 -> 73
    //   108: astore_2
    //   109: goto -50 -> 59
    //   112: astore_1
    //   113: goto -29 -> 84
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	AidTask
    //   18	31	1	localFileInputStream	java.io.FileInputStream
    //   56	1	1	localException1	Exception
    //   58	6	1	localObject1	Object
    //   72	10	1	localObject2	Object
    //   83	4	1	localObject3	Object
    //   88	1	1	localIOException1	java.io.IOException
    //   92	10	1	localIOException2	java.io.IOException
    //   104	1	1	localObject4	Object
    //   112	1	1	localObject5	Object
    //   3	75	2	localObject6	Object
    //   96	1	2	localIOException3	java.io.IOException
    //   102	1	2	localObject7	Object
    //   108	1	2	localException2	Exception
    //   5	53	3	localObject8	Object
    //   100	4	3	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   6	19	56	java/lang/Exception
    //   6	19	72	finally
    //   63	67	83	finally
    //   77	81	83	finally
    //   81	83	83	finally
    //   48	52	88	java/io/IOException
    //   63	67	92	java/io/IOException
    //   77	81	96	java/io/IOException
    //   19	44	100	finally
    //   19	44	108	java/lang/Exception
    //   48	52	112	finally
  }
  
  private static int splite(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt1 >= paramArrayOfByte.length) {
      return -1;
    }
    return Math.min(paramArrayOfByte.length - paramInt1, paramInt2);
  }
  
  public void aidTaskInit(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    LogUtil.e("AidTask", "aidTaskInit ");
    initAidInfo(paramString);
  }
  
  public void getAidAsync(String paramString, AidResultCallBack paramAidResultCallBack)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    if ((this.mAidInfo != null) && (paramAidResultCallBack != null))
    {
      paramAidResultCallBack.onAidGenSuccessed(this.mAidInfo.cloneAidInfo());
      return;
    }
    generateAid(paramString, paramAidResultCallBack);
  }
  
  public AidInfo getAidSync(String paramString)
    throws WeiboException
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    LogUtil.e("AidTask", "getAidSync ");
    if (this.mAidInfo == null) {
      aidTaskInit(paramString);
    }
    return this.mAidInfo;
  }
  
  public static final class AidInfo
  {
    private String mAid;
    private String mSubCookie;
    
    public static AidInfo parseJson(String paramString)
      throws WeiboException
    {
      AidInfo localAidInfo = new AidInfo();
      try
      {
        paramString = new JSONObject(paramString);
        if ((paramString.has("error")) || (paramString.has("error_code")))
        {
          LogUtil.d("AidTask", "loadAidFromNet has error !!!");
          throw new WeiboException("loadAidFromNet has error !!!");
        }
      }
      catch (JSONException paramString)
      {
        LogUtil.d("AidTask", "loadAidFromNet JSONException Msg : " + paramString.getMessage());
        throw new WeiboException("loadAidFromNet has error !!!");
      }
      localAidInfo.mAid = paramString.optString("aid", "");
      localAidInfo.mSubCookie = paramString.optString("sub", "");
      return localAidInfo;
    }
    
    AidInfo cloneAidInfo()
    {
      AidInfo localAidInfo = new AidInfo();
      localAidInfo.mAid = this.mAid;
      localAidInfo.mSubCookie = this.mSubCookie;
      return localAidInfo;
    }
    
    public String getAid()
    {
      return this.mAid;
    }
    
    public String getSubCookie()
    {
      return this.mSubCookie;
    }
  }
  
  public static abstract interface AidResultCallBack
  {
    public abstract void onAidGenFailed(Exception paramException);
    
    public abstract void onAidGenSuccessed(AidTask.AidInfo paramAidInfo);
  }
  
  private static class CallbackHandler
    extends Handler
  {
    private WeakReference<AidTask.AidResultCallBack> callBackReference;
    
    public CallbackHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      AidTask.AidResultCallBack localAidResultCallBack = (AidTask.AidResultCallBack)this.callBackReference.get();
      switch (paramMessage.what)
      {
      }
      do
      {
        do
        {
          return;
        } while (localAidResultCallBack == null);
        localAidResultCallBack.onAidGenSuccessed(((AidTask.AidInfo)paramMessage.obj).cloneAidInfo());
        return;
      } while (localAidResultCallBack == null);
      localAidResultCallBack.onAidGenFailed((WeiboException)paramMessage.obj);
    }
    
    public void setCallback(AidTask.AidResultCallBack paramAidResultCallBack)
    {
      if (this.callBackReference != null)
      {
        if ((AidTask.AidResultCallBack)this.callBackReference.get() == paramAidResultCallBack) {
          return;
        }
        this.callBackReference = new WeakReference(paramAidResultCallBack);
        return;
      }
      this.callBackReference = new WeakReference(paramAidResultCallBack);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/utils/AidTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */