package com.sina.weibo.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.sina.weibo.sdk.utils.LogUtil;
import java.util.Iterator;
import java.util.List;

public class WeiboAppManager
{
  private static final String SDK_INT_FILE_NAME = "weibo_for_sdk.json";
  private static final String TAG = WeiboAppManager.class.getName();
  private static final String WEIBO_IDENTITY_ACTION = "com.sina.weibo.action.sdkidentity";
  private static final Uri WEIBO_NAME_URI = Uri.parse("content://com.sina.weibo.sdkProvider/query/package");
  private static WeiboAppManager sInstance;
  private Context mContext;
  
  private WeiboAppManager(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }
  
  public static WeiboAppManager getInstance(Context paramContext)
  {
    try
    {
      if (sInstance == null) {
        sInstance = new WeiboAppManager(paramContext);
      }
      paramContext = sInstance;
      return paramContext;
    }
    finally {}
  }
  
  private WeiboInfo queryWeiboInfoByAsset(Context paramContext)
  {
    Object localObject = new Intent("com.sina.weibo.action.sdkidentity");
    ((Intent)localObject).addCategory("android.intent.category.DEFAULT");
    localObject = paramContext.getPackageManager().queryIntentServices((Intent)localObject, 0);
    if ((localObject == null) || (((List)localObject).isEmpty()))
    {
      localObject = null;
      return (WeiboInfo)localObject;
    }
    paramContext = null;
    Iterator localIterator = ((List)localObject).iterator();
    for (;;)
    {
      localObject = paramContext;
      if (!localIterator.hasNext()) {
        break;
      }
      localObject = (ResolveInfo)localIterator.next();
      if ((((ResolveInfo)localObject).serviceInfo != null) && (((ResolveInfo)localObject).serviceInfo.applicationInfo != null) && (!TextUtils.isEmpty(((ResolveInfo)localObject).serviceInfo.applicationInfo.packageName)))
      {
        localObject = parseWeiboInfoByAsset(((ResolveInfo)localObject).serviceInfo.applicationInfo.packageName);
        if (localObject != null) {
          if (paramContext == null) {
            paramContext = (Context)localObject;
          } else if (paramContext.getSupportApi() < ((WeiboInfo)localObject).getSupportApi()) {
            paramContext = (Context)localObject;
          }
        }
      }
    }
  }
  
  private WeiboInfo queryWeiboInfoByProvider(Context paramContext)
  {
    Object localObject3 = paramContext.getContentResolver();
    Object localObject2 = null;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        localObject3 = ((ContentResolver)localObject3).query(WEIBO_NAME_URI, null, null, null, null);
        if (localObject3 == null)
        {
          if (localObject3 != null) {
            ((Cursor)localObject3).close();
          }
          paramContext = null;
          return paramContext;
        }
        localObject1 = localObject3;
        localObject2 = localObject3;
        int j = ((Cursor)localObject3).getColumnIndex("support_api");
        localObject1 = localObject3;
        localObject2 = localObject3;
        int k = ((Cursor)localObject3).getColumnIndex("package");
        localObject1 = localObject3;
        localObject2 = localObject3;
        if (((Cursor)localObject3).moveToFirst())
        {
          int i = -1;
          localObject1 = localObject3;
          localObject2 = localObject3;
          Object localObject4 = ((Cursor)localObject3).getString(j);
          localObject1 = localObject3;
          localObject2 = localObject3;
          try
          {
            j = Integer.parseInt((String)localObject4);
            i = j;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            String str;
            localObject1 = localObject3;
            localObject2 = localObject3;
            localNumberFormatException.printStackTrace();
            continue;
          }
          localObject1 = localObject3;
          localObject2 = localObject3;
          str = ((Cursor)localObject3).getString(k);
          localObject1 = localObject3;
          localObject2 = localObject3;
          if (!TextUtils.isEmpty(str))
          {
            localObject1 = localObject3;
            localObject2 = localObject3;
            if (ApiUtils.validateWeiboSign(paramContext, str))
            {
              localObject1 = localObject3;
              localObject2 = localObject3;
              localObject4 = new WeiboInfo();
              localObject1 = localObject3;
              localObject2 = localObject3;
              ((WeiboInfo)localObject4).setPackageName(str);
              localObject1 = localObject3;
              localObject2 = localObject3;
              ((WeiboInfo)localObject4).setSupportApi(i);
              paramContext = (Context)localObject4;
              return (WeiboInfo)localObject4;
            }
          }
        }
      }
      catch (Exception paramContext)
      {
        localObject2 = localObject1;
        LogUtil.e(TAG, paramContext.getMessage());
        return null;
      }
      finally
      {
        if (localObject2 != null) {
          ((Cursor)localObject2).close();
        }
      }
      if (localObject3 != null) {
        ((Cursor)localObject3).close();
      }
    }
  }
  
  private WeiboInfo queryWeiboInfoInternal(Context paramContext)
  {
    int j = 1;
    WeiboInfo localWeiboInfo = queryWeiboInfoByProvider(paramContext);
    paramContext = queryWeiboInfoByAsset(paramContext);
    int i;
    if (localWeiboInfo != null)
    {
      i = 1;
      if (paramContext == null) {
        break label54;
      }
      label26:
      if ((i == 0) || (j == 0)) {
        break label61;
      }
      if (localWeiboInfo.getSupportApi() < paramContext.getSupportApi()) {
        break label59;
      }
    }
    label54:
    label59:
    label61:
    while (i != 0)
    {
      return localWeiboInfo;
      i = 0;
      break;
      j = 0;
      break label26;
      return paramContext;
    }
    if (j != 0) {
      return paramContext;
    }
    return null;
  }
  
  public WeiboInfo getWeiboInfo()
  {
    try
    {
      WeiboInfo localWeiboInfo = queryWeiboInfoInternal(this.mContext);
      return localWeiboInfo;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public WeiboInfo parseWeiboInfoByAsset(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +7 -> 11
    //   7: aconst_null
    //   8: astore_1
    //   9: aload_1
    //   10: areturn
    //   11: aconst_null
    //   12: astore 10
    //   14: aconst_null
    //   15: astore 11
    //   17: aconst_null
    //   18: astore 12
    //   20: aconst_null
    //   21: astore 13
    //   23: aconst_null
    //   24: astore 5
    //   26: aload 5
    //   28: astore 6
    //   30: aload 10
    //   32: astore 7
    //   34: aload 11
    //   36: astore 8
    //   38: aload 12
    //   40: astore 9
    //   42: aload 13
    //   44: astore 4
    //   46: aload_0
    //   47: getfield 54	com/sina/weibo/sdk/WeiboAppManager:mContext	Landroid/content/Context;
    //   50: aload_1
    //   51: iconst_2
    //   52: invokevirtual 218	android/content/Context:createPackageContext	(Ljava/lang/String;I)Landroid/content/Context;
    //   55: astore 15
    //   57: aload 5
    //   59: astore 6
    //   61: aload 10
    //   63: astore 7
    //   65: aload 11
    //   67: astore 8
    //   69: aload 12
    //   71: astore 9
    //   73: aload 13
    //   75: astore 4
    //   77: sipush 4096
    //   80: newarray <illegal type>
    //   82: astore 14
    //   84: aload 5
    //   86: astore 6
    //   88: aload 10
    //   90: astore 7
    //   92: aload 11
    //   94: astore 8
    //   96: aload 12
    //   98: astore 9
    //   100: aload 13
    //   102: astore 4
    //   104: aload 15
    //   106: invokevirtual 222	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   109: ldc 11
    //   111: invokevirtual 228	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   114: astore 5
    //   116: aload 5
    //   118: astore 6
    //   120: aload 5
    //   122: astore 7
    //   124: aload 5
    //   126: astore 8
    //   128: aload 5
    //   130: astore 9
    //   132: aload 5
    //   134: astore 4
    //   136: new 230	java/lang/StringBuilder
    //   139: dup
    //   140: invokespecial 231	java/lang/StringBuilder:<init>	()V
    //   143: astore 10
    //   145: aload 5
    //   147: astore 6
    //   149: aload 5
    //   151: astore 7
    //   153: aload 5
    //   155: astore 8
    //   157: aload 5
    //   159: astore 9
    //   161: aload 5
    //   163: astore 4
    //   165: aload 5
    //   167: aload 14
    //   169: iconst_0
    //   170: sipush 4096
    //   173: invokevirtual 237	java/io/InputStream:read	([BII)I
    //   176: istore_2
    //   177: iload_2
    //   178: iconst_m1
    //   179: if_icmpne +79 -> 258
    //   182: aload 5
    //   184: astore 6
    //   186: aload 5
    //   188: astore 7
    //   190: aload 5
    //   192: astore 8
    //   194: aload 5
    //   196: astore 9
    //   198: aload 5
    //   200: astore 4
    //   202: aload 10
    //   204: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   210: ifne +36 -> 246
    //   213: aload 5
    //   215: astore 6
    //   217: aload 5
    //   219: astore 7
    //   221: aload 5
    //   223: astore 8
    //   225: aload 5
    //   227: astore 9
    //   229: aload 5
    //   231: astore 4
    //   233: aload_0
    //   234: getfield 54	com/sina/weibo/sdk/WeiboAppManager:mContext	Landroid/content/Context;
    //   237: aload_1
    //   238: invokestatic 178	com/sina/weibo/sdk/ApiUtils:validateWeiboSign	(Landroid/content/Context;Ljava/lang/String;)Z
    //   241: istore_3
    //   242: iload_3
    //   243: ifne +96 -> 339
    //   246: aload 5
    //   248: ifnull +8 -> 256
    //   251: aload 5
    //   253: invokevirtual 241	java/io/InputStream:close	()V
    //   256: aconst_null
    //   257: areturn
    //   258: aload 5
    //   260: astore 6
    //   262: aload 5
    //   264: astore 7
    //   266: aload 5
    //   268: astore 8
    //   270: aload 5
    //   272: astore 9
    //   274: aload 5
    //   276: astore 4
    //   278: aload 10
    //   280: new 243	java/lang/String
    //   283: dup
    //   284: aload 14
    //   286: iconst_0
    //   287: iload_2
    //   288: invokespecial 246	java/lang/String:<init>	([BII)V
    //   291: invokevirtual 250	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: pop
    //   295: goto -150 -> 145
    //   298: astore_1
    //   299: aload 6
    //   301: astore 4
    //   303: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   306: aload_1
    //   307: invokevirtual 251	android/content/pm/PackageManager$NameNotFoundException:getMessage	()Ljava/lang/String;
    //   310: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   313: aload 6
    //   315: ifnull +8 -> 323
    //   318: aload 6
    //   320: invokevirtual 241	java/io/InputStream:close	()V
    //   323: aconst_null
    //   324: areturn
    //   325: astore_1
    //   326: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   329: aload_1
    //   330: invokevirtual 252	java/io/IOException:getMessage	()Ljava/lang/String;
    //   333: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   336: goto -80 -> 256
    //   339: aload 5
    //   341: astore 6
    //   343: aload 5
    //   345: astore 7
    //   347: aload 5
    //   349: astore 8
    //   351: aload 5
    //   353: astore 9
    //   355: aload 5
    //   357: astore 4
    //   359: new 254	org/json/JSONObject
    //   362: dup
    //   363: aload 10
    //   365: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   368: invokespecial 255	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   371: ldc -102
    //   373: iconst_m1
    //   374: invokevirtual 259	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   377: istore_2
    //   378: aload 5
    //   380: astore 6
    //   382: aload 5
    //   384: astore 7
    //   386: aload 5
    //   388: astore 8
    //   390: aload 5
    //   392: astore 9
    //   394: aload 5
    //   396: astore 4
    //   398: new 6	com/sina/weibo/sdk/WeiboAppManager$WeiboInfo
    //   401: dup
    //   402: invokespecial 179	com/sina/weibo/sdk/WeiboAppManager$WeiboInfo:<init>	()V
    //   405: astore 10
    //   407: aload 5
    //   409: astore 6
    //   411: aload 5
    //   413: astore 7
    //   415: aload 5
    //   417: astore 8
    //   419: aload 5
    //   421: astore 9
    //   423: aload 5
    //   425: astore 4
    //   427: aload 10
    //   429: aload_1
    //   430: invokestatic 183	com/sina/weibo/sdk/WeiboAppManager$WeiboInfo:access$0	(Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Ljava/lang/String;)V
    //   433: aload 5
    //   435: astore 6
    //   437: aload 5
    //   439: astore 7
    //   441: aload 5
    //   443: astore 8
    //   445: aload 5
    //   447: astore 9
    //   449: aload 5
    //   451: astore 4
    //   453: aload 10
    //   455: iload_2
    //   456: invokestatic 187	com/sina/weibo/sdk/WeiboAppManager$WeiboInfo:access$1	(Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;I)V
    //   459: aload 10
    //   461: astore_1
    //   462: aload 5
    //   464: ifnull -455 -> 9
    //   467: aload 5
    //   469: invokevirtual 241	java/io/InputStream:close	()V
    //   472: aload 10
    //   474: areturn
    //   475: astore_1
    //   476: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   479: aload_1
    //   480: invokevirtual 252	java/io/IOException:getMessage	()Ljava/lang/String;
    //   483: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   486: aload 10
    //   488: areturn
    //   489: astore_1
    //   490: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   493: aload_1
    //   494: invokevirtual 252	java/io/IOException:getMessage	()Ljava/lang/String;
    //   497: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   500: goto -177 -> 323
    //   503: astore_1
    //   504: aload 7
    //   506: astore 4
    //   508: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   511: aload_1
    //   512: invokevirtual 252	java/io/IOException:getMessage	()Ljava/lang/String;
    //   515: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   518: aload 7
    //   520: ifnull -197 -> 323
    //   523: aload 7
    //   525: invokevirtual 241	java/io/InputStream:close	()V
    //   528: goto -205 -> 323
    //   531: astore_1
    //   532: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   535: aload_1
    //   536: invokevirtual 252	java/io/IOException:getMessage	()Ljava/lang/String;
    //   539: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   542: goto -219 -> 323
    //   545: astore_1
    //   546: aload 8
    //   548: astore 4
    //   550: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   553: aload_1
    //   554: invokevirtual 260	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   557: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   560: aload 8
    //   562: ifnull -239 -> 323
    //   565: aload 8
    //   567: invokevirtual 241	java/io/InputStream:close	()V
    //   570: goto -247 -> 323
    //   573: astore_1
    //   574: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   577: aload_1
    //   578: invokevirtual 252	java/io/IOException:getMessage	()Ljava/lang/String;
    //   581: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   584: goto -261 -> 323
    //   587: astore_1
    //   588: aload 9
    //   590: astore 4
    //   592: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   595: aload_1
    //   596: invokevirtual 193	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   599: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   602: aload 9
    //   604: ifnull -281 -> 323
    //   607: aload 9
    //   609: invokevirtual 241	java/io/InputStream:close	()V
    //   612: goto -289 -> 323
    //   615: astore_1
    //   616: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   619: aload_1
    //   620: invokevirtual 252	java/io/IOException:getMessage	()Ljava/lang/String;
    //   623: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   626: goto -303 -> 323
    //   629: astore_1
    //   630: aload 4
    //   632: ifnull +8 -> 640
    //   635: aload 4
    //   637: invokevirtual 241	java/io/InputStream:close	()V
    //   640: aload_1
    //   641: athrow
    //   642: astore 4
    //   644: getstatic 31	com/sina/weibo/sdk/WeiboAppManager:TAG	Ljava/lang/String;
    //   647: aload 4
    //   649: invokevirtual 252	java/io/IOException:getMessage	()Ljava/lang/String;
    //   652: invokestatic 199	com/sina/weibo/sdk/utils/LogUtil:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   655: goto -15 -> 640
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	658	0	this	WeiboAppManager
    //   0	658	1	paramString	String
    //   176	280	2	i	int
    //   241	2	3	bool	boolean
    //   44	592	4	localObject1	Object
    //   642	6	4	localIOException	java.io.IOException
    //   24	444	5	localInputStream1	java.io.InputStream
    //   28	408	6	localInputStream2	java.io.InputStream
    //   32	492	7	localObject2	Object
    //   36	530	8	localObject3	Object
    //   40	568	9	localObject4	Object
    //   12	475	10	localObject5	Object
    //   15	78	11	localObject6	Object
    //   18	79	12	localObject7	Object
    //   21	80	13	localObject8	Object
    //   82	203	14	arrayOfByte	byte[]
    //   55	50	15	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   46	57	298	android/content/pm/PackageManager$NameNotFoundException
    //   77	84	298	android/content/pm/PackageManager$NameNotFoundException
    //   104	116	298	android/content/pm/PackageManager$NameNotFoundException
    //   136	145	298	android/content/pm/PackageManager$NameNotFoundException
    //   165	177	298	android/content/pm/PackageManager$NameNotFoundException
    //   202	213	298	android/content/pm/PackageManager$NameNotFoundException
    //   233	242	298	android/content/pm/PackageManager$NameNotFoundException
    //   278	295	298	android/content/pm/PackageManager$NameNotFoundException
    //   359	378	298	android/content/pm/PackageManager$NameNotFoundException
    //   398	407	298	android/content/pm/PackageManager$NameNotFoundException
    //   427	433	298	android/content/pm/PackageManager$NameNotFoundException
    //   453	459	298	android/content/pm/PackageManager$NameNotFoundException
    //   251	256	325	java/io/IOException
    //   467	472	475	java/io/IOException
    //   318	323	489	java/io/IOException
    //   46	57	503	java/io/IOException
    //   77	84	503	java/io/IOException
    //   104	116	503	java/io/IOException
    //   136	145	503	java/io/IOException
    //   165	177	503	java/io/IOException
    //   202	213	503	java/io/IOException
    //   233	242	503	java/io/IOException
    //   278	295	503	java/io/IOException
    //   359	378	503	java/io/IOException
    //   398	407	503	java/io/IOException
    //   427	433	503	java/io/IOException
    //   453	459	503	java/io/IOException
    //   523	528	531	java/io/IOException
    //   46	57	545	org/json/JSONException
    //   77	84	545	org/json/JSONException
    //   104	116	545	org/json/JSONException
    //   136	145	545	org/json/JSONException
    //   165	177	545	org/json/JSONException
    //   202	213	545	org/json/JSONException
    //   233	242	545	org/json/JSONException
    //   278	295	545	org/json/JSONException
    //   359	378	545	org/json/JSONException
    //   398	407	545	org/json/JSONException
    //   427	433	545	org/json/JSONException
    //   453	459	545	org/json/JSONException
    //   565	570	573	java/io/IOException
    //   46	57	587	java/lang/Exception
    //   77	84	587	java/lang/Exception
    //   104	116	587	java/lang/Exception
    //   136	145	587	java/lang/Exception
    //   165	177	587	java/lang/Exception
    //   202	213	587	java/lang/Exception
    //   233	242	587	java/lang/Exception
    //   278	295	587	java/lang/Exception
    //   359	378	587	java/lang/Exception
    //   398	407	587	java/lang/Exception
    //   427	433	587	java/lang/Exception
    //   453	459	587	java/lang/Exception
    //   607	612	615	java/io/IOException
    //   46	57	629	finally
    //   77	84	629	finally
    //   104	116	629	finally
    //   136	145	629	finally
    //   165	177	629	finally
    //   202	213	629	finally
    //   233	242	629	finally
    //   278	295	629	finally
    //   303	313	629	finally
    //   359	378	629	finally
    //   398	407	629	finally
    //   427	433	629	finally
    //   453	459	629	finally
    //   508	518	629	finally
    //   550	560	629	finally
    //   592	602	629	finally
    //   635	640	642	java/io/IOException
  }
  
  public static class WeiboInfo
  {
    private String mPackageName;
    private int mSupportApi;
    
    private void setPackageName(String paramString)
    {
      this.mPackageName = paramString;
    }
    
    private void setSupportApi(int paramInt)
    {
      this.mSupportApi = paramInt;
    }
    
    public String getPackageName()
    {
      return this.mPackageName;
    }
    
    public int getSupportApi()
    {
      return this.mSupportApi;
    }
    
    public boolean isLegal()
    {
      return (!TextUtils.isEmpty(this.mPackageName)) && (this.mSupportApi > 0);
    }
    
    public String toString()
    {
      return "WeiboInfo: PackageName = " + this.mPackageName + ", supportApi = " + this.mSupportApi;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/WeiboAppManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */