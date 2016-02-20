package com.tencent.open.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.MotionEvent;
import com.tencent.open.a.f;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.List;

public class SystemUtils
{
  public static final String ACTION_LOGIN = "action_login";
  public static final String ACTION_SHARE = "action_share";
  public static final String H5_SHARE_DATA = "h5_share_data";
  public static final String IS_LOGIN = "is_login";
  public static final String IS_QQ_MOBILE_SHARE = "is_qq_mobile_share";
  public static final String QQDATALINE_CALLBACK_ACTION = "sendToMyComputer";
  public static final String QQFAVORITES_CALLBACK_ACTION = "addToQQFavorites";
  public static final String QQ_SHARE_CALLBACK_ACTION = "shareToQQ";
  public static final String QQ_VERSION_NAME_4_2_0 = "4.2.0";
  public static final String QQ_VERSION_NAME_4_3_0 = "4.3.0";
  public static final String QQ_VERSION_NAME_4_5_0 = "4.5.0";
  public static final String QQ_VERSION_NAME_4_6_0 = "4.6.0";
  public static final String QQ_VERSION_NAME_5_0_0 = "5.0.0";
  public static final String QQ_VERSION_NAME_5_1_0 = "5.1.0";
  public static final String QQ_VERSION_NAME_5_2_0 = "5.2.0";
  public static final String QQ_VERSION_NAME_5_3_0 = "5.3.0";
  public static final String QZONE_SHARE_CALLBACK_ACTION = "shareToQzone";
  public static final String TROOPBAR_CALLBACK_ACTION = "shareToTroopBar";
  
  private static long a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    long l = 0L;
    byte[] arrayOfByte = new byte[' '];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
      l += i;
    }
    f.c("openSDK_LOG.SysUtils", "-->copy, copyed size is: " + l);
    return l;
  }
  
  public static boolean checkMobileQQ(Context paramContext)
  {
    boolean bool2 = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getPackageInfo("com.tencent.mobileqq", 0);
      bool1 = bool2;
      if (paramContext != null) {
        paramContext = paramContext.versionName;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        try
        {
          boolean bool1;
          f.b("MobileQQ verson", paramContext);
          paramContext = paramContext.split("\\.");
          int i = Integer.parseInt(paramContext[0]);
          int j = Integer.parseInt(paramContext[1]);
          if (i <= 4)
          {
            bool1 = bool2;
            if (i == 4)
            {
              bool1 = bool2;
              if (j < 1) {}
            }
          }
          else
          {
            bool1 = true;
          }
          return bool1;
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
        }
        paramContext = paramContext;
        f.b("checkMobileQQ", "error");
        paramContext.printStackTrace();
        paramContext = null;
      }
    }
    return false;
  }
  
  public static int compareQQVersion(Context paramContext, String paramString)
  {
    return compareVersion(getAppVersionName(paramContext, "com.tencent.mobileqq"), paramString);
  }
  
  public static int compareVersion(String paramString1, String paramString2)
  {
    if ((paramString1 == null) && (paramString2 == null)) {
      return 0;
    }
    if ((paramString1 != null) && (paramString2 == null)) {
      return 1;
    }
    if ((paramString1 == null) && (paramString2 != null)) {
      return -1;
    }
    String[] arrayOfString1 = paramString1.split("\\.");
    String[] arrayOfString2 = paramString2.split("\\.");
    int i = 0;
    for (;;)
    {
      int j;
      int k;
      try
      {
        if ((i < arrayOfString1.length) && (i < arrayOfString2.length))
        {
          j = Integer.parseInt(arrayOfString1[i]);
          k = Integer.parseInt(arrayOfString2[i]);
          if (j < k) {
            return -1;
          }
        }
        else
        {
          if (arrayOfString1.length > i) {
            return 1;
          }
          j = arrayOfString2.length;
          if (j <= i) {
            break;
          }
          return -1;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        return paramString1.compareTo(paramString2);
      }
      if (j > k) {
        return 1;
      }
      i += 1;
    }
  }
  
  /* Error */
  @SuppressLint({"SdCardPath"})
  public static boolean extractSecureLib(String paramString1, String paramString2, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore 7
    //   9: aconst_null
    //   10: astore 6
    //   12: ldc 82
    //   14: new 84	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   21: ldc -78
    //   23: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_0
    //   27: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokestatic 104	com/tencent/open/a/f:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   36: invokestatic 184	com/tencent/open/utils/Global:getContext	()Landroid/content/Context;
    //   39: astore 9
    //   41: aload 9
    //   43: ifnonnull +12 -> 55
    //   46: ldc 82
    //   48: ldc -70
    //   50: invokestatic 104	com/tencent/open/a/f:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   53: iconst_0
    //   54: ireturn
    //   55: aload 9
    //   57: ldc -68
    //   59: iconst_0
    //   60: invokevirtual 192	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   63: astore 8
    //   65: new 194	java/io/File
    //   68: dup
    //   69: aload 9
    //   71: invokevirtual 198	android/content/Context:getFilesDir	()Ljava/io/File;
    //   74: aload_1
    //   75: invokespecial 201	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   78: astore 10
    //   80: aload 10
    //   82: invokevirtual 205	java/io/File:exists	()Z
    //   85: ifne +162 -> 247
    //   88: aload 10
    //   90: invokevirtual 208	java/io/File:getParentFile	()Ljava/io/File;
    //   93: astore 11
    //   95: aload 11
    //   97: ifnull +17 -> 114
    //   100: aload 11
    //   102: invokevirtual 211	java/io/File:mkdirs	()Z
    //   105: ifeq +9 -> 114
    //   108: aload 10
    //   110: invokevirtual 214	java/io/File:createNewFile	()Z
    //   113: pop
    //   114: aload 9
    //   116: invokevirtual 218	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   119: aload_0
    //   120: invokevirtual 224	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   123: astore_0
    //   124: aload_0
    //   125: astore 5
    //   127: aload 4
    //   129: astore_0
    //   130: aload 5
    //   132: astore 4
    //   134: aload 7
    //   136: astore 6
    //   138: aload 9
    //   140: aload_1
    //   141: iconst_0
    //   142: invokevirtual 228	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   145: astore_1
    //   146: aload_1
    //   147: astore_0
    //   148: aload 5
    //   150: astore 4
    //   152: aload_1
    //   153: astore 6
    //   155: aload 5
    //   157: aload_1
    //   158: invokestatic 230	com/tencent/open/utils/SystemUtils:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    //   161: pop2
    //   162: aload_1
    //   163: astore_0
    //   164: aload 5
    //   166: astore 4
    //   168: aload_1
    //   169: astore 6
    //   171: aload 8
    //   173: invokeinterface 236 1 0
    //   178: astore 7
    //   180: aload_1
    //   181: astore_0
    //   182: aload 5
    //   184: astore 4
    //   186: aload_1
    //   187: astore 6
    //   189: aload 7
    //   191: ldc -18
    //   193: iload_2
    //   194: invokeinterface 244 3 0
    //   199: pop
    //   200: aload_1
    //   201: astore_0
    //   202: aload 5
    //   204: astore 4
    //   206: aload_1
    //   207: astore 6
    //   209: aload 7
    //   211: invokeinterface 247 1 0
    //   216: pop
    //   217: aload 5
    //   219: ifnull +8 -> 227
    //   222: aload 5
    //   224: invokevirtual 250	java/io/InputStream:close	()V
    //   227: aload_1
    //   228: ifnull +7 -> 235
    //   231: aload_1
    //   232: invokevirtual 251	java/io/OutputStream:close	()V
    //   235: iconst_1
    //   236: ireturn
    //   237: astore 10
    //   239: aload 10
    //   241: invokevirtual 252	java/io/IOException:printStackTrace	()V
    //   244: goto -130 -> 114
    //   247: aload 8
    //   249: ldc -18
    //   251: iconst_0
    //   252: invokeinterface 256 3 0
    //   257: istore_3
    //   258: ldc 82
    //   260: new 84	java/lang/StringBuilder
    //   263: dup
    //   264: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   267: ldc_w 258
    //   270: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: iload_2
    //   274: invokevirtual 261	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   277: ldc_w 263
    //   280: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: iload_3
    //   284: invokevirtual 261	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   287: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   290: invokestatic 104	com/tencent/open/a/f:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   293: iload_2
    //   294: iload_3
    //   295: if_icmpne -181 -> 114
    //   298: iconst_1
    //   299: ireturn
    //   300: astore_1
    //   301: aconst_null
    //   302: astore 5
    //   304: aload 6
    //   306: astore_0
    //   307: aload 5
    //   309: astore 4
    //   311: ldc 82
    //   313: ldc_w 265
    //   316: aload_1
    //   317: invokestatic 268	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   320: aload 5
    //   322: ifnull +8 -> 330
    //   325: aload 5
    //   327: invokevirtual 250	java/io/InputStream:close	()V
    //   330: aload 6
    //   332: ifnull -279 -> 53
    //   335: aload 6
    //   337: invokevirtual 251	java/io/OutputStream:close	()V
    //   340: iconst_0
    //   341: ireturn
    //   342: astore_0
    //   343: iconst_0
    //   344: ireturn
    //   345: astore_1
    //   346: aconst_null
    //   347: astore 4
    //   349: aload 5
    //   351: astore_0
    //   352: aload 4
    //   354: ifnull +8 -> 362
    //   357: aload 4
    //   359: invokevirtual 250	java/io/InputStream:close	()V
    //   362: aload_0
    //   363: ifnull +7 -> 370
    //   366: aload_0
    //   367: invokevirtual 251	java/io/OutputStream:close	()V
    //   370: aload_1
    //   371: athrow
    //   372: astore_0
    //   373: goto -146 -> 227
    //   376: astore_0
    //   377: goto -142 -> 235
    //   380: astore_0
    //   381: goto -51 -> 330
    //   384: astore 4
    //   386: goto -24 -> 362
    //   389: astore_0
    //   390: goto -20 -> 370
    //   393: astore_1
    //   394: goto -42 -> 352
    //   397: astore_1
    //   398: goto -94 -> 304
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	401	0	paramString1	String
    //   0	401	1	paramString2	String
    //   0	401	2	paramInt	int
    //   257	39	3	i	int
    //   4	354	4	str1	String
    //   384	1	4	localIOException1	IOException
    //   1	349	5	str2	String
    //   10	326	6	localObject	Object
    //   7	203	7	localEditor	SharedPreferences.Editor
    //   63	185	8	localSharedPreferences	SharedPreferences
    //   39	100	9	localContext	Context
    //   78	31	10	localFile1	File
    //   237	3	10	localIOException2	IOException
    //   93	8	11	localFile2	File
    // Exception table:
    //   from	to	target	type
    //   108	114	237	java/io/IOException
    //   114	124	300	java/lang/Exception
    //   335	340	342	java/io/IOException
    //   114	124	345	finally
    //   222	227	372	java/io/IOException
    //   231	235	376	java/io/IOException
    //   325	330	380	java/io/IOException
    //   357	362	384	java/io/IOException
    //   366	370	389	java/io/IOException
    //   138	146	393	finally
    //   155	162	393	finally
    //   171	180	393	finally
    //   189	200	393	finally
    //   209	217	393	finally
    //   311	320	393	finally
    //   138	146	397	java/lang/Exception
    //   155	162	397	java/lang/Exception
    //   171	180	397	java/lang/Exception
    //   189	200	397	java/lang/Exception
    //   209	217	397	java/lang/Exception
  }
  
  public static int getAndroidSDKVersion()
  {
    try
    {
      int i = Integer.valueOf(Build.VERSION.SDK).intValue();
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 0;
  }
  
  public static String getAppName(Context paramContext)
  {
    return paramContext.getApplicationInfo().loadLabel(paramContext.getPackageManager()).toString();
  }
  
  public static String getAppSignatureMD5(Context paramContext, String paramString)
  {
    f.a("openSDK_LOG", "OpenUi, getSignValidString");
    try
    {
      String str = paramContext.getPackageName();
      paramContext = paramContext.getPackageManager().getPackageInfo(str, 64).signatures;
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramContext[0].toByteArray());
      paramContext = Util.toHexString(localMessageDigest.digest());
      localMessageDigest.reset();
      f.b("SystemUtils", "-->sign: " + paramContext);
      localMessageDigest.update(Util.getBytesUTF8(str + "_" + paramContext + "_" + paramString + ""));
      paramContext = Util.toHexString(localMessageDigest.digest());
      paramString.printStackTrace();
    }
    catch (Exception paramString)
    {
      try
      {
        localMessageDigest.reset();
        f.b("SystemUtils", "-->signEncryped: " + paramContext);
        return paramContext;
      }
      catch (Exception paramString)
      {
        for (;;) {}
      }
      paramString = paramString;
      paramContext = "";
    }
    f.b("openSDK_LOG", "OpenUi, getSignValidString error", paramString);
    return paramContext;
  }
  
  public static String getAppVersionName(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getPackageInfo(paramString, 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static String getRealPathFromUri(Activity paramActivity, Uri paramUri)
  {
    Object localObject = null;
    paramUri = paramActivity.managedQuery(paramUri, new String[] { "_data" }, null, null, null);
    paramActivity = (Activity)localObject;
    if (paramUri != null)
    {
      int i = paramUri.getColumnIndexOrThrow("_data");
      paramUri.moveToFirst();
      paramActivity = paramUri.getString(i);
    }
    return paramActivity;
  }
  
  public static boolean isActivityExist(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null)) {}
    while (paramContext.getPackageManager().queryIntentActivities(paramIntent, 0).size() == 0) {
      return false;
    }
    return true;
  }
  
  public static boolean isAppSignatureValid(Context paramContext, String paramString1, String paramString2)
  {
    boolean bool2 = false;
    f.a("openSDK_LOG", "OpenUi, validateAppSignatureForPackage");
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString1, 64);
      paramContext = paramContext.signatures;
      int j = paramContext.length;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          if (Util.encrypt(paramContext[i].toCharsString()).equals(paramString2)) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 1;
      }
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
  }
  
  @SuppressLint({"SdCardPath"})
  public static boolean isLibExtracted(String paramString, int paramInt)
  {
    Object localObject = Global.getContext();
    if (localObject == null) {
      f.c("openSDK_LOG.SysUtils", "-->isSecureLibExtracted, global context is null. ");
    }
    do
    {
      return false;
      paramString = new File(((Context)localObject).getFilesDir(), paramString);
      localObject = ((Context)localObject).getSharedPreferences("secure_lib", 0);
    } while (!paramString.exists());
    int i = ((SharedPreferences)localObject).getInt("version", 0);
    f.c("openSDK_LOG.SysUtils", "-->extractSecureLib, libVersion: " + paramInt + " | oldVersion: " + i);
    if (paramInt == i) {
      return true;
    }
    paramString = ((SharedPreferences)localObject).edit();
    paramString.putInt("version", paramInt);
    paramString.commit();
    return false;
  }
  
  public static boolean isSupportMultiTouch()
  {
    Method[] arrayOfMethod = MotionEvent.class.getDeclaredMethods();
    int m = arrayOfMethod.length;
    int i = 0;
    int j = 0;
    int k = 0;
    while (i < m)
    {
      Method localMethod = arrayOfMethod[i];
      if (localMethod.getName().equals("getPointerCount")) {
        k = 1;
      }
      if (localMethod.getName().equals("getPointerId")) {
        j = 1;
      }
      i += 1;
    }
    return (getAndroidSDKVersion() >= 7) || ((k != 0) && (j != 0));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/SystemUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */