package com.tencent.open.b;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.open.utils.Global;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.OpenConfig;
import com.tencent.open.utils.ThreadManager;
import com.tencent.open.utils.Util;
import java.io.Serializable;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class g
{
  protected static g a;
  protected Random b = new Random();
  protected List<Serializable> c = Collections.synchronizedList(new ArrayList());
  protected List<Serializable> d = Collections.synchronizedList(new ArrayList());
  protected HandlerThread e = null;
  protected Handler f;
  protected Executor g = ThreadManager.newSerialExecutor();
  protected Executor h = ThreadManager.newSerialExecutor();
  
  private g()
  {
    if (this.e == null)
    {
      this.e = new HandlerThread("opensdk.report.handlerthread", 10);
      this.e.start();
    }
    if ((this.e.isAlive()) && (this.e.getLooper() != null)) {
      this.f = new Handler(this.e.getLooper())
      {
        public void handleMessage(Message paramAnonymousMessage)
        {
          switch (paramAnonymousMessage.what)
          {
          }
          for (;;)
          {
            super.handleMessage(paramAnonymousMessage);
            return;
            g.this.b();
            continue;
            g.this.e();
          }
        }
      };
    }
  }
  
  public static g a()
  {
    try
    {
      if (a == null) {
        a = new g();
      }
      g localg = a;
      return localg;
    }
    finally {}
  }
  
  protected int a(int paramInt)
  {
    int i;
    if (paramInt == 0)
    {
      i = OpenConfig.getInstance(Global.getContext(), null).getInt("Common_CGIReportFrequencySuccess");
      paramInt = i;
      if (i == 0) {
        paramInt = 10;
      }
    }
    do
    {
      return paramInt;
      i = OpenConfig.getInstance(Global.getContext(), null).getInt("Common_CGIReportFrequencyFailed");
      paramInt = i;
    } while (i != 0);
    return 100;
  }
  
  public void a(final Bundle paramBundle, String paramString, final boolean paramBoolean)
  {
    if (paramBundle == null) {}
    do
    {
      return;
      com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->reportVia, bundle: " + paramBundle.toString());
    } while ((!a("report_via", paramString)) && (!paramBoolean));
    this.g.execute(new Runnable()
    {
      public void run()
      {
        try
        {
          Object localObject = new Bundle();
          ((Bundle)localObject).putString("uin", "1000");
          ((Bundle)localObject).putString("imei", c.b(Global.getContext()));
          ((Bundle)localObject).putString("imsi", c.c(Global.getContext()));
          ((Bundle)localObject).putString("android_id", c.d(Global.getContext()));
          ((Bundle)localObject).putString("mac", c.a());
          ((Bundle)localObject).putString("platform", "1");
          ((Bundle)localObject).putString("os_ver", Build.VERSION.RELEASE);
          ((Bundle)localObject).putString("position", Util.getLocation(Global.getContext()));
          ((Bundle)localObject).putString("network", a.a(Global.getContext()));
          ((Bundle)localObject).putString("language", c.b());
          ((Bundle)localObject).putString("resolution", c.a(Global.getContext()));
          ((Bundle)localObject).putString("apn", a.b(Global.getContext()));
          ((Bundle)localObject).putString("model_name", Build.MODEL);
          ((Bundle)localObject).putString("timezone", TimeZone.getDefault().getID());
          ((Bundle)localObject).putString("sdk_ver", "2.9.1.lite");
          ((Bundle)localObject).putString("qz_ver", Util.getAppVersionName(Global.getContext(), "com.qzone"));
          ((Bundle)localObject).putString("qq_ver", Util.getVersionName(Global.getContext(), "com.tencent.mobileqq"));
          ((Bundle)localObject).putString("qua", Util.getQUA3(Global.getContext(), Global.getPackageName()));
          ((Bundle)localObject).putString("packagename", Global.getPackageName());
          ((Bundle)localObject).putString("app_ver", Util.getAppVersionName(Global.getContext(), Global.getPackageName()));
          if (paramBundle != null) {
            ((Bundle)localObject).putAll(paramBundle);
          }
          localObject = new b((Bundle)localObject);
          g.this.d.add(localObject);
          int k = g.this.d.size();
          int j = OpenConfig.getInstance(Global.getContext(), null).getInt("Agent_ReportTimeInterval");
          int i = j;
          if (j == 0) {
            i = 10000;
          }
          if ((g.this.a("report_via", k)) || (paramBoolean))
          {
            g.this.e();
            g.this.f.removeMessages(1001);
            return;
          }
          if (!g.this.f.hasMessages(1001))
          {
            localObject = Message.obtain();
            ((Message)localObject).what = 1001;
            g.this.f.sendMessageDelayed((Message)localObject, i);
            return;
          }
        }
        catch (Exception localException)
        {
          com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "--> reporVia, exception in sub thread.", localException);
        }
      }
    });
  }
  
  public void a(String paramString, long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    a(paramString, paramLong1, paramLong2, paramLong3, paramInt, "", false);
  }
  
  public void a(String paramString1, final long paramLong1, final long paramLong2, final long paramLong3, final int paramInt, final String paramString2, boolean paramBoolean)
  {
    com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->reportCgi, command: " + paramString1 + " | startTime: " + paramLong1 + " | reqSize:" + paramLong2 + " | rspSize: " + paramLong3 + " | responseCode: " + paramInt + " | detail: " + paramString2);
    if ((!a("report_cgi", "" + paramInt)) && (!paramBoolean)) {
      return;
    }
    this.h.execute(new Runnable()
    {
      public void run()
      {
        int j = 1;
        for (;;)
        {
          try
          {
            long l1 = SystemClock.elapsedRealtime();
            long l2 = paramLong1;
            Object localObject1 = new Bundle();
            Object localObject2 = a.a(Global.getContext());
            ((Bundle)localObject1).putString("apn", (String)localObject2);
            ((Bundle)localObject1).putString("appid", "1000067");
            ((Bundle)localObject1).putString("commandid", paramString2);
            ((Bundle)localObject1).putString("detail", paramInt);
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("network=").append((String)localObject2).append('&');
            localObject2 = localStringBuilder.append("sdcard=");
            if (Environment.getExternalStorageState().equals("mounted"))
            {
              i = 1;
              ((StringBuilder)localObject2).append(i).append('&');
              localStringBuilder.append("wifi=").append(a.e(Global.getContext()));
              ((Bundle)localObject1).putString("deviceInfo", localStringBuilder.toString());
              i = 100 / g.this.a(paramLong2);
              if (i > 0) {
                break label502;
              }
              i = j;
              label181:
              ((Bundle)localObject1).putString("frequency", i + "");
              ((Bundle)localObject1).putString("reqSize", paramLong3 + "");
              ((Bundle)localObject1).putString("resultCode", paramLong2 + "");
              ((Bundle)localObject1).putString("rspSize", this.f + "");
              ((Bundle)localObject1).putString("timeCost", l1 - l2 + "");
              ((Bundle)localObject1).putString("uin", "1000");
              localObject1 = new b((Bundle)localObject1);
              g.this.c.add(localObject1);
              int k = g.this.c.size();
              j = OpenConfig.getInstance(Global.getContext(), null).getInt("Agent_ReportTimeInterval");
              i = j;
              if (j == 0) {
                i = 10000;
              }
              if ((g.this.a("report_cgi", k)) || (this.g))
              {
                g.this.b();
                g.this.f.removeMessages(1000);
                return;
              }
              if (!g.this.f.hasMessages(1000))
              {
                localObject1 = Message.obtain();
                ((Message)localObject1).what = 1000;
                g.this.f.sendMessageDelayed((Message)localObject1, i);
                return;
              }
            }
          }
          catch (Exception localException)
          {
            com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "--> reportCGI, exception in sub thread.", localException);
            return;
          }
          label502:
          do
          {
            break label181;
            return;
            i = 0;
            break;
          } while (i <= 100);
          int i = 100;
        }
      }
    });
  }
  
  public void a(final String paramString1, final String paramString2, final Bundle paramBundle, final boolean paramBoolean)
  {
    ThreadManager.executeOnSubThread(new Runnable()
    {
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: iconst_0
        //   1: istore_1
        //   2: aload_0
        //   3: getfield 25	com/tencent/open/b/g$6:a	Landroid/os/Bundle;
        //   6: ifnonnull +11 -> 17
        //   9: ldc 44
        //   11: ldc 46
        //   13: invokestatic 51	com/tencent/open/a/f:e	(Ljava/lang/String;Ljava/lang/String;)V
        //   16: return
        //   17: invokestatic 56	com/tencent/open/b/e:a	()I
        //   20: istore_3
        //   21: iload_3
        //   22: ifne +227 -> 249
        //   25: iconst_3
        //   26: istore_3
        //   27: ldc 44
        //   29: new 58	java/lang/StringBuilder
        //   32: dup
        //   33: invokespecial 59	java/lang/StringBuilder:<init>	()V
        //   36: ldc 61
        //   38: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   41: iload_3
        //   42: invokevirtual 68	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
        //   45: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   48: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   51: invokestatic 80	com/tencent/open/utils/Global:getContext	()Landroid/content/Context;
        //   54: aconst_null
        //   55: aload_0
        //   56: getfield 27	com/tencent/open/b/g$6:b	Ljava/lang/String;
        //   59: invokestatic 86	com/tencent/open/utils/HttpUtils:getHttpClient	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
        //   62: astore 8
        //   64: aload_0
        //   65: getfield 25	com/tencent/open/b/g$6:a	Landroid/os/Bundle;
        //   68: invokestatic 90	com/tencent/open/utils/HttpUtils:encodeUrl	(Landroid/os/Bundle;)Ljava/lang/String;
        //   71: astore 6
        //   73: aload_0
        //   74: getfield 29	com/tencent/open/b/g$6:c	Z
        //   77: ifeq +312 -> 389
        //   80: aload 6
        //   82: invokestatic 96	java/net/URLEncoder:encode	(Ljava/lang/String;)Ljava/lang/String;
        //   85: astore 6
        //   87: aload_0
        //   88: getfield 31	com/tencent/open/b/g$6:d	Ljava/lang/String;
        //   91: invokevirtual 101	java/lang/String:toUpperCase	()Ljava/lang/String;
        //   94: ldc 103
        //   96: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
        //   99: ifeq +153 -> 252
        //   102: new 109	java/lang/StringBuffer
        //   105: dup
        //   106: aload_0
        //   107: getfield 27	com/tencent/open/b/g$6:b	Ljava/lang/String;
        //   110: invokespecial 112	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
        //   113: astore 7
        //   115: aload 7
        //   117: aload 6
        //   119: invokevirtual 115	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   122: pop
        //   123: new 117	org/apache/http/client/methods/HttpGet
        //   126: dup
        //   127: aload 7
        //   129: invokevirtual 118	java/lang/StringBuffer:toString	()Ljava/lang/String;
        //   132: invokespecial 119	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
        //   135: astore 6
        //   137: aload 6
        //   139: ldc 121
        //   141: ldc 123
        //   143: invokeinterface 128 3 0
        //   148: aload 6
        //   150: ldc -126
        //   152: ldc -124
        //   154: invokeinterface 128 3 0
        //   159: iconst_0
        //   160: istore 4
        //   162: iload 4
        //   164: iconst_1
        //   165: iadd
        //   166: istore 5
        //   168: aload 8
        //   170: aload 6
        //   172: invokeinterface 138 2 0
        //   177: invokeinterface 144 1 0
        //   182: invokeinterface 149 1 0
        //   187: istore_2
        //   188: ldc 44
        //   190: new 58	java/lang/StringBuilder
        //   193: dup
        //   194: invokespecial 59	java/lang/StringBuilder:<init>	()V
        //   197: ldc -105
        //   199: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   202: iload_2
        //   203: invokevirtual 68	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
        //   206: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   209: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   212: iload_2
        //   213: sipush 200
        //   216: if_icmpeq +96 -> 312
        //   219: ldc 44
        //   221: ldc -103
        //   223: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   226: iload_1
        //   227: iconst_1
        //   228: if_icmpne +132 -> 360
        //   231: ldc 44
        //   233: ldc -101
        //   235: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   238: return
        //   239: astore 6
        //   241: ldc 44
        //   243: ldc -99
        //   245: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   248: return
        //   249: goto -222 -> 27
        //   252: aload_0
        //   253: getfield 31	com/tencent/open/b/g$6:d	Ljava/lang/String;
        //   256: invokevirtual 101	java/lang/String:toUpperCase	()Ljava/lang/String;
        //   259: ldc -97
        //   261: invokevirtual 107	java/lang/String:equals	(Ljava/lang/Object;)Z
        //   264: ifeq +40 -> 304
        //   267: new 161	org/apache/http/client/methods/HttpPost
        //   270: dup
        //   271: aload_0
        //   272: getfield 27	com/tencent/open/b/g$6:b	Ljava/lang/String;
        //   275: invokespecial 162	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
        //   278: astore 7
        //   280: aload 7
        //   282: new 164	org/apache/http/entity/ByteArrayEntity
        //   285: dup
        //   286: aload 6
        //   288: invokestatic 170	com/tencent/open/utils/Util:getBytesUTF8	(Ljava/lang/String;)[B
        //   291: invokespecial 173	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
        //   294: invokevirtual 177	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
        //   297: aload 7
        //   299: astore 6
        //   301: goto -164 -> 137
        //   304: ldc 44
        //   306: ldc -77
        //   308: invokestatic 51	com/tencent/open/a/f:e	(Ljava/lang/String;Ljava/lang/String;)V
        //   311: return
        //   312: ldc 44
        //   314: ldc -75
        //   316: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   319: iconst_1
        //   320: istore_1
        //   321: goto -95 -> 226
        //   324: astore 7
        //   326: ldc 44
        //   328: ldc -73
        //   330: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   333: iload_1
        //   334: istore_2
        //   335: goto +57 -> 392
        //   338: ldc 44
        //   340: ldc -71
        //   342: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   345: iload_1
        //   346: istore_2
        //   347: goto +45 -> 392
        //   350: ldc 44
        //   352: ldc -69
        //   354: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   357: goto -131 -> 226
        //   360: ldc 44
        //   362: ldc -67
        //   364: invokestatic 74	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   367: return
        //   368: astore 6
        //   370: iconst_1
        //   371: istore_1
        //   372: goto -22 -> 350
        //   375: astore 7
        //   377: iconst_1
        //   378: istore_1
        //   379: goto -41 -> 338
        //   382: astore 7
        //   384: iconst_1
        //   385: istore_1
        //   386: goto -60 -> 326
        //   389: goto -302 -> 87
        //   392: iload_2
        //   393: istore_1
        //   394: iload 5
        //   396: istore 4
        //   398: iload 5
        //   400: iload_3
        //   401: if_icmplt -239 -> 162
        //   404: iload_2
        //   405: istore_1
        //   406: goto -180 -> 226
        //   409: astore 7
        //   411: goto -73 -> 338
        //   414: astore 6
        //   416: goto -66 -> 350
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	419	0	this	6
        //   1	405	1	i	int
        //   187	218	2	j	int
        //   20	382	3	k	int
        //   160	237	4	m	int
        //   166	236	5	n	int
        //   71	100	6	localObject1	Object
        //   239	48	6	localException1	Exception
        //   299	1	6	localObject2	Object
        //   368	1	6	localException2	Exception
        //   414	1	6	localException3	Exception
        //   113	185	7	localObject3	Object
        //   324	1	7	localConnectTimeoutException1	ConnectTimeoutException
        //   375	1	7	localSocketTimeoutException1	SocketTimeoutException
        //   382	1	7	localConnectTimeoutException2	ConnectTimeoutException
        //   409	1	7	localSocketTimeoutException2	SocketTimeoutException
        //   62	107	8	localHttpClient	HttpClient
        // Exception table:
        //   from	to	target	type
        //   2	16	239	java/lang/Exception
        //   17	21	239	java/lang/Exception
        //   27	87	239	java/lang/Exception
        //   87	137	239	java/lang/Exception
        //   137	159	239	java/lang/Exception
        //   231	238	239	java/lang/Exception
        //   252	297	239	java/lang/Exception
        //   304	311	239	java/lang/Exception
        //   326	333	239	java/lang/Exception
        //   338	345	239	java/lang/Exception
        //   350	357	239	java/lang/Exception
        //   360	367	239	java/lang/Exception
        //   168	212	324	org/apache/http/conn/ConnectTimeoutException
        //   219	226	324	org/apache/http/conn/ConnectTimeoutException
        //   312	319	368	java/lang/Exception
        //   312	319	375	java/net/SocketTimeoutException
        //   312	319	382	org/apache/http/conn/ConnectTimeoutException
        //   168	212	409	java/net/SocketTimeoutException
        //   219	226	409	java/net/SocketTimeoutException
        //   168	212	414	java/lang/Exception
        //   219	226	414	java/lang/Exception
      }
    });
  }
  
  protected boolean a(String paramString, int paramInt)
  {
    int i = 5;
    boolean bool = false;
    int j;
    if (paramString.equals("report_cgi"))
    {
      j = OpenConfig.getInstance(Global.getContext(), null).getInt("Common_CGIReportMaxcount");
      if (j != 0) {}
    }
    for (;;)
    {
      com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->availableCount, report: " + paramString + " | dataSize: " + paramInt + " | maxcount: " + i);
      if (paramInt >= i) {
        bool = true;
      }
      return bool;
      i = j;
      continue;
      if (paramString.equals("report_via"))
      {
        j = OpenConfig.getInstance(Global.getContext(), null).getInt("Agent_ReportBatchCount");
        if (j != 0) {
          i = j;
        }
      }
      else
      {
        i = 0;
      }
    }
  }
  
  protected boolean a(String paramString1, String paramString2)
  {
    boolean bool1 = true;
    boolean bool2 = false;
    com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->availableFrequency, report: " + paramString1 + " | ext: " + paramString2);
    if (TextUtils.isEmpty(paramString1)) {
      return false;
    }
    if (paramString1.equals("report_cgi")) {}
    for (;;)
    {
      try
      {
        int i = Integer.parseInt(paramString2);
        i = a(i);
        if (this.b.nextInt(100) < i)
        {
          com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->availableFrequency, result: " + bool1 + " | frequency: " + i);
          return bool1;
        }
        bool1 = false;
        continue;
        if (paramString1.equals("report_via"))
        {
          i = e.a(paramString2);
          if (this.b.nextInt(100) < i)
          {
            bool1 = true;
            continue;
          }
          bool1 = bool2;
          continue;
        }
        i = 100;
      }
      catch (Exception paramString1)
      {
        return false;
      }
      bool1 = bool2;
    }
  }
  
  protected void b()
  {
    this.h.execute(new Runnable()
    {
      public void run()
      {
        int k = 0;
        for (;;)
        {
          int i;
          int m;
          try
          {
            localBundle = g.this.c();
            if (localBundle == null) {
              return;
            }
            i = OpenConfig.getInstance(Global.getContext(), null).getInt("Common_HttpRetryCount");
            if (i == 0)
            {
              i = 3;
              com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->doReportCgi, retryCount: " + i);
              j = 0;
              m = j + 1;
            }
          }
          catch (Exception localException1)
          {
            Bundle localBundle;
            HttpClient localHttpClient;
            HttpPost localHttpPost;
            int n;
            com.tencent.open.a.f.a("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception out.", localException1);
            return;
          }
          try
          {
            localHttpClient = HttpUtils.getHttpClient(Global.getContext(), null, "http://wspeed.qq.com/w.cgi");
            localHttpPost = new HttpPost("http://wspeed.qq.com/w.cgi");
            localHttpPost.addHeader("Accept-Encoding", "gzip");
            localHttpPost.setHeader("Content-Type", "application/x-www-form-urlencoded");
            localHttpPost.setEntity(new ByteArrayEntity(Util.getBytesUTF8(HttpUtils.encodeUrl(localBundle))));
            n = localHttpClient.execute(localHttpPost).getStatusLine().getStatusCode();
            com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->doReportCgi, statusCode: " + n);
            j = k;
            if (n == 200)
            {
              f.a().b("report_cgi");
              j = 1;
            }
          }
          catch (ConnectTimeoutException localConnectTimeoutException)
          {
            com.tencent.open.a.f.a("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", localConnectTimeoutException);
          }
          catch (SocketTimeoutException localSocketTimeoutException)
          {
            com.tencent.open.a.f.a("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", localSocketTimeoutException);
          }
          catch (Exception localException2)
          {
            com.tencent.open.a.f.a("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", localException2);
            j = k;
            continue;
          }
          if (j == 0) {
            f.a().a("report_cgi", g.this.c);
          }
          g.this.c.clear();
          return;
          continue;
          int j = m;
          if (m >= i) {
            j = k;
          }
        }
      }
    });
  }
  
  protected Bundle c()
  {
    if (this.c.size() == 0) {
      return null;
    }
    Object localObject1 = (b)this.c.get(0);
    if (localObject1 == null)
    {
      com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->prepareCgiData, the 0th cgireportitem is null.");
      return null;
    }
    Object localObject2 = (String)((b)localObject1).a.get("appid");
    localObject1 = f.a().a("report_cgi");
    if (localObject1 != null) {
      this.c.addAll((Collection)localObject1);
    }
    com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->prepareCgiData, mCgiList size: " + this.c.size());
    if (this.c.size() == 0) {
      return null;
    }
    localObject1 = new Bundle();
    try
    {
      ((Bundle)localObject1).putString("appid", (String)localObject2);
      ((Bundle)localObject1).putString("releaseversion", "OpenSdk_2.9.1.lite");
      ((Bundle)localObject1).putString("device", Build.DEVICE);
      ((Bundle)localObject1).putString("qua", "V1_AND_OpenSDK_2.9.1.lite_1077_RDM_B");
      ((Bundle)localObject1).putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,touin,deviceinfo");
      int i = 0;
      while (i < this.c.size())
      {
        localObject2 = (b)this.c.get(i);
        ((Bundle)localObject1).putString(i + "_1", (String)((b)localObject2).a.get("apn"));
        ((Bundle)localObject1).putString(i + "_2", (String)((b)localObject2).a.get("frequency"));
        ((Bundle)localObject1).putString(i + "_3", (String)((b)localObject2).a.get("commandid"));
        ((Bundle)localObject1).putString(i + "_4", (String)((b)localObject2).a.get("resultCode"));
        ((Bundle)localObject1).putString(i + "_5", (String)((b)localObject2).a.get("timeCost"));
        ((Bundle)localObject1).putString(i + "_6", (String)((b)localObject2).a.get("reqSize"));
        ((Bundle)localObject1).putString(i + "_7", (String)((b)localObject2).a.get("rspSize"));
        ((Bundle)localObject1).putString(i + "_8", (String)((b)localObject2).a.get("detail"));
        ((Bundle)localObject1).putString(i + "_9", (String)((b)localObject2).a.get("uin"));
        localObject2 = c.e(Global.getContext()) + "&" + (String)((b)localObject2).a.get("deviceInfo");
        ((Bundle)localObject1).putString(i + "_10", (String)localObject2);
        i += 1;
      }
      com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->prepareCgiData, end. params: " + localException.toString());
    }
    catch (Exception localException)
    {
      com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->prepareCgiData, exception.", localException);
      return null;
    }
    return localException;
  }
  
  protected Bundle d()
  {
    Object localObject1 = f.a().a("report_via");
    if (localObject1 != null) {
      this.d.addAll((Collection)localObject1);
    }
    com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->prepareViaData, mViaList size: " + this.d.size());
    if (this.d.size() == 0) {
      return null;
    }
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator1 = this.d.iterator();
    while (localIterator1.hasNext())
    {
      localObject1 = (Serializable)localIterator1.next();
      JSONObject localJSONObject = new JSONObject();
      b localb = (b)localObject1;
      Iterator localIterator2 = localb.a.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        try
        {
          localObject2 = (String)localb.a.get(str);
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = "";
          }
          localJSONObject.put(str, localObject1);
        }
        catch (JSONException localJSONException1)
        {
          com.tencent.open.a.f.a("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", localJSONException1);
        }
      }
      localJSONArray.put(localJSONObject);
    }
    com.tencent.open.a.f.b("openSDK_LOG.ReportManager", "-->prepareViaData, JSONArray array: " + localJSONArray.toString());
    Bundle localBundle = new Bundle();
    Object localObject2 = new JSONObject();
    try
    {
      ((JSONObject)localObject2).put("data", localJSONArray);
      localBundle.putString("data", ((JSONObject)localObject2).toString());
      return localBundle;
    }
    catch (JSONException localJSONException2)
    {
      com.tencent.open.a.f.a("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", localJSONException2);
    }
    return null;
  }
  
  protected void e()
  {
    this.g.execute(new Runnable()
    {
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 17	com/tencent/open/b/g$5:a	Lcom/tencent/open/b/g;
        //   4: invokevirtual 39	com/tencent/open/b/g:d	()Landroid/os/Bundle;
        //   7: astore 29
        //   9: aload 29
        //   11: ifnonnull +4 -> 15
        //   14: return
        //   15: ldc 41
        //   17: new 43	java/lang/StringBuilder
        //   20: dup
        //   21: invokespecial 44	java/lang/StringBuilder:<init>	()V
        //   24: ldc 46
        //   26: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   29: aload 29
        //   31: invokevirtual 56	android/os/Bundle:toString	()Ljava/lang/String;
        //   34: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   37: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   40: invokestatic 63	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   43: invokestatic 68	com/tencent/open/b/e:a	()I
        //   46: istore 8
        //   48: iconst_0
        //   49: istore 4
        //   51: iconst_0
        //   52: istore 10
        //   54: invokestatic 74	android/os/SystemClock:elapsedRealtime	()J
        //   57: lstore 23
        //   59: lconst_0
        //   60: lstore 27
        //   62: lconst_0
        //   63: lstore 25
        //   65: iconst_0
        //   66: istore_3
        //   67: iload 4
        //   69: iconst_1
        //   70: iadd
        //   71: istore_2
        //   72: iload 10
        //   74: istore 11
        //   76: iload_2
        //   77: istore 7
        //   79: iload 10
        //   81: istore 12
        //   83: iload_2
        //   84: istore 4
        //   86: iload 10
        //   88: istore 13
        //   90: iload 10
        //   92: istore 14
        //   94: iload_2
        //   95: istore 5
        //   97: iload 10
        //   99: istore 15
        //   101: iload_2
        //   102: istore 6
        //   104: iload 10
        //   106: istore 16
        //   108: invokestatic 80	com/tencent/open/utils/Global:getContext	()Landroid/content/Context;
        //   111: ldc 82
        //   113: ldc 84
        //   115: aload 29
        //   117: invokestatic 90	com/tencent/open/utils/HttpUtils:openUrl2	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/Util$Statistic;
        //   120: astore 30
        //   122: iload 10
        //   124: istore 11
        //   126: iload_2
        //   127: istore 7
        //   129: iload 10
        //   131: istore 12
        //   133: iload_2
        //   134: istore 4
        //   136: iload 10
        //   138: istore 13
        //   140: iload 10
        //   142: istore 14
        //   144: iload_2
        //   145: istore 5
        //   147: iload 10
        //   149: istore 15
        //   151: iload_2
        //   152: istore 6
        //   154: iload 10
        //   156: istore 16
        //   158: aload 30
        //   160: getfield 96	com/tencent/open/utils/Util$Statistic:response	Ljava/lang/String;
        //   163: invokestatic 102	com/tencent/open/utils/Util:parseJson	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   166: astore 31
        //   168: iload 10
        //   170: istore 11
        //   172: iload_2
        //   173: istore 7
        //   175: iload 10
        //   177: istore 12
        //   179: iload_2
        //   180: istore 4
        //   182: iload 10
        //   184: istore 13
        //   186: iload 10
        //   188: istore 14
        //   190: iload_2
        //   191: istore 5
        //   193: iload 10
        //   195: istore 16
        //   197: aload 31
        //   199: ldc 104
        //   201: invokevirtual 110	org/json/JSONObject:getInt	(Ljava/lang/String;)I
        //   204: istore_1
        //   205: iload_1
        //   206: ifeq +448 -> 654
        //   209: iload 10
        //   211: istore 9
        //   213: iload_2
        //   214: istore_1
        //   215: iload 10
        //   217: istore 11
        //   219: iload_2
        //   220: istore 7
        //   222: iload 10
        //   224: istore 12
        //   226: iload_2
        //   227: istore 4
        //   229: iload 10
        //   231: istore 13
        //   233: iload 10
        //   235: istore 14
        //   237: iload_2
        //   238: istore 5
        //   240: iload 10
        //   242: istore 15
        //   244: iload_2
        //   245: istore 6
        //   247: iload 10
        //   249: istore 16
        //   251: aload 30
        //   253: getfield 96	com/tencent/open/utils/Util$Statistic:response	Ljava/lang/String;
        //   256: invokestatic 116	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
        //   259: ifne +6 -> 265
        //   262: goto +392 -> 654
        //   265: iload 9
        //   267: istore 11
        //   269: iload_1
        //   270: istore 7
        //   272: iload 9
        //   274: istore 12
        //   276: iload_1
        //   277: istore 4
        //   279: iload 9
        //   281: istore 13
        //   283: iload 9
        //   285: istore 14
        //   287: iload_1
        //   288: istore 5
        //   290: iload 9
        //   292: istore 15
        //   294: iload_1
        //   295: istore 6
        //   297: iload 9
        //   299: istore 16
        //   301: aload 30
        //   303: getfield 120	com/tencent/open/utils/Util$Statistic:reqSize	J
        //   306: lstore 17
        //   308: iload 9
        //   310: istore 11
        //   312: iload_1
        //   313: istore 7
        //   315: iload 9
        //   317: istore 12
        //   319: iload_1
        //   320: istore 4
        //   322: iload 9
        //   324: istore 14
        //   326: iload_1
        //   327: istore 5
        //   329: iload 9
        //   331: istore 15
        //   333: iload_1
        //   334: istore 6
        //   336: iload 9
        //   338: istore 16
        //   340: aload 30
        //   342: getfield 123	com/tencent/open/utils/Util$Statistic:rspSize	J
        //   345: lstore 27
        //   347: iload_1
        //   348: istore_2
        //   349: lload 23
        //   351: lstore 21
        //   353: lload 17
        //   355: lstore 19
        //   357: lload 27
        //   359: lstore 17
        //   361: iload_3
        //   362: istore_1
        //   363: iload_1
        //   364: istore_3
        //   365: lload 17
        //   367: lstore 25
        //   369: lload 19
        //   371: lstore 27
        //   373: lload 21
        //   375: lstore 23
        //   377: iload 9
        //   379: istore 10
        //   381: iload_2
        //   382: istore 4
        //   384: iload_2
        //   385: iload 8
        //   387: if_icmplt -320 -> 67
        //   390: aload_0
        //   391: getfield 17	com/tencent/open/b/g$5:a	Lcom/tencent/open/b/g;
        //   394: ldc 125
        //   396: lload 21
        //   398: lload 19
        //   400: lload 17
        //   402: iload_1
        //   403: aconst_null
        //   404: iconst_0
        //   405: invokevirtual 128	com/tencent/open/b/g:a	(Ljava/lang/String;JJJILjava/lang/String;Z)V
        //   408: iload 9
        //   410: ifeq +216 -> 626
        //   413: invokestatic 133	com/tencent/open/b/f:a	()Lcom/tencent/open/b/f;
        //   416: ldc -121
        //   418: invokevirtual 138	com/tencent/open/b/f:b	(Ljava/lang/String;)V
        //   421: aload_0
        //   422: getfield 17	com/tencent/open/b/g$5:a	Lcom/tencent/open/b/g;
        //   425: getfield 141	com/tencent/open/b/g:d	Ljava/util/List;
        //   428: invokeinterface 146 1 0
        //   433: ldc 41
        //   435: new 43	java/lang/StringBuilder
        //   438: dup
        //   439: invokespecial 44	java/lang/StringBuilder:<init>	()V
        //   442: ldc -108
        //   444: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   447: iload 9
        //   449: invokevirtual 151	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
        //   452: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   455: invokestatic 63	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   458: return
        //   459: astore 29
        //   461: ldc 41
        //   463: ldc -103
        //   465: aload 29
        //   467: invokestatic 156	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   470: return
        //   471: astore 31
        //   473: bipush -4
        //   475: istore_1
        //   476: goto -271 -> 205
        //   479: astore 30
        //   481: invokestatic 74	android/os/SystemClock:elapsedRealtime	()J
        //   484: lstore 21
        //   486: iload 7
        //   488: istore_2
        //   489: bipush -7
        //   491: istore_1
        //   492: lconst_0
        //   493: lstore 17
        //   495: lconst_0
        //   496: lstore 19
        //   498: iload 11
        //   500: istore 9
        //   502: goto -139 -> 363
        //   505: astore 30
        //   507: invokestatic 74	android/os/SystemClock:elapsedRealtime	()J
        //   510: lstore 21
        //   512: lconst_0
        //   513: lstore 19
        //   515: lconst_0
        //   516: lstore 17
        //   518: bipush -8
        //   520: istore_1
        //   521: iload 12
        //   523: istore 9
        //   525: iload 4
        //   527: istore_2
        //   528: goto -165 -> 363
        //   531: astore 29
        //   533: aload_0
        //   534: getfield 17	com/tencent/open/b/g$5:a	Lcom/tencent/open/b/g;
        //   537: getfield 141	com/tencent/open/b/g:d	Ljava/util/List;
        //   540: invokeinterface 146 1 0
        //   545: ldc 41
        //   547: ldc -98
        //   549: invokestatic 63	com/tencent/open/a/f:b	(Ljava/lang/String;Ljava/lang/String;)V
        //   552: return
        //   553: astore 29
        //   555: iload 13
        //   557: istore 9
        //   559: lload 27
        //   561: lstore 17
        //   563: aload 29
        //   565: invokevirtual 161	com/tencent/open/utils/HttpUtils$HttpStatusException:getMessage	()Ljava/lang/String;
        //   568: ldc -93
        //   570: ldc -91
        //   572: invokevirtual 171	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
        //   575: invokestatic 176	java/lang/Integer:parseInt	(Ljava/lang/String;)I
        //   578: istore_1
        //   579: iload_1
        //   580: istore_3
        //   581: lload 23
        //   583: lstore 21
        //   585: iload_3
        //   586: istore_1
        //   587: lload 17
        //   589: lstore 19
        //   591: lload 25
        //   593: lstore 17
        //   595: goto -205 -> 390
        //   598: astore 30
        //   600: lconst_0
        //   601: lstore 19
        //   603: lconst_0
        //   604: lstore 17
        //   606: aload 30
        //   608: invokestatic 180	com/tencent/open/utils/HttpUtils:getErrorCodeFromException	(Ljava/io/IOException;)I
        //   611: istore_1
        //   612: lload 23
        //   614: lstore 21
        //   616: iload 14
        //   618: istore 9
        //   620: iload 5
        //   622: istore_2
        //   623: goto -260 -> 363
        //   626: invokestatic 133	com/tencent/open/b/f:a	()Lcom/tencent/open/b/f;
        //   629: ldc -121
        //   631: aload_0
        //   632: getfield 17	com/tencent/open/b/g$5:a	Lcom/tencent/open/b/g;
        //   635: getfield 141	com/tencent/open/b/g:d	Ljava/util/List;
        //   638: invokevirtual 183	com/tencent/open/b/f:a	(Ljava/lang/String;Ljava/util/List;)V
        //   641: goto -220 -> 421
        //   644: astore 29
        //   646: goto -65 -> 581
        //   649: astore 29
        //   651: goto -88 -> 563
        //   654: iconst_1
        //   655: istore 9
        //   657: iload 8
        //   659: istore_1
        //   660: goto -395 -> 265
        //   663: astore 30
        //   665: lconst_0
        //   666: lstore 19
        //   668: lconst_0
        //   669: lstore 17
        //   671: bipush -4
        //   673: istore_1
        //   674: lload 23
        //   676: lstore 21
        //   678: iload 15
        //   680: istore 9
        //   682: iload 6
        //   684: istore_2
        //   685: goto -322 -> 363
        //   688: astore 30
        //   690: lconst_0
        //   691: lstore 19
        //   693: lconst_0
        //   694: lstore 17
        //   696: bipush -6
        //   698: istore_1
        //   699: iload 8
        //   701: istore_2
        //   702: lload 23
        //   704: lstore 21
        //   706: iload 16
        //   708: istore 9
        //   710: goto -347 -> 363
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	713	0	this	5
        //   204	495	1	i	int
        //   71	631	2	j	int
        //   66	520	3	k	int
        //   49	477	4	m	int
        //   95	526	5	n	int
        //   102	581	6	i1	int
        //   77	410	7	i2	int
        //   46	654	8	i3	int
        //   211	498	9	bool1	boolean
        //   52	328	10	bool2	boolean
        //   74	425	11	bool3	boolean
        //   81	441	12	bool4	boolean
        //   88	468	13	bool5	boolean
        //   92	525	14	bool6	boolean
        //   99	580	15	bool7	boolean
        //   106	601	16	bool8	boolean
        //   306	389	17	l1	long
        //   355	337	19	l2	long
        //   351	354	21	l3	long
        //   57	646	23	l4	long
        //   63	529	25	l5	long
        //   60	500	27	l6	long
        //   7	109	29	localBundle	Bundle
        //   459	7	29	localException1	Exception
        //   531	1	29	localNetworkUnavailableException	com.tencent.open.utils.HttpUtils.NetworkUnavailableException
        //   553	11	29	localHttpStatusException1	com.tencent.open.utils.HttpUtils.HttpStatusException
        //   644	1	29	localException2	Exception
        //   649	1	29	localHttpStatusException2	com.tencent.open.utils.HttpUtils.HttpStatusException
        //   120	221	30	localStatistic	com.tencent.open.utils.Util.Statistic
        //   479	1	30	localConnectTimeoutException	ConnectTimeoutException
        //   505	1	30	localSocketTimeoutException	SocketTimeoutException
        //   598	9	30	localIOException	java.io.IOException
        //   663	1	30	localJSONException1	JSONException
        //   688	1	30	localException3	Exception
        //   166	32	31	localJSONObject	JSONObject
        //   471	1	31	localJSONException2	JSONException
        // Exception table:
        //   from	to	target	type
        //   0	9	459	java/lang/Exception
        //   15	48	459	java/lang/Exception
        //   54	59	459	java/lang/Exception
        //   390	408	459	java/lang/Exception
        //   413	421	459	java/lang/Exception
        //   421	458	459	java/lang/Exception
        //   481	486	459	java/lang/Exception
        //   507	512	459	java/lang/Exception
        //   533	552	459	java/lang/Exception
        //   606	612	459	java/lang/Exception
        //   626	641	459	java/lang/Exception
        //   197	205	471	org/json/JSONException
        //   108	122	479	org/apache/http/conn/ConnectTimeoutException
        //   158	168	479	org/apache/http/conn/ConnectTimeoutException
        //   197	205	479	org/apache/http/conn/ConnectTimeoutException
        //   251	262	479	org/apache/http/conn/ConnectTimeoutException
        //   301	308	479	org/apache/http/conn/ConnectTimeoutException
        //   340	347	479	org/apache/http/conn/ConnectTimeoutException
        //   108	122	505	java/net/SocketTimeoutException
        //   158	168	505	java/net/SocketTimeoutException
        //   197	205	505	java/net/SocketTimeoutException
        //   251	262	505	java/net/SocketTimeoutException
        //   301	308	505	java/net/SocketTimeoutException
        //   340	347	505	java/net/SocketTimeoutException
        //   108	122	531	com/tencent/open/utils/HttpUtils$NetworkUnavailableException
        //   158	168	531	com/tencent/open/utils/HttpUtils$NetworkUnavailableException
        //   197	205	531	com/tencent/open/utils/HttpUtils$NetworkUnavailableException
        //   251	262	531	com/tencent/open/utils/HttpUtils$NetworkUnavailableException
        //   301	308	531	com/tencent/open/utils/HttpUtils$NetworkUnavailableException
        //   340	347	531	com/tencent/open/utils/HttpUtils$NetworkUnavailableException
        //   108	122	553	com/tencent/open/utils/HttpUtils$HttpStatusException
        //   158	168	553	com/tencent/open/utils/HttpUtils$HttpStatusException
        //   197	205	553	com/tencent/open/utils/HttpUtils$HttpStatusException
        //   251	262	553	com/tencent/open/utils/HttpUtils$HttpStatusException
        //   301	308	553	com/tencent/open/utils/HttpUtils$HttpStatusException
        //   108	122	598	java/io/IOException
        //   158	168	598	java/io/IOException
        //   197	205	598	java/io/IOException
        //   251	262	598	java/io/IOException
        //   301	308	598	java/io/IOException
        //   340	347	598	java/io/IOException
        //   563	579	644	java/lang/Exception
        //   340	347	649	com/tencent/open/utils/HttpUtils$HttpStatusException
        //   108	122	663	org/json/JSONException
        //   158	168	663	org/json/JSONException
        //   251	262	663	org/json/JSONException
        //   301	308	663	org/json/JSONException
        //   340	347	663	org/json/JSONException
        //   108	122	688	java/lang/Exception
        //   158	168	688	java/lang/Exception
        //   197	205	688	java/lang/Exception
        //   251	262	688	java/lang/Exception
        //   301	308	688	java/lang/Exception
        //   340	347	688	java/lang/Exception
      }
    });
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/b/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */