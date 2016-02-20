package com.alipay.sdk.data;

import com.alipay.sdk.util.JsonUtils;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public class Request
{
  private Envelope a;
  private JSONObject b;
  private JSONObject c;
  private long d;
  private WeakReference e = null;
  private boolean f = true;
  private boolean g = true;
  
  public Request(Envelope paramEnvelope, JSONObject paramJSONObject)
  {
    this(paramEnvelope, paramJSONObject, (byte)0);
  }
  
  private Request(Envelope paramEnvelope, JSONObject paramJSONObject, byte paramByte)
  {
    this.a = paramEnvelope;
    this.b = paramJSONObject;
    this.c = null;
    this.e = new WeakReference(null);
  }
  
  private void a(long paramLong)
  {
    this.d = paramLong;
  }
  
  private void a(JSONObject paramJSONObject)
  {
    this.c = paramJSONObject;
  }
  
  private void b(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
  
  private boolean e()
  {
    return this.g;
  }
  
  private long f()
  {
    return this.d;
  }
  
  public final String a()
  {
    return this.a.b();
  }
  
  /* Error */
  public final JSONObject a(String paramString)
  {
    // Byte code:
    //   0: new 59	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 60	org/json/JSONObject:<init>	()V
    //   7: astore_3
    //   8: new 59	org/json/JSONObject
    //   11: dup
    //   12: invokespecial 60	org/json/JSONObject:<init>	()V
    //   15: astore 4
    //   17: aload 4
    //   19: ldc 62
    //   21: getstatic 68	android/os/Build:MODEL	Ljava/lang/String;
    //   24: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   27: pop
    //   28: new 59	org/json/JSONObject
    //   31: dup
    //   32: invokespecial 60	org/json/JSONObject:<init>	()V
    //   35: astore 5
    //   37: aload 4
    //   39: aload_0
    //   40: getfield 37	com/alipay/sdk/data/Request:c	Lorg/json/JSONObject;
    //   43: invokestatic 77	com/alipay/sdk/util/JsonUtils:a	(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    //   46: astore 4
    //   48: aload 4
    //   50: ldc 79
    //   52: aload_0
    //   53: getfield 33	com/alipay/sdk/data/Request:a	Lcom/alipay/sdk/data/Envelope;
    //   56: invokevirtual 81	com/alipay/sdk/data/Envelope:c	()Ljava/lang/String;
    //   59: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   62: pop
    //   63: aload 4
    //   65: ldc 83
    //   67: aload_0
    //   68: getfield 33	com/alipay/sdk/data/Request:a	Lcom/alipay/sdk/data/Envelope;
    //   71: invokevirtual 85	com/alipay/sdk/data/Envelope:a	()Ljava/lang/String;
    //   74: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   77: pop
    //   78: aload 4
    //   80: ldc 87
    //   82: aload_0
    //   83: getfield 33	com/alipay/sdk/data/Request:a	Lcom/alipay/sdk/data/Envelope;
    //   86: invokevirtual 89	com/alipay/sdk/data/Envelope:e	()Ljava/lang/String;
    //   89: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   92: pop
    //   93: aload_0
    //   94: getfield 35	com/alipay/sdk/data/Request:b	Lorg/json/JSONObject;
    //   97: ifnonnull +14 -> 111
    //   100: aload_0
    //   101: new 59	org/json/JSONObject
    //   104: dup
    //   105: invokespecial 60	org/json/JSONObject:<init>	()V
    //   108: putfield 35	com/alipay/sdk/data/Request:b	Lorg/json/JSONObject;
    //   111: aload_0
    //   112: getfield 35	com/alipay/sdk/data/Request:b	Lorg/json/JSONObject;
    //   115: ldc 91
    //   117: aload 5
    //   119: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   122: pop
    //   123: aload_0
    //   124: getfield 33	com/alipay/sdk/data/Request:a	Lcom/alipay/sdk/data/Envelope;
    //   127: invokevirtual 93	com/alipay/sdk/data/Envelope:d	()Ljava/lang/String;
    //   130: astore 6
    //   132: aload 6
    //   134: invokestatic 99	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   137: istore_2
    //   138: iload_2
    //   139: ifne +43 -> 182
    //   142: aload 6
    //   144: ldc 101
    //   146: invokevirtual 107	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   149: astore 6
    //   151: aload 5
    //   153: ldc 109
    //   155: aload 6
    //   157: iconst_1
    //   158: aaload
    //   159: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   162: pop
    //   163: aload 6
    //   165: arraylength
    //   166: iconst_1
    //   167: if_icmple +15 -> 182
    //   170: aload 5
    //   172: ldc 111
    //   174: aload 6
    //   176: iconst_2
    //   177: aaload
    //   178: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   181: pop
    //   182: aload_0
    //   183: getfield 35	com/alipay/sdk/data/Request:b	Lorg/json/JSONObject;
    //   186: ldc 113
    //   188: aload_0
    //   189: getfield 31	com/alipay/sdk/data/Request:g	Z
    //   192: invokevirtual 116	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   195: pop
    //   196: aload_0
    //   197: getfield 29	com/alipay/sdk/data/Request:f	Z
    //   200: ifeq +95 -> 295
    //   203: new 59	org/json/JSONObject
    //   206: dup
    //   207: invokespecial 60	org/json/JSONObject:<init>	()V
    //   210: astore 5
    //   212: new 118	java/lang/StringBuilder
    //   215: dup
    //   216: ldc 120
    //   218: invokespecial 123	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   221: aload_0
    //   222: getfield 35	com/alipay/sdk/data/Request:b	Lorg/json/JSONObject;
    //   225: invokevirtual 126	org/json/JSONObject:toString	()Ljava/lang/String;
    //   228: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   234: pop
    //   235: aload 5
    //   237: ldc -123
    //   239: aload_1
    //   240: aload_0
    //   241: getfield 35	com/alipay/sdk/data/Request:b	Lorg/json/JSONObject;
    //   244: invokevirtual 126	org/json/JSONObject:toString	()Ljava/lang/String;
    //   247: invokestatic 136	com/alipay/sdk/util/JsonUtils:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   250: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   253: pop
    //   254: aload 4
    //   256: ldc -118
    //   258: aload 5
    //   260: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   263: pop
    //   264: aload_3
    //   265: ldc -116
    //   267: aload 4
    //   269: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   272: pop
    //   273: new 118	java/lang/StringBuilder
    //   276: dup
    //   277: ldc -114
    //   279: invokespecial 123	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   282: aload_3
    //   283: invokevirtual 126	org/json/JSONObject:toString	()Ljava/lang/String;
    //   286: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   292: pop
    //   293: aload_3
    //   294: areturn
    //   295: aload 4
    //   297: ldc -118
    //   299: aload_0
    //   300: getfield 35	com/alipay/sdk/data/Request:b	Lorg/json/JSONObject;
    //   303: invokevirtual 72	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   306: pop
    //   307: goto -43 -> 264
    //   310: astore_1
    //   311: goto -38 -> 273
    //   314: astore 5
    //   316: goto -134 -> 182
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	319	0	this	Request
    //   0	319	1	paramString	String
    //   137	2	2	bool	boolean
    //   7	287	3	localJSONObject1	JSONObject
    //   15	281	4	localJSONObject2	JSONObject
    //   35	224	5	localJSONObject3	JSONObject
    //   314	1	5	localException	Exception
    //   130	45	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   8	111	310	java/lang/Exception
    //   111	138	310	java/lang/Exception
    //   182	264	310	java/lang/Exception
    //   264	273	310	java/lang/Exception
    //   295	307	310	java/lang/Exception
    //   142	182	314	java/lang/Exception
  }
  
  public final void a(InteractionData paramInteractionData)
  {
    this.e = new WeakReference(paramInteractionData);
  }
  
  public final void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }
  
  public final InteractionData b()
  {
    return (InteractionData)this.e.get();
  }
  
  public final boolean c()
  {
    return this.f;
  }
  
  public final Envelope d()
  {
    return this.a;
  }
  
  public String toString()
  {
    return this.a.toString() + ", requestData = " + JsonUtils.a(this.b, this.c) + ", timeStamp = " + this.d;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/data/Request.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */