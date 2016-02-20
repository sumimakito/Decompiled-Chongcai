package com.tencent.open.utils;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import com.tencent.open.a.f;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class OpenConfig
{
  private static HashMap<String, OpenConfig> a = null;
  private static String b = null;
  private Context c = null;
  private String d = null;
  private JSONObject e = null;
  private long f = 0L;
  private int g = 0;
  private boolean h = true;
  
  private OpenConfig(Context paramContext, String paramString)
  {
    this.c = paramContext.getApplicationContext();
    this.d = paramString;
    a();
    b();
  }
  
  /* Error */
  private String a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 37	com/tencent/open/utils/OpenConfig:d	Ljava/lang/String;
    //   4: ifnull +107 -> 111
    //   7: new 64	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   14: aload_1
    //   15: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: ldc 71
    //   20: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: aload_0
    //   24: getfield 37	com/tencent/open/utils/OpenConfig:d	Ljava/lang/String;
    //   27: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: astore_2
    //   34: aload_0
    //   35: getfield 35	com/tencent/open/utils/OpenConfig:c	Landroid/content/Context;
    //   38: aload_2
    //   39: invokevirtual 79	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   42: astore_2
    //   43: aload_2
    //   44: astore_1
    //   45: new 81	java/io/BufferedReader
    //   48: dup
    //   49: new 83	java/io/InputStreamReader
    //   52: dup
    //   53: aload_1
    //   54: ldc 85
    //   56: invokestatic 91	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   59: invokespecial 94	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   62: invokespecial 97	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   65: astore_2
    //   66: new 99	java/lang/StringBuffer
    //   69: dup
    //   70: invokespecial 100	java/lang/StringBuffer:<init>	()V
    //   73: astore_3
    //   74: aload_2
    //   75: invokevirtual 103	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   78: astore 4
    //   80: aload 4
    //   82: ifnull +58 -> 140
    //   85: aload_3
    //   86: aload 4
    //   88: invokevirtual 106	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   91: pop
    //   92: goto -18 -> 74
    //   95: astore_3
    //   96: aload_3
    //   97: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   100: aload_1
    //   101: invokevirtual 114	java/io/InputStream:close	()V
    //   104: aload_2
    //   105: invokevirtual 115	java/io/BufferedReader:close	()V
    //   108: ldc 117
    //   110: areturn
    //   111: aload_1
    //   112: astore_2
    //   113: goto -79 -> 34
    //   116: astore_2
    //   117: aload_0
    //   118: getfield 35	com/tencent/open/utils/OpenConfig:c	Landroid/content/Context;
    //   121: invokevirtual 121	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   124: aload_1
    //   125: invokevirtual 127	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   128: astore_1
    //   129: goto -84 -> 45
    //   132: astore_1
    //   133: aload_1
    //   134: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   137: ldc 117
    //   139: areturn
    //   140: aload_3
    //   141: invokevirtual 128	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   144: astore_3
    //   145: aload_1
    //   146: invokevirtual 114	java/io/InputStream:close	()V
    //   149: aload_2
    //   150: invokevirtual 115	java/io/BufferedReader:close	()V
    //   153: aload_3
    //   154: areturn
    //   155: astore_1
    //   156: aload_1
    //   157: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   160: aload_3
    //   161: areturn
    //   162: astore_1
    //   163: aload_1
    //   164: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   167: ldc 117
    //   169: areturn
    //   170: astore_3
    //   171: aload_1
    //   172: invokevirtual 114	java/io/InputStream:close	()V
    //   175: aload_2
    //   176: invokevirtual 115	java/io/BufferedReader:close	()V
    //   179: aload_3
    //   180: athrow
    //   181: astore_1
    //   182: aload_1
    //   183: invokevirtual 109	java/io/IOException:printStackTrace	()V
    //   186: goto -7 -> 179
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	189	0	this	OpenConfig
    //   0	189	1	paramString	String
    //   33	80	2	localObject1	Object
    //   116	60	2	localFileNotFoundException	java.io.FileNotFoundException
    //   73	13	3	localStringBuffer	StringBuffer
    //   95	46	3	localIOException	IOException
    //   144	17	3	str1	String
    //   170	10	3	localObject2	Object
    //   78	9	4	str2	String
    // Exception table:
    //   from	to	target	type
    //   74	80	95	java/io/IOException
    //   85	92	95	java/io/IOException
    //   140	145	95	java/io/IOException
    //   0	34	116	java/io/FileNotFoundException
    //   34	43	116	java/io/FileNotFoundException
    //   117	129	132	java/io/IOException
    //   145	153	155	java/io/IOException
    //   100	108	162	java/io/IOException
    //   74	80	170	finally
    //   85	92	170	finally
    //   96	100	170	finally
    //   140	145	170	finally
    //   171	179	181	java/io/IOException
  }
  
  private void a()
  {
    String str = a("com.tencent.open.config.json");
    try
    {
      this.e = new JSONObject(str);
      return;
    }
    catch (JSONException localJSONException)
    {
      this.e = new JSONObject();
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    String str = paramString1;
    try
    {
      if (this.d != null) {
        str = paramString1 + "." + this.d;
      }
      paramString1 = new OutputStreamWriter(this.c.openFileOutput(str, 0), Charset.forName("UTF-8"));
      paramString1.write(paramString2);
      paramString1.flush();
      paramString1.close();
      return;
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  private void a(JSONObject paramJSONObject)
  {
    b("cgi back, do update");
    this.e = paramJSONObject;
    a("com.tencent.open.config.json", paramJSONObject.toString());
    this.f = SystemClock.elapsedRealtime();
  }
  
  private void b()
  {
    if (this.g != 0)
    {
      b("update thread is running, return");
      return;
    }
    this.g = 1;
    final Bundle localBundle = new Bundle();
    localBundle.putString("appid", this.d);
    localBundle.putString("appid_for_getting_config", this.d);
    localBundle.putString("status_os", Build.VERSION.RELEASE);
    localBundle.putString("status_machine", Build.MODEL);
    localBundle.putString("status_version", Build.VERSION.SDK);
    localBundle.putString("sdkv", "2.9.1.lite");
    localBundle.putString("sdkp", "a");
    new Thread()
    {
      public void run()
      {
        try
        {
          JSONObject localJSONObject = Util.parseJson(HttpUtils.openUrl2(OpenConfig.a(OpenConfig.this), "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf", "GET", localBundle).response);
          OpenConfig.a(OpenConfig.this, localJSONObject);
          OpenConfig.a(OpenConfig.this, 0);
          return;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
      }
    }.start();
  }
  
  private void b(String paramString)
  {
    if (this.h) {
      f.b("OpenConfig", paramString + "; appid: " + this.d);
    }
  }
  
  private void c()
  {
    int j = this.e.optInt("Common_frequency");
    int i = j;
    if (j == 0) {
      i = 1;
    }
    long l = i * 3600000;
    if (SystemClock.elapsedRealtime() - this.f >= l) {
      b();
    }
  }
  
  public static OpenConfig getInstance(Context paramContext, String paramString)
  {
    if (a == null) {
      a = new HashMap();
    }
    if (paramString != null) {
      b = paramString;
    }
    String str = paramString;
    if (paramString == null) {
      if (b == null) {
        break label78;
      }
    }
    label78:
    for (str = b;; str = "0")
    {
      OpenConfig localOpenConfig = (OpenConfig)a.get(str);
      paramString = localOpenConfig;
      if (localOpenConfig == null)
      {
        paramString = new OpenConfig(paramContext, str);
        a.put(str, paramString);
      }
      return paramString;
    }
  }
  
  public boolean getBoolean(String paramString)
  {
    b("get " + paramString);
    c();
    paramString = this.e.opt(paramString);
    if (paramString == null) {}
    do
    {
      return false;
      if ((paramString instanceof Integer))
      {
        if (!paramString.equals(Integer.valueOf(0))) {}
        for (boolean bool = true;; bool = false) {
          return bool;
        }
      }
    } while (!(paramString instanceof Boolean));
    return ((Boolean)paramString).booleanValue();
  }
  
  public int getInt(String paramString)
  {
    b("get " + paramString);
    c();
    return this.e.optInt(paramString);
  }
  
  public long getLong(String paramString)
  {
    b("get " + paramString);
    c();
    return this.e.optLong(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/OpenConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */