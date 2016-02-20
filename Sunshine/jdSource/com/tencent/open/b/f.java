package com.tencent.open.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.open.utils.Global;

public class f
  extends SQLiteOpenHelper
{
  protected static final String[] a = { "key" };
  protected static f b;
  
  public f(Context paramContext)
  {
    super(paramContext, "sdk_report.db", null, 2);
  }
  
  public static f a()
  {
    try
    {
      if (b == null) {
        b = new f(Global.getContext());
      }
      f localf = b;
      return localf;
    }
    finally {}
  }
  
  /* Error */
  public java.util.List<java.io.Serializable> a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 42	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 44	java/util/ArrayList:<init>	()V
    //   9: invokestatic 50	java/util/Collections:synchronizedList	(Ljava/util/List;)Ljava/util/List;
    //   12: astore 6
    //   14: aload_1
    //   15: invokestatic 56	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   18: istore_2
    //   19: iload_2
    //   20: ifeq +8 -> 28
    //   23: aload_0
    //   24: monitorexit
    //   25: aload 6
    //   27: areturn
    //   28: aload_0
    //   29: invokevirtual 60	com/tencent/open/b/f:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   32: astore 5
    //   34: aload 5
    //   36: ifnonnull +6 -> 42
    //   39: goto -16 -> 23
    //   42: aload 5
    //   44: ldc 62
    //   46: aconst_null
    //   47: ldc 64
    //   49: iconst_1
    //   50: anewarray 12	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: aload_1
    //   56: aastore
    //   57: aconst_null
    //   58: aconst_null
    //   59: aconst_null
    //   60: invokevirtual 70	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   63: astore_1
    //   64: aload_1
    //   65: ifnull +101 -> 166
    //   68: aload_1
    //   69: invokeinterface 76 1 0
    //   74: ifle +92 -> 166
    //   77: aload_1
    //   78: invokeinterface 80 1 0
    //   83: pop
    //   84: new 82	java/io/ByteArrayInputStream
    //   87: dup
    //   88: aload_1
    //   89: aload_1
    //   90: ldc 84
    //   92: invokeinterface 88 2 0
    //   97: invokeinterface 92 2 0
    //   102: invokespecial 95	java/io/ByteArrayInputStream:<init>	([B)V
    //   105: astore 7
    //   107: new 97	java/io/ObjectInputStream
    //   110: dup
    //   111: aload 7
    //   113: invokespecial 100	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   116: astore 4
    //   118: aload 4
    //   120: invokevirtual 104	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   123: checkcast 106	java/io/Serializable
    //   126: astore_3
    //   127: aload 4
    //   129: ifnull +8 -> 137
    //   132: aload 4
    //   134: invokevirtual 109	java/io/ObjectInputStream:close	()V
    //   137: aload 7
    //   139: invokevirtual 110	java/io/ByteArrayInputStream:close	()V
    //   142: aload_3
    //   143: ifnull +12 -> 155
    //   146: aload 6
    //   148: aload_3
    //   149: invokeinterface 116 2 0
    //   154: pop
    //   155: aload_1
    //   156: invokeinterface 119 1 0
    //   161: istore_2
    //   162: iload_2
    //   163: ifne -79 -> 84
    //   166: aload_1
    //   167: ifnull +9 -> 176
    //   170: aload_1
    //   171: invokeinterface 120 1 0
    //   176: iconst_0
    //   177: ifeq +11 -> 188
    //   180: new 122	java/lang/NullPointerException
    //   183: dup
    //   184: invokespecial 123	java/lang/NullPointerException:<init>	()V
    //   187: athrow
    //   188: aload 5
    //   190: ifnull +8 -> 198
    //   193: aload 5
    //   195: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   198: goto -175 -> 23
    //   201: astore_3
    //   202: aconst_null
    //   203: astore 4
    //   205: aload 4
    //   207: ifnull +8 -> 215
    //   210: aload 4
    //   212: invokevirtual 109	java/io/ObjectInputStream:close	()V
    //   215: aload 7
    //   217: invokevirtual 110	java/io/ByteArrayInputStream:close	()V
    //   220: aconst_null
    //   221: astore_3
    //   222: goto -80 -> 142
    //   225: astore_3
    //   226: aconst_null
    //   227: astore_3
    //   228: goto -86 -> 142
    //   231: astore_3
    //   232: aconst_null
    //   233: astore 4
    //   235: aload 4
    //   237: ifnull +8 -> 245
    //   240: aload 4
    //   242: invokevirtual 109	java/io/ObjectInputStream:close	()V
    //   245: aload 7
    //   247: invokevirtual 110	java/io/ByteArrayInputStream:close	()V
    //   250: aload_3
    //   251: athrow
    //   252: astore_3
    //   253: ldc 126
    //   255: ldc -128
    //   257: invokestatic 134	com/tencent/open/a/f:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   260: aload_1
    //   261: ifnull +9 -> 270
    //   264: aload_1
    //   265: invokeinterface 120 1 0
    //   270: iconst_0
    //   271: ifeq +11 -> 282
    //   274: new 122	java/lang/NullPointerException
    //   277: dup
    //   278: invokespecial 123	java/lang/NullPointerException:<init>	()V
    //   281: athrow
    //   282: aload 5
    //   284: ifnull -86 -> 198
    //   287: aload 5
    //   289: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   292: goto -94 -> 198
    //   295: astore_1
    //   296: aload_0
    //   297: monitorexit
    //   298: aload_1
    //   299: athrow
    //   300: astore_1
    //   301: aload_1
    //   302: invokevirtual 137	java/io/IOException:printStackTrace	()V
    //   305: goto -117 -> 188
    //   308: astore_1
    //   309: aload_1
    //   310: invokevirtual 137	java/io/IOException:printStackTrace	()V
    //   313: goto -31 -> 282
    //   316: aload_1
    //   317: ifnull +9 -> 326
    //   320: aload_1
    //   321: invokeinterface 120 1 0
    //   326: iconst_0
    //   327: ifeq +11 -> 338
    //   330: new 122	java/lang/NullPointerException
    //   333: dup
    //   334: invokespecial 123	java/lang/NullPointerException:<init>	()V
    //   337: athrow
    //   338: aload 5
    //   340: ifnull +8 -> 348
    //   343: aload 5
    //   345: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   348: aload_3
    //   349: athrow
    //   350: astore_1
    //   351: aload_1
    //   352: invokevirtual 137	java/io/IOException:printStackTrace	()V
    //   355: goto -17 -> 338
    //   358: astore 4
    //   360: goto -223 -> 137
    //   363: astore 4
    //   365: goto -223 -> 142
    //   368: astore_3
    //   369: goto -154 -> 215
    //   372: astore 4
    //   374: goto -129 -> 245
    //   377: astore 4
    //   379: goto -129 -> 250
    //   382: astore_3
    //   383: goto -67 -> 316
    //   386: astore_3
    //   387: goto -71 -> 316
    //   390: astore_1
    //   391: aconst_null
    //   392: astore_1
    //   393: goto -140 -> 253
    //   396: astore_3
    //   397: goto -162 -> 235
    //   400: astore_3
    //   401: goto -196 -> 205
    //   404: astore_3
    //   405: aconst_null
    //   406: astore_1
    //   407: goto -91 -> 316
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	410	0	this	f
    //   0	410	1	paramString	String
    //   18	145	2	bool	boolean
    //   126	23	3	localSerializable	java.io.Serializable
    //   201	1	3	localException1	Exception
    //   221	1	3	localObject1	Object
    //   225	1	3	localIOException1	java.io.IOException
    //   227	1	3	localObject2	Object
    //   231	20	3	localObject3	Object
    //   252	97	3	localException2	Exception
    //   368	1	3	localIOException2	java.io.IOException
    //   382	1	3	localObject4	Object
    //   386	1	3	localObject5	Object
    //   396	1	3	localObject6	Object
    //   400	1	3	localException3	Exception
    //   404	1	3	localObject7	Object
    //   116	125	4	localObjectInputStream	java.io.ObjectInputStream
    //   358	1	4	localIOException3	java.io.IOException
    //   363	1	4	localIOException4	java.io.IOException
    //   372	1	4	localIOException5	java.io.IOException
    //   377	1	4	localIOException6	java.io.IOException
    //   32	312	5	localSQLiteDatabase	SQLiteDatabase
    //   12	135	6	localList	java.util.List
    //   105	141	7	localByteArrayInputStream	java.io.ByteArrayInputStream
    // Exception table:
    //   from	to	target	type
    //   107	118	201	java/lang/Exception
    //   215	220	225	java/io/IOException
    //   107	118	231	finally
    //   68	84	252	java/lang/Exception
    //   84	107	252	java/lang/Exception
    //   132	137	252	java/lang/Exception
    //   137	142	252	java/lang/Exception
    //   146	155	252	java/lang/Exception
    //   155	162	252	java/lang/Exception
    //   210	215	252	java/lang/Exception
    //   215	220	252	java/lang/Exception
    //   240	245	252	java/lang/Exception
    //   245	250	252	java/lang/Exception
    //   250	252	252	java/lang/Exception
    //   2	19	295	finally
    //   28	34	295	finally
    //   170	176	295	finally
    //   180	188	295	finally
    //   193	198	295	finally
    //   264	270	295	finally
    //   274	282	295	finally
    //   287	292	295	finally
    //   301	305	295	finally
    //   309	313	295	finally
    //   320	326	295	finally
    //   330	338	295	finally
    //   343	348	295	finally
    //   348	350	295	finally
    //   351	355	295	finally
    //   180	188	300	java/io/IOException
    //   274	282	308	java/io/IOException
    //   330	338	350	java/io/IOException
    //   132	137	358	java/io/IOException
    //   137	142	363	java/io/IOException
    //   210	215	368	java/io/IOException
    //   240	245	372	java/io/IOException
    //   245	250	377	java/io/IOException
    //   68	84	382	finally
    //   84	107	382	finally
    //   132	137	382	finally
    //   137	142	382	finally
    //   146	155	382	finally
    //   155	162	382	finally
    //   210	215	382	finally
    //   215	220	382	finally
    //   240	245	382	finally
    //   245	250	382	finally
    //   250	252	382	finally
    //   253	260	386	finally
    //   42	64	390	java/lang/Exception
    //   118	127	396	finally
    //   118	127	400	java/lang/Exception
    //   42	64	404	finally
  }
  
  /* Error */
  public void a(String paramString, java.util.List<java.io.Serializable> paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_2
    //   6: invokeinterface 143 1 0
    //   11: istore_3
    //   12: iload_3
    //   13: ifne +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: iload_3
    //   20: bipush 20
    //   22: if_icmpgt +157 -> 179
    //   25: aload_1
    //   26: invokestatic 56	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   29: ifne -13 -> 16
    //   32: aload_0
    //   33: aload_1
    //   34: invokevirtual 146	com/tencent/open/b/f:b	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: invokevirtual 149	com/tencent/open/b/f:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   41: astore 7
    //   43: aload 7
    //   45: ifnull -29 -> 16
    //   48: aload 7
    //   50: invokevirtual 152	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   53: new 154	android/content/ContentValues
    //   56: dup
    //   57: invokespecial 155	android/content/ContentValues:<init>	()V
    //   60: astore 9
    //   62: iconst_0
    //   63: istore 4
    //   65: iload 4
    //   67: iload_3
    //   68: if_icmpge +195 -> 263
    //   71: aload_2
    //   72: iload 4
    //   74: invokeinterface 159 2 0
    //   79: checkcast 106	java/io/Serializable
    //   82: astore 10
    //   84: aload 10
    //   86: ifnull +79 -> 165
    //   89: aload 9
    //   91: ldc -95
    //   93: aload_1
    //   94: invokevirtual 164	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: new 166	java/io/ByteArrayOutputStream
    //   100: dup
    //   101: sipush 512
    //   104: invokespecial 169	java/io/ByteArrayOutputStream:<init>	(I)V
    //   107: astore 8
    //   109: new 171	java/io/ObjectOutputStream
    //   112: dup
    //   113: aload 8
    //   115: invokespecial 174	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   118: astore 5
    //   120: aload 5
    //   122: aload 10
    //   124: invokevirtual 178	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   127: aload 5
    //   129: ifnull +8 -> 137
    //   132: aload 5
    //   134: invokevirtual 179	java/io/ObjectOutputStream:close	()V
    //   137: aload 8
    //   139: invokevirtual 180	java/io/ByteArrayOutputStream:close	()V
    //   142: aload 9
    //   144: ldc 84
    //   146: aload 8
    //   148: invokevirtual 184	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   151: invokevirtual 187	android/content/ContentValues:put	(Ljava/lang/String;[B)V
    //   154: aload 7
    //   156: ldc 62
    //   158: aconst_null
    //   159: aload 9
    //   161: invokevirtual 191	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   164: pop2
    //   165: aload 9
    //   167: invokevirtual 194	android/content/ContentValues:clear	()V
    //   170: iload 4
    //   172: iconst_1
    //   173: iadd
    //   174: istore 4
    //   176: goto -111 -> 65
    //   179: bipush 20
    //   181: istore_3
    //   182: goto -157 -> 25
    //   185: astore 5
    //   187: aconst_null
    //   188: astore 5
    //   190: aload 5
    //   192: ifnull +8 -> 200
    //   195: aload 5
    //   197: invokevirtual 179	java/io/ObjectOutputStream:close	()V
    //   200: aload 8
    //   202: invokevirtual 180	java/io/ByteArrayOutputStream:close	()V
    //   205: goto -63 -> 142
    //   208: astore 5
    //   210: goto -68 -> 142
    //   213: astore_1
    //   214: aload 6
    //   216: astore_2
    //   217: aload_2
    //   218: ifnull +7 -> 225
    //   221: aload_2
    //   222: invokevirtual 179	java/io/ObjectOutputStream:close	()V
    //   225: aload 8
    //   227: invokevirtual 180	java/io/ByteArrayOutputStream:close	()V
    //   230: aload_1
    //   231: athrow
    //   232: astore_1
    //   233: ldc 126
    //   235: ldc -60
    //   237: invokestatic 134	com/tencent/open/a/f:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   240: aload 7
    //   242: invokevirtual 199	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   245: aload 7
    //   247: ifnull -231 -> 16
    //   250: aload 7
    //   252: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   255: goto -239 -> 16
    //   258: astore_1
    //   259: aload_0
    //   260: monitorexit
    //   261: aload_1
    //   262: athrow
    //   263: aload 7
    //   265: invokevirtual 202	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   268: aload 7
    //   270: invokevirtual 199	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   273: aload 7
    //   275: ifnull -259 -> 16
    //   278: aload 7
    //   280: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   283: goto -267 -> 16
    //   286: astore_1
    //   287: aload 7
    //   289: invokevirtual 199	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   292: aload 7
    //   294: ifnull +8 -> 302
    //   297: aload 7
    //   299: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   302: aload_1
    //   303: athrow
    //   304: astore 5
    //   306: goto -169 -> 137
    //   309: astore 5
    //   311: goto -169 -> 142
    //   314: astore 5
    //   316: goto -116 -> 200
    //   319: astore_2
    //   320: goto -95 -> 225
    //   323: astore_2
    //   324: goto -94 -> 230
    //   327: astore_1
    //   328: aload 5
    //   330: astore_2
    //   331: goto -114 -> 217
    //   334: astore 10
    //   336: goto -146 -> 190
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	339	0	this	f
    //   0	339	1	paramString	String
    //   0	339	2	paramList	java.util.List<java.io.Serializable>
    //   11	171	3	i	int
    //   63	112	4	j	int
    //   118	15	5	localObjectOutputStream	java.io.ObjectOutputStream
    //   185	1	5	localIOException1	java.io.IOException
    //   188	8	5	localObject1	Object
    //   208	1	5	localIOException2	java.io.IOException
    //   304	1	5	localIOException3	java.io.IOException
    //   309	1	5	localIOException4	java.io.IOException
    //   314	15	5	localIOException5	java.io.IOException
    //   1	214	6	localObject2	Object
    //   41	257	7	localSQLiteDatabase	SQLiteDatabase
    //   107	119	8	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   60	106	9	localContentValues	android.content.ContentValues
    //   82	41	10	localSerializable	java.io.Serializable
    //   334	1	10	localIOException6	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   109	120	185	java/io/IOException
    //   200	205	208	java/io/IOException
    //   109	120	213	finally
    //   53	62	232	java/lang/Exception
    //   71	84	232	java/lang/Exception
    //   89	109	232	java/lang/Exception
    //   132	137	232	java/lang/Exception
    //   137	142	232	java/lang/Exception
    //   142	165	232	java/lang/Exception
    //   165	170	232	java/lang/Exception
    //   195	200	232	java/lang/Exception
    //   200	205	232	java/lang/Exception
    //   221	225	232	java/lang/Exception
    //   225	230	232	java/lang/Exception
    //   230	232	232	java/lang/Exception
    //   263	268	232	java/lang/Exception
    //   5	12	258	finally
    //   25	43	258	finally
    //   48	53	258	finally
    //   240	245	258	finally
    //   250	255	258	finally
    //   268	273	258	finally
    //   278	283	258	finally
    //   287	292	258	finally
    //   297	302	258	finally
    //   302	304	258	finally
    //   53	62	286	finally
    //   71	84	286	finally
    //   89	109	286	finally
    //   132	137	286	finally
    //   137	142	286	finally
    //   142	165	286	finally
    //   165	170	286	finally
    //   195	200	286	finally
    //   200	205	286	finally
    //   221	225	286	finally
    //   225	230	286	finally
    //   230	232	286	finally
    //   233	240	286	finally
    //   263	268	286	finally
    //   132	137	304	java/io/IOException
    //   137	142	309	java/io/IOException
    //   195	200	314	java/io/IOException
    //   221	225	319	java/io/IOException
    //   225	230	323	java/io/IOException
    //   120	127	327	finally
    //   120	127	334	java/io/IOException
  }
  
  /* Error */
  public void b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 56	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 149	com/tencent/open/b/f:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   18: astore_3
    //   19: aload_3
    //   20: ifnull -9 -> 11
    //   23: aload_3
    //   24: ldc 62
    //   26: ldc 64
    //   28: iconst_1
    //   29: anewarray 12	java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: aload_1
    //   35: aastore
    //   36: invokevirtual 207	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   39: pop
    //   40: aload_3
    //   41: ifnull -30 -> 11
    //   44: aload_3
    //   45: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   48: goto -37 -> 11
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    //   56: astore_1
    //   57: ldc 126
    //   59: ldc -47
    //   61: invokestatic 134	com/tencent/open/a/f:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: aload_3
    //   65: ifnull -54 -> 11
    //   68: aload_3
    //   69: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   72: goto -61 -> 11
    //   75: astore_1
    //   76: aload_3
    //   77: ifnull +7 -> 84
    //   80: aload_3
    //   81: invokevirtual 124	android/database/sqlite/SQLiteDatabase:close	()V
    //   84: aload_1
    //   85: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	f
    //   0	86	1	paramString	String
    //   6	2	2	bool	boolean
    //   18	63	3	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   2	7	51	finally
    //   14	19	51	finally
    //   44	48	51	finally
    //   68	72	51	finally
    //   80	84	51	finally
    //   84	86	51	finally
    //   23	40	56	java/lang/Exception
    //   23	40	75	finally
    //   57	64	75	finally
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS via_cgi_report( _id INTEGER PRIMARY KEY,key TEXT,type TEXT,blob BLOB);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS via_cgi_report");
    onCreate(paramSQLiteDatabase);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */