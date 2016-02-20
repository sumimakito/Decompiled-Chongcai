package com.tencent.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.tencent.stat.a.e;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class n
{
  private static StatLogger e = ;
  private static n f = null;
  Handler a = null;
  volatile int b = 0;
  DeviceInfo c = null;
  private w d;
  private HashMap<String, String> g = new HashMap();
  
  private n(Context paramContext)
  {
    try
    {
      HandlerThread localHandlerThread = new HandlerThread("StatStore");
      localHandlerThread.start();
      e.w("Launch store thread:" + localHandlerThread);
      this.a = new Handler(localHandlerThread.getLooper());
      paramContext = paramContext.getApplicationContext();
      this.d = new w(paramContext);
      this.d.getWritableDatabase();
      this.d.getReadableDatabase();
      b(paramContext);
      c();
      f();
      this.a.post(new o(this));
      return;
    }
    catch (Throwable paramContext)
    {
      e.e(paramContext);
    }
  }
  
  public static n a(Context paramContext)
  {
    try
    {
      if (f == null) {
        f = new n(paramContext);
      }
      paramContext = f;
      return paramContext;
    }
    finally {}
  }
  
  public static n b()
  {
    return f;
  }
  
  private void b(int paramInt)
  {
    for (;;)
    {
      int i;
      try
      {
        i = this.b;
        if (i > 0) {
          if (paramInt > 0) {
            continue;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        ArrayList localArrayList1;
        Iterator localIterator;
        e.e(localThrowable);
        continue;
      }
      finally {}
      return;
      e.i("Load " + Integer.toString(this.b) + " unsent events");
      localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      if (paramInt != -1)
      {
        i = paramInt;
        if (paramInt <= StatConfig.a()) {}
      }
      else
      {
        i = StatConfig.a();
      }
      this.b -= i;
      c(localArrayList2, i);
      e.i("Peek " + Integer.toString(localArrayList2.size()) + " unsent events.");
      if (!localArrayList2.isEmpty())
      {
        b(localArrayList2, 2);
        localIterator = localArrayList2.iterator();
        if (localIterator.hasNext()) {
          localArrayList1.add(((x)localIterator.next()).b);
        } else {
          d.b().b(localList, new u(this, localArrayList2, i));
        }
      }
    }
  }
  
  /* Error */
  private void b(e parame, c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 224	com/tencent/stat/StatConfig:getMaxStoreEventCount	()I
    //   5: istore_3
    //   6: iload_3
    //   7: ifgt +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   17: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   20: invokevirtual 229	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   23: aload_0
    //   24: getfield 41	com/tencent/stat/n:b	I
    //   27: invokestatic 224	com/tencent/stat/StatConfig:getMaxStoreEventCount	()I
    //   30: if_icmple +35 -> 65
    //   33: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   36: ldc -25
    //   38: invokevirtual 234	com/tencent/stat/common/StatLogger:warn	(Ljava/lang/Object;)V
    //   41: aload_0
    //   42: aload_0
    //   43: getfield 41	com/tencent/stat/n:b	I
    //   46: aload_0
    //   47: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   50: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   53: ldc -20
    //   55: ldc -18
    //   57: aconst_null
    //   58: invokevirtual 242	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   61: isub
    //   62: putfield 41	com/tencent/stat/n:b	I
    //   65: new 244	android/content/ContentValues
    //   68: dup
    //   69: invokespecial 245	android/content/ContentValues:<init>	()V
    //   72: astore 4
    //   74: aload_1
    //   75: invokevirtual 249	com/tencent/stat/a/e:d	()Ljava/lang/String;
    //   78: invokestatic 252	com/tencent/stat/common/k:c	(Ljava/lang/String;)Ljava/lang/String;
    //   81: astore 5
    //   83: aload 4
    //   85: ldc -2
    //   87: aload 5
    //   89: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   92: aload 4
    //   94: ldc_w 260
    //   97: ldc_w 262
    //   100: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   103: aload 4
    //   105: ldc_w 264
    //   108: iconst_1
    //   109: invokestatic 159	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   112: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   115: aload 4
    //   117: ldc_w 266
    //   120: aload_1
    //   121: invokevirtual 269	com/tencent/stat/a/e:b	()J
    //   124: invokestatic 275	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   127: invokevirtual 278	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   130: aload_0
    //   131: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   134: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   137: ldc -20
    //   139: aconst_null
    //   140: aload 4
    //   142: invokevirtual 282	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   145: ldc2_w 283
    //   148: lcmp
    //   149: ifne +47 -> 196
    //   152: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   155: new 60	java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   162: ldc_w 286
    //   165: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload 5
    //   170: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: invokevirtual 289	com/tencent/stat/common/StatLogger:error	(Ljava/lang/Object;)V
    //   179: aload_0
    //   180: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   183: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   186: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   189: goto -179 -> 10
    //   192: astore_1
    //   193: goto -183 -> 10
    //   196: aload_0
    //   197: aload_0
    //   198: getfield 41	com/tencent/stat/n:b	I
    //   201: iconst_1
    //   202: iadd
    //   203: putfield 41	com/tencent/stat/n:b	I
    //   206: aload_0
    //   207: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   210: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   213: invokevirtual 295	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   216: aload_2
    //   217: ifnull -38 -> 179
    //   220: aload_2
    //   221: invokeinterface 299 1 0
    //   226: goto -47 -> 179
    //   229: astore_1
    //   230: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   233: aload_1
    //   234: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   237: aload_0
    //   238: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   241: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   244: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   247: goto -237 -> 10
    //   250: astore_1
    //   251: goto -241 -> 10
    //   254: astore_1
    //   255: aload_0
    //   256: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   259: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   262: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   265: aload_1
    //   266: athrow
    //   267: astore_1
    //   268: aload_0
    //   269: monitorexit
    //   270: aload_1
    //   271: athrow
    //   272: astore_2
    //   273: goto -8 -> 265
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	276	0	this	n
    //   0	276	1	parame	e
    //   0	276	2	paramc	c
    //   5	2	3	i	int
    //   72	69	4	localContentValues	ContentValues
    //   81	88	5	str	String
    // Exception table:
    //   from	to	target	type
    //   179	189	192	java/lang/Throwable
    //   13	65	229	java/lang/Throwable
    //   65	179	229	java/lang/Throwable
    //   196	216	229	java/lang/Throwable
    //   220	226	229	java/lang/Throwable
    //   237	247	250	java/lang/Throwable
    //   13	65	254	finally
    //   65	179	254	finally
    //   196	216	254	finally
    //   220	226	254	finally
    //   230	237	254	finally
    //   2	6	267	finally
    //   179	189	267	finally
    //   237	247	267	finally
    //   255	265	267	finally
    //   265	267	267	finally
    //   255	265	272	java/lang/Throwable
  }
  
  /* Error */
  private void b(b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 303	com/tencent/stat/b:a	()Ljava/lang/String;
    //   6: astore 7
    //   8: aload 7
    //   10: invokestatic 305	com/tencent/stat/common/k:a	(Ljava/lang/String;)Ljava/lang/String;
    //   13: astore 5
    //   15: new 244	android/content/ContentValues
    //   18: dup
    //   19: invokespecial 245	android/content/ContentValues:<init>	()V
    //   22: astore 8
    //   24: aload 8
    //   26: ldc -2
    //   28: aload_1
    //   29: getfield 308	com/tencent/stat/b:b	Lorg/json/JSONObject;
    //   32: invokevirtual 311	org/json/JSONObject:toString	()Ljava/lang/String;
    //   35: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   38: aload 8
    //   40: ldc_w 313
    //   43: aload 5
    //   45: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: aload_1
    //   49: aload 5
    //   51: putfield 315	com/tencent/stat/b:c	Ljava/lang/String;
    //   54: aload 8
    //   56: ldc_w 317
    //   59: aload_1
    //   60: getfield 319	com/tencent/stat/b:d	I
    //   63: invokestatic 322	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   66: invokevirtual 325	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   69: aload_0
    //   70: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   73: invokevirtual 108	com/tencent/stat/w:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   76: ldc_w 327
    //   79: aconst_null
    //   80: aconst_null
    //   81: aconst_null
    //   82: aconst_null
    //   83: aconst_null
    //   84: aconst_null
    //   85: invokevirtual 331	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   88: astore 6
    //   90: aload 6
    //   92: astore 5
    //   94: aload 6
    //   96: invokeinterface 336 1 0
    //   101: ifeq +259 -> 360
    //   104: aload 6
    //   106: astore 5
    //   108: aload 6
    //   110: iconst_0
    //   111: invokeinterface 340 2 0
    //   116: aload_1
    //   117: getfield 342	com/tencent/stat/b:a	I
    //   120: if_icmpne -30 -> 90
    //   123: iconst_1
    //   124: istore_2
    //   125: iconst_1
    //   126: iload_2
    //   127: if_icmpne +95 -> 222
    //   130: aload 6
    //   132: astore 5
    //   134: aload_0
    //   135: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   138: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   141: ldc_w 327
    //   144: aload 8
    //   146: ldc_w 344
    //   149: iconst_1
    //   150: anewarray 346	java/lang/String
    //   153: dup
    //   154: iconst_0
    //   155: aload_1
    //   156: getfield 342	com/tencent/stat/b:a	I
    //   159: invokestatic 159	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   162: aastore
    //   163: invokevirtual 350	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   166: i2l
    //   167: lstore_3
    //   168: lload_3
    //   169: ldc2_w 283
    //   172: lcmp
    //   173: ifne +92 -> 265
    //   176: aload 6
    //   178: astore 5
    //   180: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   183: new 60	java/lang/StringBuilder
    //   186: dup
    //   187: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   190: ldc_w 352
    //   193: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: aload 7
    //   198: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   207: aload 6
    //   209: ifnull +10 -> 219
    //   212: aload 6
    //   214: invokeinterface 355 1 0
    //   219: aload_0
    //   220: monitorexit
    //   221: return
    //   222: aload 6
    //   224: astore 5
    //   226: aload 8
    //   228: ldc_w 357
    //   231: aload_1
    //   232: getfield 342	com/tencent/stat/b:a	I
    //   235: invokestatic 322	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   238: invokevirtual 325	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   241: aload 6
    //   243: astore 5
    //   245: aload_0
    //   246: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   249: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   252: ldc_w 327
    //   255: aconst_null
    //   256: aload 8
    //   258: invokevirtual 282	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   261: lstore_3
    //   262: goto -94 -> 168
    //   265: aload 6
    //   267: astore 5
    //   269: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   272: new 60	java/lang/StringBuilder
    //   275: dup
    //   276: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   279: ldc_w 359
    //   282: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: aload 7
    //   287: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: invokevirtual 361	com/tencent/stat/common/StatLogger:d	(Ljava/lang/Object;)V
    //   296: goto -89 -> 207
    //   299: astore_1
    //   300: aload 6
    //   302: astore 5
    //   304: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   307: aload_1
    //   308: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   311: aload 6
    //   313: ifnull -94 -> 219
    //   316: aload 6
    //   318: invokeinterface 355 1 0
    //   323: goto -104 -> 219
    //   326: astore_1
    //   327: aload_0
    //   328: monitorexit
    //   329: aload_1
    //   330: athrow
    //   331: astore_1
    //   332: aconst_null
    //   333: astore 5
    //   335: aload 5
    //   337: ifnull +10 -> 347
    //   340: aload 5
    //   342: invokeinterface 355 1 0
    //   347: aload_1
    //   348: athrow
    //   349: astore_1
    //   350: goto -15 -> 335
    //   353: astore_1
    //   354: aconst_null
    //   355: astore 6
    //   357: goto -57 -> 300
    //   360: iconst_0
    //   361: istore_2
    //   362: goto -237 -> 125
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	365	0	this	n
    //   0	365	1	paramb	b
    //   124	238	2	i	int
    //   167	95	3	l	long
    //   13	328	5	localObject	Object
    //   88	268	6	localCursor	android.database.Cursor
    //   6	280	7	str	String
    //   22	235	8	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   94	104	299	java/lang/Throwable
    //   108	123	299	java/lang/Throwable
    //   134	168	299	java/lang/Throwable
    //   180	207	299	java/lang/Throwable
    //   226	241	299	java/lang/Throwable
    //   245	262	299	java/lang/Throwable
    //   269	296	299	java/lang/Throwable
    //   212	219	326	finally
    //   316	323	326	finally
    //   340	347	326	finally
    //   347	349	326	finally
    //   2	90	331	finally
    //   94	104	349	finally
    //   108	123	349	finally
    //   134	168	349	finally
    //   180	207	349	finally
    //   226	241	349	finally
    //   245	262	349	finally
    //   269	296	349	finally
    //   304	311	349	finally
    //   2	90	353	java/lang/Throwable
  }
  
  /* Error */
  private void b(List<x> paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   5: new 60	java/lang/StringBuilder
    //   8: dup
    //   9: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   12: ldc_w 365
    //   15: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: aload_1
    //   19: invokeinterface 181 1 0
    //   24: invokevirtual 368	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   27: ldc_w 370
    //   30: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokestatic 376	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   36: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokevirtual 164	com/tencent/stat/common/StatLogger:i	(Ljava/lang/Object;)V
    //   45: aload_0
    //   46: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   49: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   52: invokevirtual 229	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   55: aload_1
    //   56: invokeinterface 191 1 0
    //   61: astore_1
    //   62: aload_1
    //   63: invokeinterface 196 1 0
    //   68: ifeq +75 -> 143
    //   71: aload_1
    //   72: invokeinterface 200 1 0
    //   77: checkcast 202	com/tencent/stat/x
    //   80: astore_2
    //   81: aload_0
    //   82: aload_0
    //   83: getfield 41	com/tencent/stat/n:b	I
    //   86: aload_0
    //   87: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   90: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   93: ldc -20
    //   95: ldc_w 378
    //   98: iconst_1
    //   99: anewarray 346	java/lang/String
    //   102: dup
    //   103: iconst_0
    //   104: aload_2
    //   105: getfield 381	com/tencent/stat/x:a	J
    //   108: invokestatic 384	java/lang/Long:toString	(J)Ljava/lang/String;
    //   111: aastore
    //   112: invokevirtual 242	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   115: isub
    //   116: putfield 41	com/tencent/stat/n:b	I
    //   119: goto -57 -> 62
    //   122: astore_1
    //   123: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   126: aload_1
    //   127: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   130: aload_0
    //   131: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   134: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   137: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   140: aload_0
    //   141: monitorexit
    //   142: return
    //   143: aload_0
    //   144: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   147: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   150: invokevirtual 295	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   153: aload_0
    //   154: aload_0
    //   155: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   158: invokevirtual 108	com/tencent/stat/w:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   161: ldc -20
    //   163: invokestatic 390	android/database/DatabaseUtils:queryNumEntries	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    //   166: l2i
    //   167: putfield 41	com/tencent/stat/n:b	I
    //   170: aload_0
    //   171: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   174: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   177: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   180: goto -40 -> 140
    //   183: astore_1
    //   184: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   187: aload_1
    //   188: invokevirtual 393	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   191: goto -51 -> 140
    //   194: astore_1
    //   195: aload_0
    //   196: monitorexit
    //   197: aload_1
    //   198: athrow
    //   199: astore_1
    //   200: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   203: aload_1
    //   204: invokevirtual 393	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   207: goto -67 -> 140
    //   210: astore_1
    //   211: aload_0
    //   212: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   215: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   218: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   221: aload_1
    //   222: athrow
    //   223: astore_2
    //   224: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   227: aload_2
    //   228: invokevirtual 393	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   231: goto -10 -> 221
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	this	n
    //   0	234	1	paramList	List<x>
    //   80	25	2	localx	x
    //   223	5	2	localSQLiteException	SQLiteException
    // Exception table:
    //   from	to	target	type
    //   45	62	122	java/lang/Throwable
    //   62	119	122	java/lang/Throwable
    //   143	170	122	java/lang/Throwable
    //   170	180	183	android/database/sqlite/SQLiteException
    //   2	45	194	finally
    //   130	140	194	finally
    //   170	180	194	finally
    //   184	191	194	finally
    //   200	207	194	finally
    //   211	221	194	finally
    //   221	223	194	finally
    //   224	231	194	finally
    //   130	140	199	android/database/sqlite/SQLiteException
    //   45	62	210	finally
    //   62	119	210	finally
    //   123	130	210	finally
    //   143	170	210	finally
    //   211	221	223	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  private void b(List<x> paramList, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   5: new 60	java/lang/StringBuilder
    //   8: dup
    //   9: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   12: ldc_w 397
    //   15: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: aload_1
    //   19: invokeinterface 181 1 0
    //   24: invokevirtual 368	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   27: ldc_w 399
    //   30: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: iload_2
    //   34: invokevirtual 368	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   37: ldc_w 401
    //   40: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokestatic 376	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   46: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokevirtual 164	com/tencent/stat/common/StatLogger:i	(Ljava/lang/Object;)V
    //   55: new 244	android/content/ContentValues
    //   58: dup
    //   59: invokespecial 245	android/content/ContentValues:<init>	()V
    //   62: astore_3
    //   63: aload_3
    //   64: ldc_w 264
    //   67: iload_2
    //   68: invokestatic 159	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   71: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: aload_0
    //   75: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   78: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   81: invokevirtual 229	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   84: aload_1
    //   85: invokeinterface 191 1 0
    //   90: astore_1
    //   91: aload_1
    //   92: invokeinterface 196 1 0
    //   97: ifeq +233 -> 330
    //   100: aload_1
    //   101: invokeinterface 200 1 0
    //   106: checkcast 202	com/tencent/stat/x
    //   109: astore 4
    //   111: aload 4
    //   113: getfield 402	com/tencent/stat/x:d	I
    //   116: iconst_1
    //   117: iadd
    //   118: invokestatic 405	com/tencent/stat/StatConfig:getMaxSendRetryCount	()I
    //   121: if_icmple +66 -> 187
    //   124: aload_0
    //   125: aload_0
    //   126: getfield 41	com/tencent/stat/n:b	I
    //   129: aload_0
    //   130: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   133: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   136: ldc -20
    //   138: ldc_w 407
    //   141: iconst_1
    //   142: anewarray 346	java/lang/String
    //   145: dup
    //   146: iconst_0
    //   147: aload 4
    //   149: getfield 381	com/tencent/stat/x:a	J
    //   152: invokestatic 384	java/lang/Long:toString	(J)Ljava/lang/String;
    //   155: aastore
    //   156: invokevirtual 242	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   159: isub
    //   160: putfield 41	com/tencent/stat/n:b	I
    //   163: goto -72 -> 91
    //   166: astore_1
    //   167: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   170: aload_1
    //   171: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   174: aload_0
    //   175: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   178: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   181: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   184: aload_0
    //   185: monitorexit
    //   186: return
    //   187: aload_3
    //   188: ldc_w 260
    //   191: aload 4
    //   193: getfield 402	com/tencent/stat/x:d	I
    //   196: iconst_1
    //   197: iadd
    //   198: invokestatic 322	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   201: invokevirtual 325	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   204: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   207: new 60	java/lang/StringBuilder
    //   210: dup
    //   211: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   214: ldc_w 409
    //   217: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: aload 4
    //   222: getfield 381	com/tencent/stat/x:a	J
    //   225: invokevirtual 412	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   228: ldc_w 414
    //   231: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: aload_3
    //   235: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   238: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   241: invokevirtual 164	com/tencent/stat/common/StatLogger:i	(Ljava/lang/Object;)V
    //   244: aload_0
    //   245: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   248: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   251: ldc -20
    //   253: aload_3
    //   254: ldc_w 407
    //   257: iconst_1
    //   258: anewarray 346	java/lang/String
    //   261: dup
    //   262: iconst_0
    //   263: aload 4
    //   265: getfield 381	com/tencent/stat/x:a	J
    //   268: invokestatic 384	java/lang/Long:toString	(J)Ljava/lang/String;
    //   271: aastore
    //   272: invokevirtual 350	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   275: istore_2
    //   276: iload_2
    //   277: ifgt -186 -> 91
    //   280: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   283: new 60	java/lang/StringBuilder
    //   286: dup
    //   287: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   290: ldc_w 416
    //   293: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: iload_2
    //   297: invokestatic 159	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   300: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   306: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   309: goto -218 -> 91
    //   312: astore_1
    //   313: aload_0
    //   314: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   317: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   320: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   323: aload_1
    //   324: athrow
    //   325: astore_1
    //   326: aload_0
    //   327: monitorexit
    //   328: aload_1
    //   329: athrow
    //   330: aload_0
    //   331: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   334: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   337: invokevirtual 295	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   340: aload_0
    //   341: aload_0
    //   342: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   345: invokevirtual 108	com/tencent/stat/w:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   348: ldc -20
    //   350: invokestatic 390	android/database/DatabaseUtils:queryNumEntries	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    //   353: l2i
    //   354: putfield 41	com/tencent/stat/n:b	I
    //   357: aload_0
    //   358: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   361: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   364: invokevirtual 292	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   367: goto -183 -> 184
    //   370: astore_1
    //   371: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   374: aload_1
    //   375: invokevirtual 393	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   378: goto -194 -> 184
    //   381: astore_1
    //   382: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   385: aload_1
    //   386: invokevirtual 393	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   389: goto -205 -> 184
    //   392: astore_3
    //   393: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   396: aload_3
    //   397: invokevirtual 393	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   400: goto -77 -> 323
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	403	0	this	n
    //   0	403	1	paramList	List<x>
    //   0	403	2	paramInt	int
    //   62	192	3	localContentValues	ContentValues
    //   392	5	3	localSQLiteException	SQLiteException
    //   109	155	4	localx	x
    // Exception table:
    //   from	to	target	type
    //   55	91	166	java/lang/Throwable
    //   91	163	166	java/lang/Throwable
    //   187	276	166	java/lang/Throwable
    //   280	309	166	java/lang/Throwable
    //   330	357	166	java/lang/Throwable
    //   55	91	312	finally
    //   91	163	312	finally
    //   167	174	312	finally
    //   187	276	312	finally
    //   280	309	312	finally
    //   330	357	312	finally
    //   2	55	325	finally
    //   174	184	325	finally
    //   313	323	325	finally
    //   323	325	325	finally
    //   357	367	325	finally
    //   371	378	325	finally
    //   382	389	325	finally
    //   393	400	325	finally
    //   357	367	370	android/database/sqlite/SQLiteException
    //   174	184	381	android/database/sqlite/SQLiteException
    //   313	323	392	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  private void c(List<x> paramList, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   7: invokevirtual 108	com/tencent/stat/w:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore_3
    //   11: iconst_1
    //   12: invokestatic 159	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   15: astore 5
    //   17: iload_2
    //   18: invokestatic 159	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   21: astore 6
    //   23: aload_3
    //   24: ldc -20
    //   26: aconst_null
    //   27: ldc_w 419
    //   30: iconst_1
    //   31: anewarray 346	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: aload 5
    //   38: aastore
    //   39: aconst_null
    //   40: aconst_null
    //   41: ldc_w 421
    //   44: aload 6
    //   46: invokevirtual 424	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   49: astore_3
    //   50: aload_3
    //   51: invokeinterface 336 1 0
    //   56: ifeq +76 -> 132
    //   59: aload_1
    //   60: new 202	com/tencent/stat/x
    //   63: dup
    //   64: aload_3
    //   65: iconst_0
    //   66: invokeinterface 428 2 0
    //   71: aload_3
    //   72: iconst_1
    //   73: invokeinterface 431 2 0
    //   78: invokestatic 433	com/tencent/stat/common/k:d	(Ljava/lang/String;)Ljava/lang/String;
    //   81: aload_3
    //   82: iconst_2
    //   83: invokeinterface 340 2 0
    //   88: aload_3
    //   89: iconst_3
    //   90: invokeinterface 340 2 0
    //   95: invokespecial 436	com/tencent/stat/x:<init>	(JLjava/lang/String;II)V
    //   98: invokeinterface 209 2 0
    //   103: pop
    //   104: goto -54 -> 50
    //   107: astore 4
    //   109: aload_3
    //   110: astore_1
    //   111: aload 4
    //   113: astore_3
    //   114: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   117: aload_3
    //   118: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   121: aload_1
    //   122: ifnull +9 -> 131
    //   125: aload_1
    //   126: invokeinterface 355 1 0
    //   131: return
    //   132: aload_3
    //   133: ifnull -2 -> 131
    //   136: aload_3
    //   137: invokeinterface 355 1 0
    //   142: return
    //   143: astore_1
    //   144: aload 4
    //   146: astore_3
    //   147: aload_3
    //   148: ifnull +9 -> 157
    //   151: aload_3
    //   152: invokeinterface 355 1 0
    //   157: aload_1
    //   158: athrow
    //   159: astore_1
    //   160: goto -13 -> 147
    //   163: astore 4
    //   165: aload_1
    //   166: astore_3
    //   167: aload 4
    //   169: astore_1
    //   170: goto -23 -> 147
    //   173: astore_3
    //   174: aconst_null
    //   175: astore_1
    //   176: goto -62 -> 114
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	179	0	this	n
    //   0	179	1	paramList	List<x>
    //   0	179	2	paramInt	int
    //   10	157	3	localObject1	Object
    //   173	1	3	localThrowable1	Throwable
    //   1	1	4	localObject2	Object
    //   107	38	4	localThrowable2	Throwable
    //   163	5	4	localObject3	Object
    //   15	22	5	str1	String
    //   21	24	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   50	104	107	java/lang/Throwable
    //   3	50	143	finally
    //   50	104	159	finally
    //   114	121	163	finally
    //   3	50	173	java/lang/Throwable
  }
  
  private void e()
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("status", Integer.valueOf(1));
      this.d.getWritableDatabase().update("events", localContentValues, "status=?", new String[] { Long.toString(2L) });
      this.b = ((int)DatabaseUtils.queryNumEntries(this.d.getReadableDatabase(), "events"));
      e.i("Total " + this.b + " unsent events.");
      return;
    }
    catch (Throwable localThrowable)
    {
      e.e(localThrowable);
    }
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   4: invokevirtual 108	com/tencent/stat/w:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc_w 442
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 331	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_2
    //   20: aload_2
    //   21: astore_1
    //   22: aload_2
    //   23: invokeinterface 336 1 0
    //   28: ifeq +51 -> 79
    //   31: aload_2
    //   32: astore_1
    //   33: aload_0
    //   34: getfield 48	com/tencent/stat/n:g	Ljava/util/HashMap;
    //   37: aload_2
    //   38: iconst_0
    //   39: invokeinterface 431 2 0
    //   44: aload_2
    //   45: iconst_1
    //   46: invokeinterface 431 2 0
    //   51: invokevirtual 445	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   54: pop
    //   55: goto -35 -> 20
    //   58: astore_3
    //   59: aload_2
    //   60: astore_1
    //   61: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   64: aload_3
    //   65: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   68: aload_2
    //   69: ifnull +9 -> 78
    //   72: aload_2
    //   73: invokeinterface 355 1 0
    //   78: return
    //   79: aload_2
    //   80: ifnull -2 -> 78
    //   83: aload_2
    //   84: invokeinterface 355 1 0
    //   89: return
    //   90: astore_2
    //   91: aconst_null
    //   92: astore_1
    //   93: aload_1
    //   94: ifnull +9 -> 103
    //   97: aload_1
    //   98: invokeinterface 355 1 0
    //   103: aload_2
    //   104: athrow
    //   105: astore_2
    //   106: goto -13 -> 93
    //   109: astore_3
    //   110: aconst_null
    //   111: astore_2
    //   112: goto -53 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	n
    //   21	77	1	localCursor1	android.database.Cursor
    //   19	65	2	localCursor2	android.database.Cursor
    //   90	14	2	localObject1	Object
    //   105	1	2	localObject2	Object
    //   111	1	2	localObject3	Object
    //   58	7	3	localThrowable1	Throwable
    //   109	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   22	31	58	java/lang/Throwable
    //   33	55	58	java/lang/Throwable
    //   0	20	90	finally
    //   22	31	105	finally
    //   33	55	105	finally
    //   61	68	105	finally
    //   0	20	109	java/lang/Throwable
  }
  
  public int a()
  {
    return this.b;
  }
  
  void a(int paramInt)
  {
    this.a.post(new v(this, paramInt));
  }
  
  void a(e parame, c paramc)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    try
    {
      if (Thread.currentThread().getId() == this.a.getLooper().getThread().getId())
      {
        b(parame, paramc);
        return;
      }
    }
    catch (Throwable parame)
    {
      e.e(parame);
      return;
    }
    this.a.post(new r(this, parame, paramc));
  }
  
  void a(b paramb)
  {
    if (paramb == null) {
      return;
    }
    this.a.post(new s(this, paramb));
  }
  
  void a(List<x> paramList)
  {
    try
    {
      if (Thread.currentThread().getId() == this.a.getLooper().getThread().getId())
      {
        b(paramList);
        return;
      }
      this.a.post(new q(this, paramList));
      return;
    }
    catch (SQLiteException paramList)
    {
      e.e(paramList);
    }
  }
  
  void a(List<x> paramList, int paramInt)
  {
    try
    {
      if (Thread.currentThread().getId() == this.a.getLooper().getThread().getId())
      {
        b(paramList, paramInt);
        return;
      }
      this.a.post(new p(this, paramList, paramInt));
      return;
    }
    catch (Throwable paramList)
    {
      e.e(paramList);
    }
  }
  
  /* Error */
  public DeviceInfo b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 43	com/tencent/stat/n:c	Lcom/tencent/stat/DeviceInfo;
    //   6: ifnull +12 -> 18
    //   9: aload_0
    //   10: getfield 43	com/tencent/stat/n:c	Lcom/tencent/stat/DeviceInfo;
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: areturn
    //   18: aload_0
    //   19: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   22: invokevirtual 108	com/tencent/stat/w:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   25: ldc_w 478
    //   28: aconst_null
    //   29: aconst_null
    //   30: aconst_null
    //   31: aconst_null
    //   32: aconst_null
    //   33: aconst_null
    //   34: aconst_null
    //   35: invokevirtual 424	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   38: astore 11
    //   40: iconst_0
    //   41: istore_2
    //   42: aload 11
    //   44: invokeinterface 336 1 0
    //   49: ifeq +361 -> 410
    //   52: aload 11
    //   54: iconst_0
    //   55: invokeinterface 431 2 0
    //   60: astore 16
    //   62: aload 16
    //   64: invokestatic 433	com/tencent/stat/common/k:d	(Ljava/lang/String;)Ljava/lang/String;
    //   67: astore 12
    //   69: aload 11
    //   71: iconst_1
    //   72: invokeinterface 340 2 0
    //   77: istore 5
    //   79: aload 11
    //   81: iconst_2
    //   82: invokeinterface 431 2 0
    //   87: astore 10
    //   89: aload 11
    //   91: iconst_3
    //   92: invokeinterface 428 2 0
    //   97: lstore 6
    //   99: invokestatic 483	java/lang/System:currentTimeMillis	()J
    //   102: ldc2_w 484
    //   105: ldiv
    //   106: lstore 8
    //   108: iload 5
    //   110: iconst_1
    //   111: if_icmpeq +683 -> 794
    //   114: lload 6
    //   116: ldc2_w 484
    //   119: lmul
    //   120: invokestatic 487	com/tencent/stat/common/k:a	(J)Ljava/lang/String;
    //   123: ldc2_w 484
    //   126: lload 8
    //   128: lmul
    //   129: invokestatic 487	com/tencent/stat/common/k:a	(J)Ljava/lang/String;
    //   132: invokevirtual 490	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: ifne +659 -> 794
    //   138: iconst_1
    //   139: istore_2
    //   140: aload 10
    //   142: aload_1
    //   143: invokestatic 494	com/tencent/stat/common/k:r	(Landroid/content/Context;)Ljava/lang/String;
    //   146: invokevirtual 490	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   149: ifne +640 -> 789
    //   152: iload_2
    //   153: iconst_2
    //   154: ior
    //   155: istore_3
    //   156: aload 12
    //   158: ldc_w 496
    //   161: invokevirtual 500	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   164: astore 14
    //   166: aload 14
    //   168: ifnull +422 -> 590
    //   171: aload 14
    //   173: arraylength
    //   174: ifle +416 -> 590
    //   177: aload 14
    //   179: iconst_0
    //   180: aaload
    //   181: astore 10
    //   183: aload 10
    //   185: ifnull +13 -> 198
    //   188: aload 10
    //   190: invokevirtual 503	java/lang/String:length	()I
    //   193: bipush 11
    //   195: if_icmpge +577 -> 772
    //   198: aload_1
    //   199: invokestatic 506	com/tencent/stat/common/k:l	(Landroid/content/Context;)Ljava/lang/String;
    //   202: astore 13
    //   204: aload 13
    //   206: ifnull +561 -> 767
    //   209: aload 13
    //   211: invokevirtual 503	java/lang/String:length	()I
    //   214: bipush 10
    //   216: if_icmple +551 -> 767
    //   219: iconst_1
    //   220: istore_2
    //   221: aload 13
    //   223: astore 10
    //   225: goto +575 -> 800
    //   228: aload 14
    //   230: ifnull +375 -> 605
    //   233: aload 14
    //   235: arraylength
    //   236: iconst_2
    //   237: if_icmplt +368 -> 605
    //   240: aload 14
    //   242: iconst_1
    //   243: aaload
    //   244: astore 14
    //   246: new 60	java/lang/StringBuilder
    //   249: dup
    //   250: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   253: aload 12
    //   255: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: ldc_w 496
    //   261: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload 14
    //   266: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: astore 13
    //   274: iload_2
    //   275: istore 4
    //   277: aload_0
    //   278: new 508	com/tencent/stat/DeviceInfo
    //   281: dup
    //   282: aload 12
    //   284: aload 14
    //   286: iload_3
    //   287: invokespecial 511	com/tencent/stat/DeviceInfo:<init>	(Ljava/lang/String;Ljava/lang/String;I)V
    //   290: putfield 43	com/tencent/stat/n:c	Lcom/tencent/stat/DeviceInfo;
    //   293: new 244	android/content/ContentValues
    //   296: dup
    //   297: invokespecial 245	android/content/ContentValues:<init>	()V
    //   300: astore 10
    //   302: aload 10
    //   304: ldc_w 513
    //   307: aload 13
    //   309: invokestatic 252	com/tencent/stat/common/k:c	(Ljava/lang/String;)Ljava/lang/String;
    //   312: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   315: aload 10
    //   317: ldc_w 515
    //   320: iload_3
    //   321: invokestatic 322	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   324: invokevirtual 325	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   327: aload 10
    //   329: ldc_w 517
    //   332: aload_1
    //   333: invokestatic 494	com/tencent/stat/common/k:r	(Landroid/content/Context;)Ljava/lang/String;
    //   336: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   339: aload 10
    //   341: ldc_w 519
    //   344: lload 8
    //   346: invokestatic 275	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   349: invokevirtual 278	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   352: iload 4
    //   354: ifeq +31 -> 385
    //   357: aload_0
    //   358: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   361: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   364: ldc_w 478
    //   367: aload 10
    //   369: ldc_w 521
    //   372: iconst_1
    //   373: anewarray 346	java/lang/String
    //   376: dup
    //   377: iconst_0
    //   378: aload 16
    //   380: aastore
    //   381: invokevirtual 350	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   384: pop
    //   385: iload_3
    //   386: iload 5
    //   388: if_icmpeq +374 -> 762
    //   391: aload_0
    //   392: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   395: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   398: ldc_w 478
    //   401: aconst_null
    //   402: aload 10
    //   404: invokevirtual 524	android/database/sqlite/SQLiteDatabase:replace	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   407: pop2
    //   408: iconst_1
    //   409: istore_2
    //   410: iload_2
    //   411: ifne +159 -> 570
    //   414: aload_1
    //   415: invokestatic 526	com/tencent/stat/common/k:b	(Landroid/content/Context;)Ljava/lang/String;
    //   418: astore 12
    //   420: aload_1
    //   421: invokestatic 528	com/tencent/stat/common/k:c	(Landroid/content/Context;)Ljava/lang/String;
    //   424: astore 13
    //   426: aload 13
    //   428: ifnull +327 -> 755
    //   431: aload 13
    //   433: invokevirtual 503	java/lang/String:length	()I
    //   436: ifle +319 -> 755
    //   439: new 60	java/lang/StringBuilder
    //   442: dup
    //   443: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   446: aload 12
    //   448: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: ldc_w 496
    //   454: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: aload 13
    //   459: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   462: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   465: astore 10
    //   467: invokestatic 483	java/lang/System:currentTimeMillis	()J
    //   470: ldc2_w 484
    //   473: ldiv
    //   474: lstore 6
    //   476: aload_1
    //   477: invokestatic 494	com/tencent/stat/common/k:r	(Landroid/content/Context;)Ljava/lang/String;
    //   480: astore_1
    //   481: new 244	android/content/ContentValues
    //   484: dup
    //   485: invokespecial 245	android/content/ContentValues:<init>	()V
    //   488: astore 14
    //   490: aload 14
    //   492: ldc_w 513
    //   495: aload 10
    //   497: invokestatic 252	com/tencent/stat/common/k:c	(Ljava/lang/String;)Ljava/lang/String;
    //   500: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   503: aload 14
    //   505: ldc_w 515
    //   508: iconst_0
    //   509: invokestatic 322	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   512: invokevirtual 325	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   515: aload 14
    //   517: ldc_w 517
    //   520: aload_1
    //   521: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   524: aload 14
    //   526: ldc_w 519
    //   529: lload 6
    //   531: invokestatic 275	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   534: invokevirtual 278	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   537: aload_0
    //   538: getfield 101	com/tencent/stat/n:d	Lcom/tencent/stat/w;
    //   541: invokevirtual 105	com/tencent/stat/w:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   544: ldc_w 478
    //   547: aconst_null
    //   548: aload 14
    //   550: invokevirtual 282	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   553: pop2
    //   554: aload_0
    //   555: new 508	com/tencent/stat/DeviceInfo
    //   558: dup
    //   559: aload 12
    //   561: aload 13
    //   563: iconst_0
    //   564: invokespecial 511	com/tencent/stat/DeviceInfo:<init>	(Ljava/lang/String;Ljava/lang/String;I)V
    //   567: putfield 43	com/tencent/stat/n:c	Lcom/tencent/stat/DeviceInfo;
    //   570: aload 11
    //   572: ifnull +10 -> 582
    //   575: aload 11
    //   577: invokeinterface 355 1 0
    //   582: aload_0
    //   583: getfield 43	com/tencent/stat/n:c	Lcom/tencent/stat/DeviceInfo;
    //   586: astore_1
    //   587: goto -573 -> 14
    //   590: aload_1
    //   591: invokestatic 526	com/tencent/stat/common/k:b	(Landroid/content/Context;)Ljava/lang/String;
    //   594: astore 10
    //   596: aload 10
    //   598: astore 12
    //   600: iconst_1
    //   601: istore_2
    //   602: goto -374 -> 228
    //   605: aload_1
    //   606: invokestatic 528	com/tencent/stat/common/k:c	(Landroid/content/Context;)Ljava/lang/String;
    //   609: astore 15
    //   611: aload 15
    //   613: astore 14
    //   615: iload_2
    //   616: istore 4
    //   618: aload 10
    //   620: astore 13
    //   622: aload 15
    //   624: ifnull -347 -> 277
    //   627: aload 15
    //   629: astore 14
    //   631: iload_2
    //   632: istore 4
    //   634: aload 10
    //   636: astore 13
    //   638: aload 15
    //   640: invokevirtual 503	java/lang/String:length	()I
    //   643: ifle -366 -> 277
    //   646: new 60	java/lang/StringBuilder
    //   649: dup
    //   650: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   653: aload 12
    //   655: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   658: ldc_w 496
    //   661: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   664: aload 15
    //   666: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   669: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   672: astore 13
    //   674: iconst_1
    //   675: istore 4
    //   677: aload 15
    //   679: astore 14
    //   681: goto -404 -> 277
    //   684: astore 10
    //   686: aconst_null
    //   687: astore_1
    //   688: getstatic 28	com/tencent/stat/n:e	Lcom/tencent/stat/common/StatLogger;
    //   691: aload 10
    //   693: invokevirtual 126	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Object;)V
    //   696: aload_1
    //   697: ifnull -115 -> 582
    //   700: aload_1
    //   701: invokeinterface 355 1 0
    //   706: goto -124 -> 582
    //   709: astore_1
    //   710: aload_0
    //   711: monitorexit
    //   712: aload_1
    //   713: athrow
    //   714: astore_1
    //   715: aconst_null
    //   716: astore 11
    //   718: aload 11
    //   720: ifnull +10 -> 730
    //   723: aload 11
    //   725: invokeinterface 355 1 0
    //   730: aload_1
    //   731: athrow
    //   732: astore_1
    //   733: goto -15 -> 718
    //   736: astore 10
    //   738: aload_1
    //   739: astore 11
    //   741: aload 10
    //   743: astore_1
    //   744: goto -26 -> 718
    //   747: astore 10
    //   749: aload 11
    //   751: astore_1
    //   752: goto -64 -> 688
    //   755: aload 12
    //   757: astore 10
    //   759: goto -292 -> 467
    //   762: iconst_1
    //   763: istore_2
    //   764: goto -354 -> 410
    //   767: iconst_0
    //   768: istore_2
    //   769: goto +31 -> 800
    //   772: iconst_0
    //   773: istore_2
    //   774: aload 10
    //   776: astore 13
    //   778: aload 12
    //   780: astore 10
    //   782: aload 13
    //   784: astore 12
    //   786: goto -558 -> 228
    //   789: iload_2
    //   790: istore_3
    //   791: goto -635 -> 156
    //   794: iload 5
    //   796: istore_2
    //   797: goto -657 -> 140
    //   800: aload 10
    //   802: astore 13
    //   804: aload 12
    //   806: astore 10
    //   808: aload 13
    //   810: astore 12
    //   812: goto -584 -> 228
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	815	0	this	n
    //   0	815	1	paramContext	Context
    //   41	756	2	i	int
    //   155	636	3	j	int
    //   275	401	4	k	int
    //   77	718	5	m	int
    //   97	433	6	l1	long
    //   106	239	8	l2	long
    //   87	548	10	localObject1	Object
    //   684	8	10	localThrowable1	Throwable
    //   736	6	10	localObject2	Object
    //   747	1	10	localThrowable2	Throwable
    //   757	50	10	localObject3	Object
    //   38	712	11	localObject4	Object
    //   67	744	12	localObject5	Object
    //   202	607	13	localObject6	Object
    //   164	516	14	localObject7	Object
    //   609	69	15	str1	String
    //   60	319	16	str2	String
    // Exception table:
    //   from	to	target	type
    //   18	40	684	java/lang/Throwable
    //   2	14	709	finally
    //   575	582	709	finally
    //   582	587	709	finally
    //   700	706	709	finally
    //   723	730	709	finally
    //   730	732	709	finally
    //   18	40	714	finally
    //   42	108	732	finally
    //   114	138	732	finally
    //   140	152	732	finally
    //   156	166	732	finally
    //   171	177	732	finally
    //   188	198	732	finally
    //   198	204	732	finally
    //   209	219	732	finally
    //   233	240	732	finally
    //   246	274	732	finally
    //   277	352	732	finally
    //   357	385	732	finally
    //   391	408	732	finally
    //   414	426	732	finally
    //   431	467	732	finally
    //   467	570	732	finally
    //   590	596	732	finally
    //   605	611	732	finally
    //   638	674	732	finally
    //   688	696	736	finally
    //   42	108	747	java/lang/Throwable
    //   114	138	747	java/lang/Throwable
    //   140	152	747	java/lang/Throwable
    //   156	166	747	java/lang/Throwable
    //   171	177	747	java/lang/Throwable
    //   188	198	747	java/lang/Throwable
    //   198	204	747	java/lang/Throwable
    //   209	219	747	java/lang/Throwable
    //   233	240	747	java/lang/Throwable
    //   246	274	747	java/lang/Throwable
    //   277	352	747	java/lang/Throwable
    //   357	385	747	java/lang/Throwable
    //   391	408	747	java/lang/Throwable
    //   414	426	747	java/lang/Throwable
    //   431	467	747	java/lang/Throwable
    //   467	570	747	java/lang/Throwable
    //   590	596	747	java/lang/Throwable
    //   605	611	747	java/lang/Throwable
    //   638	674	747	java/lang/Throwable
  }
  
  void c()
  {
    this.a.post(new t(this));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */