package com.alipay.mobilesecuritysdk.deviceID;

import HttpUtils.HttpFetcher;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import com.alipay.mobilesecuritysdk.util.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class LOG
{
  public static boolean DBG = true;
  private static String TAG = "logger";
  private static File logFileDir = null;
  private static File logFileName = null;
  private static Context mcontext = null;
  private static String model = null;
  private static String pkgName = null;
  
  private static long checkLogFile()
  {
    for (;;)
    {
      try
      {
        logFileName = new File(logFileDir, getCurLogFileName());
        if (DBG) {
          Log.d(TAG, "current logfile is:" + logFileName.getAbsolutePath());
        }
        boolean bool = logFileName.exists();
        if (!bool) {
          try
          {
            logFileName.createNewFile();
            l = 0L;
            return l;
          }
          catch (IOException localIOException)
          {
            localIOException.printStackTrace();
            continue;
          }
        }
        long l = logFileName.length();
      }
      finally {}
    }
  }
  
  private static boolean doUpload(String paramString)
  {
    boolean bool = true;
    if (paramString == null)
    {
      Log.e(TAG, "logFile to JosonString is null");
      bool = false;
    }
    do
    {
      return bool;
      if (DBG) {
        Log.d(TAG, paramString);
      }
      if (mcontext == null) {
        return false;
      }
      if (!CommonUtils.isNetWorkActive(mcontext)) {
        return false;
      }
      paramString = new HttpFetcher().uploadCollectedData(mcontext, "https://seccliprod.alipay.com/api/do.htm", "bugTrack", paramString, "1", true);
      if (paramString == null) {
        return false;
      }
    } while (paramString.getStatusLine().getStatusCode() == 200);
    return false;
  }
  
  private static String getCurLogFileName()
  {
    Date localDate = Calendar.getInstance().getTime();
    return new SimpleDateFormat("yyyyMMdd").format(localDate) + ".log";
  }
  
  private static void getInfo(Context paramContext)
  {
    model = Build.MODEL;
    pkgName = paramContext.getApplicationContext().getApplicationInfo().packageName;
    if (DBG) {
      Log.d(TAG, pkgName + "," + model);
    }
  }
  
  public static String getStackString(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }
  
  public static void init(Context paramContext)
  {
    try
    {
      mcontext = paramContext;
      if (logFileDir == null)
      {
        logFileDir = new File(paramContext.getFilesDir().getAbsolutePath() + "/log/ap");
        getInfo(paramContext);
      }
      if (logFileDir.exists())
      {
        if (logFileDir.isDirectory()) {
          break label109;
        }
        throw new IllegalStateException(String.format("<%s> exists but not a Directory!", new Object[] { logFileDir.getAbsoluteFile() }));
      }
    }
    finally {}
    logFileDir.mkdirs();
    label109:
  }
  
  /* Error */
  public static void logMessage(List<String> paramList)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 19	com/alipay/mobilesecuritysdk/deviceID/LOG:logFileDir	Ljava/io/File;
    //   6: ifnonnull +19 -> 25
    //   9: new 206	java/lang/IllegalStateException
    //   12: dup
    //   13: ldc -32
    //   15: invokespecial 215	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_0
    //   20: ldc 2
    //   22: monitorexit
    //   23: aload_0
    //   24: athrow
    //   25: new 226	java/lang/StringBuffer
    //   28: dup
    //   29: new 136	java/text/SimpleDateFormat
    //   32: dup
    //   33: ldc -28
    //   35: invokespecial 139	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   38: invokestatic 130	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   41: invokevirtual 134	java/util/Calendar:getTime	()Ljava/util/Date;
    //   44: invokevirtual 143	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   47: invokespecial 229	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   50: astore 7
    //   52: aload 7
    //   54: new 52	java/lang/StringBuilder
    //   57: dup
    //   58: ldc -81
    //   60: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: getstatic 23	com/alipay/mobilesecuritysdk/deviceID/LOG:model	Ljava/lang/String;
    //   66: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: invokevirtual 232	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   75: pop
    //   76: aload 7
    //   78: new 52	java/lang/StringBuilder
    //   81: dup
    //   82: ldc -81
    //   84: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   87: getstatic 25	com/alipay/mobilesecuritysdk/deviceID/LOG:pkgName	Ljava/lang/String;
    //   90: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokevirtual 232	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   99: pop
    //   100: aload_0
    //   101: invokeinterface 238 1 0
    //   106: astore_0
    //   107: aload_0
    //   108: invokeinterface 243 1 0
    //   113: istore_1
    //   114: iload_1
    //   115: ifne +191 -> 306
    //   118: aconst_null
    //   119: astore 6
    //   121: aconst_null
    //   122: astore_0
    //   123: aload_0
    //   124: astore 5
    //   126: aload 6
    //   128: astore 4
    //   130: invokestatic 245	com/alipay/mobilesecuritysdk/deviceID/LOG:checkLogFile	()J
    //   133: lstore_2
    //   134: aload_0
    //   135: astore 5
    //   137: aload 6
    //   139: astore 4
    //   141: getstatic 27	com/alipay/mobilesecuritysdk/deviceID/LOG:DBG	Z
    //   144: ifeq +33 -> 177
    //   147: aload_0
    //   148: astore 5
    //   150: aload 6
    //   152: astore 4
    //   154: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:TAG	Ljava/lang/String;
    //   157: new 52	java/lang/StringBuilder
    //   160: dup
    //   161: ldc -9
    //   163: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   166: lload_2
    //   167: invokevirtual 250	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   170: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokestatic 73	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   176: pop
    //   177: aload_0
    //   178: astore 5
    //   180: aload 6
    //   182: astore 4
    //   184: aload 7
    //   186: invokevirtual 252	java/lang/StringBuffer:length	()I
    //   189: i2l
    //   190: lload_2
    //   191: ladd
    //   192: ldc2_w 253
    //   195: lcmp
    //   196: ifgt +147 -> 343
    //   199: aload_0
    //   200: astore 5
    //   202: aload 6
    //   204: astore 4
    //   206: new 256	java/io/FileWriter
    //   209: dup
    //   210: getstatic 21	com/alipay/mobilesecuritysdk/deviceID/LOG:logFileName	Ljava/io/File;
    //   213: iconst_1
    //   214: invokespecial 259	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   217: astore_0
    //   218: aload_0
    //   219: astore 5
    //   221: aload_0
    //   222: astore 4
    //   224: aload 7
    //   226: ldc_w 261
    //   229: invokevirtual 232	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   232: pop
    //   233: aload_0
    //   234: astore 5
    //   236: aload_0
    //   237: astore 4
    //   239: getstatic 27	com/alipay/mobilesecuritysdk/deviceID/LOG:DBG	Z
    //   242: ifeq +37 -> 279
    //   245: aload_0
    //   246: astore 5
    //   248: aload_0
    //   249: astore 4
    //   251: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:TAG	Ljava/lang/String;
    //   254: new 52	java/lang/StringBuilder
    //   257: dup
    //   258: ldc_w 263
    //   261: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   264: aload 7
    //   266: invokevirtual 264	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   269: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: invokestatic 73	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   278: pop
    //   279: aload_0
    //   280: astore 5
    //   282: aload_0
    //   283: astore 4
    //   285: aload_0
    //   286: aload 7
    //   288: invokevirtual 264	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   291: invokevirtual 267	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   294: aload_0
    //   295: ifnull +7 -> 302
    //   298: aload_0
    //   299: invokevirtual 270	java/io/FileWriter:close	()V
    //   302: ldc 2
    //   304: monitorexit
    //   305: return
    //   306: aload_0
    //   307: invokeinterface 274 1 0
    //   312: checkcast 145	java/lang/String
    //   315: astore 4
    //   317: aload 7
    //   319: new 52	java/lang/StringBuilder
    //   322: dup
    //   323: ldc -81
    //   325: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   328: aload 4
    //   330: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   336: invokevirtual 232	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   339: pop
    //   340: goto -233 -> 107
    //   343: aload_0
    //   344: astore 5
    //   346: aload 6
    //   348: astore 4
    //   350: new 256	java/io/FileWriter
    //   353: dup
    //   354: getstatic 21	com/alipay/mobilesecuritysdk/deviceID/LOG:logFileName	Ljava/io/File;
    //   357: invokespecial 277	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   360: astore_0
    //   361: goto -143 -> 218
    //   364: astore_0
    //   365: aload 5
    //   367: astore 4
    //   369: aload_0
    //   370: invokevirtual 278	java/lang/Exception:printStackTrace	()V
    //   373: aload 5
    //   375: ifnull -73 -> 302
    //   378: aload 5
    //   380: invokevirtual 270	java/io/FileWriter:close	()V
    //   383: goto -81 -> 302
    //   386: astore_0
    //   387: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:TAG	Ljava/lang/String;
    //   390: ldc_w 280
    //   393: invokestatic 93	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   396: pop
    //   397: aload_0
    //   398: invokevirtual 83	java/io/IOException:printStackTrace	()V
    //   401: goto -99 -> 302
    //   404: astore_0
    //   405: aload 4
    //   407: ifnull +8 -> 415
    //   410: aload 4
    //   412: invokevirtual 270	java/io/FileWriter:close	()V
    //   415: aload_0
    //   416: athrow
    //   417: astore 4
    //   419: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:TAG	Ljava/lang/String;
    //   422: ldc_w 280
    //   425: invokestatic 93	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   428: pop
    //   429: aload 4
    //   431: invokevirtual 83	java/io/IOException:printStackTrace	()V
    //   434: goto -19 -> 415
    //   437: astore_0
    //   438: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:TAG	Ljava/lang/String;
    //   441: ldc_w 280
    //   444: invokestatic 93	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   447: pop
    //   448: aload_0
    //   449: invokevirtual 83	java/io/IOException:printStackTrace	()V
    //   452: goto -150 -> 302
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	455	0	paramList	List<String>
    //   113	2	1	bool	boolean
    //   133	58	2	l	long
    //   128	283	4	localObject1	Object
    //   417	13	4	localIOException	IOException
    //   124	255	5	localList	List<String>
    //   119	228	6	localObject2	Object
    //   50	268	7	localStringBuffer	StringBuffer
    // Exception table:
    //   from	to	target	type
    //   3	19	19	finally
    //   25	107	19	finally
    //   107	114	19	finally
    //   298	302	19	finally
    //   306	340	19	finally
    //   378	383	19	finally
    //   387	401	19	finally
    //   410	415	19	finally
    //   415	417	19	finally
    //   419	434	19	finally
    //   438	452	19	finally
    //   130	134	364	java/lang/Exception
    //   141	147	364	java/lang/Exception
    //   154	177	364	java/lang/Exception
    //   184	199	364	java/lang/Exception
    //   206	218	364	java/lang/Exception
    //   224	233	364	java/lang/Exception
    //   239	245	364	java/lang/Exception
    //   251	279	364	java/lang/Exception
    //   285	294	364	java/lang/Exception
    //   350	361	364	java/lang/Exception
    //   378	383	386	java/io/IOException
    //   130	134	404	finally
    //   141	147	404	finally
    //   154	177	404	finally
    //   184	199	404	finally
    //   206	218	404	finally
    //   224	233	404	finally
    //   239	245	404	finally
    //   251	279	404	finally
    //   285	294	404	finally
    //   350	361	404	finally
    //   369	373	404	finally
    //   410	415	417	java/io/IOException
    //   298	302	437	java/io/IOException
  }
  
  /* Error */
  private static String toJsonString(String paramString)
  {
    // Byte code:
    //   0: new 290	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 291	org/json/JSONObject:<init>	()V
    //   7: astore 4
    //   9: new 43	java/io/File
    //   12: dup
    //   13: getstatic 19	com/alipay/mobilesecuritysdk/deviceID/LOG:logFileDir	Ljava/io/File;
    //   16: aload_0
    //   17: invokespecial 50	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   20: astore_1
    //   21: aload_1
    //   22: ifnull +19 -> 41
    //   25: aload_1
    //   26: invokevirtual 77	java/io/File:exists	()Z
    //   29: ifeq +12 -> 41
    //   32: aload_1
    //   33: invokevirtual 86	java/io/File:length	()J
    //   36: lconst_0
    //   37: lcmp
    //   38: ifne +5 -> 43
    //   41: aconst_null
    //   42: areturn
    //   43: aload_1
    //   44: invokevirtual 86	java/io/File:length	()J
    //   47: l2i
    //   48: newarray <illegal type>
    //   50: astore 5
    //   52: aconst_null
    //   53: astore_3
    //   54: aconst_null
    //   55: astore_0
    //   56: aconst_null
    //   57: astore_2
    //   58: new 293	java/io/FileReader
    //   61: dup
    //   62: aload_1
    //   63: invokespecial 294	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   66: astore_1
    //   67: aload_1
    //   68: aload 5
    //   70: invokevirtual 298	java/io/FileReader:read	([C)I
    //   73: pop
    //   74: aload_1
    //   75: ifnull +7 -> 82
    //   78: aload_1
    //   79: invokevirtual 299	java/io/FileReader:close	()V
    //   82: aload 4
    //   84: ldc_w 301
    //   87: ldc_w 303
    //   90: invokevirtual 307	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   93: pop
    //   94: aload 4
    //   96: ldc_w 309
    //   99: aload 5
    //   101: invokestatic 312	java/lang/String:valueOf	([C)Ljava/lang/String;
    //   104: invokevirtual 307	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   107: pop
    //   108: aload 4
    //   110: invokevirtual 313	org/json/JSONObject:toString	()Ljava/lang/String;
    //   113: areturn
    //   114: astore_0
    //   115: aload_2
    //   116: astore_1
    //   117: aload_0
    //   118: astore_2
    //   119: aload_1
    //   120: astore_0
    //   121: aload_2
    //   122: invokevirtual 314	java/io/FileNotFoundException:printStackTrace	()V
    //   125: aload_1
    //   126: ifnull -85 -> 41
    //   129: aload_1
    //   130: invokevirtual 299	java/io/FileReader:close	()V
    //   133: aconst_null
    //   134: areturn
    //   135: astore_0
    //   136: aload_0
    //   137: invokevirtual 83	java/io/IOException:printStackTrace	()V
    //   140: aconst_null
    //   141: areturn
    //   142: astore_2
    //   143: aload_3
    //   144: astore_1
    //   145: aload_1
    //   146: astore_0
    //   147: aload_2
    //   148: invokevirtual 83	java/io/IOException:printStackTrace	()V
    //   151: aload_1
    //   152: ifnull -111 -> 41
    //   155: aload_1
    //   156: invokevirtual 299	java/io/FileReader:close	()V
    //   159: aconst_null
    //   160: areturn
    //   161: astore_0
    //   162: aload_0
    //   163: invokevirtual 83	java/io/IOException:printStackTrace	()V
    //   166: aconst_null
    //   167: areturn
    //   168: astore_1
    //   169: aload_0
    //   170: ifnull +7 -> 177
    //   173: aload_0
    //   174: invokevirtual 299	java/io/FileReader:close	()V
    //   177: aload_1
    //   178: athrow
    //   179: astore_0
    //   180: aload_0
    //   181: invokevirtual 83	java/io/IOException:printStackTrace	()V
    //   184: goto -7 -> 177
    //   187: astore_0
    //   188: aload_0
    //   189: invokevirtual 83	java/io/IOException:printStackTrace	()V
    //   192: goto -110 -> 82
    //   195: astore_0
    //   196: getstatic 31	com/alipay/mobilesecuritysdk/deviceID/LOG:TAG	Ljava/lang/String;
    //   199: aload_0
    //   200: invokevirtual 317	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   203: invokestatic 93	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   206: pop
    //   207: aconst_null
    //   208: areturn
    //   209: astore_2
    //   210: aload_1
    //   211: astore_0
    //   212: aload_2
    //   213: astore_1
    //   214: goto -45 -> 169
    //   217: astore_2
    //   218: goto -73 -> 145
    //   221: astore_2
    //   222: goto -103 -> 119
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	225	0	paramString	String
    //   20	136	1	localObject1	Object
    //   168	43	1	localObject2	Object
    //   213	1	1	localObject3	Object
    //   57	65	2	str	String
    //   142	6	2	localIOException1	IOException
    //   209	4	2	localObject4	Object
    //   217	1	2	localIOException2	IOException
    //   221	1	2	localFileNotFoundException	java.io.FileNotFoundException
    //   53	91	3	localObject5	Object
    //   7	102	4	localJSONObject	org.json.JSONObject
    //   50	50	5	arrayOfChar	char[]
    // Exception table:
    //   from	to	target	type
    //   58	67	114	java/io/FileNotFoundException
    //   129	133	135	java/io/IOException
    //   58	67	142	java/io/IOException
    //   155	159	161	java/io/IOException
    //   58	67	168	finally
    //   121	125	168	finally
    //   147	151	168	finally
    //   173	177	179	java/io/IOException
    //   78	82	187	java/io/IOException
    //   82	108	195	org/json/JSONException
    //   67	74	209	finally
    //   67	74	217	java/io/IOException
    //   67	74	221	java/io/FileNotFoundException
  }
  
  public static void uploadLogFile()
  {
    try
    {
      if (logFileDir == null) {
        throw new IllegalStateException("logFileDir can not be null! call 'LOG.init' first!");
      }
    }
    finally {}
    if ((!logFileDir.exists()) || (!logFileDir.isDirectory()) || (logFileDir.list().length == 0)) {
      if (DBG) {
        Log.d(TAG, "log Dir not exist or no log");
      }
    }
    for (;;)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      Object localObject2 = logFileDir.list();
      int j = localObject2.length;
      int i = 0;
      for (;;)
      {
        if (i >= j)
        {
          Collections.sort(localArrayList);
          String str = (String)localArrayList.get(localArrayList.size() - 1);
          localObject2 = str;
          j = localArrayList.size();
          i = j;
          if (!str.equals(getCurLogFileName())) {
            break label218;
          }
          if (localArrayList.size() >= 2) {
            break label194;
          }
          if (!DBG) {
            break;
          }
          Log.d(TAG, "only log of today");
          break;
        }
        localArrayList.add(localObject2[i]);
        i += 1;
      }
      label194:
      localObject2 = (String)localArrayList.get(localArrayList.size() - 2);
      i = j - 1;
      label218:
      if (!doUpload(toJsonString((String)localObject2))) {
        j = i - 1;
      }
      while (i < j)
      {
        localObject2 = (String)localArrayList.get(i);
        new File(logFileDir, (String)localObject2).delete();
        i += 1;
        continue;
        j = i;
        if (DBG)
        {
          Log.d(TAG, "upload success");
          j = i;
        }
        i = 0;
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/mobilesecuritysdk/deviceID/LOG.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */