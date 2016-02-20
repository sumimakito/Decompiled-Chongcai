package com.alipay.sdk.tid;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.alipay.sdk.encrypt.Des;
import com.alipay.sdk.util.DeviceInfo;
import java.lang.ref.WeakReference;

final class TidDbHelper
  extends SQLiteOpenHelper
{
  private static final String a = "msp.db";
  private static final int b = 1;
  private WeakReference c;
  
  public TidDbHelper(Context paramContext)
  {
    super(paramContext, "msp.db", null, 1);
    this.c = new WeakReference(paramContext);
  }
  
  /* Error */
  private java.util.List a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 31	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 34	java/util/ArrayList:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: invokevirtual 38	com/alipay/sdk/tid/TidDbHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore_1
    //   16: aload_1
    //   17: ldc 40
    //   19: aconst_null
    //   20: invokevirtual 46	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore_3
    //   24: aload_3
    //   25: astore_2
    //   26: aload_2
    //   27: invokeinterface 52 1 0
    //   32: ifeq +75 -> 107
    //   35: aload_2
    //   36: iconst_0
    //   37: invokeinterface 56 2 0
    //   42: astore_3
    //   43: aload_3
    //   44: invokestatic 62	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   47: ifne -21 -> 26
    //   50: aload 4
    //   52: aload_3
    //   53: aload_0
    //   54: getfield 25	com/alipay/sdk/tid/TidDbHelper:c	Ljava/lang/ref/WeakReference;
    //   57: invokevirtual 66	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   60: checkcast 68	android/content/Context
    //   63: invokestatic 73	com/alipay/sdk/util/DeviceInfo:c	(Landroid/content/Context;)Ljava/lang/String;
    //   66: invokestatic 78	com/alipay/sdk/encrypt/Des:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   69: invokeinterface 84 2 0
    //   74: pop
    //   75: goto -49 -> 26
    //   78: astore_3
    //   79: aload_2
    //   80: ifnull +9 -> 89
    //   83: aload_2
    //   84: invokeinterface 87 1 0
    //   89: aload_1
    //   90: ifnull +14 -> 104
    //   93: aload_1
    //   94: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   97: ifeq +7 -> 104
    //   100: aload_1
    //   101: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   104: aload 4
    //   106: areturn
    //   107: aload_2
    //   108: ifnull +9 -> 117
    //   111: aload_2
    //   112: invokeinterface 87 1 0
    //   117: aload_1
    //   118: ifnull -14 -> 104
    //   121: aload_1
    //   122: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   125: ifeq -21 -> 104
    //   128: aload_1
    //   129: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   132: aload 4
    //   134: areturn
    //   135: astore_3
    //   136: aconst_null
    //   137: astore_1
    //   138: aconst_null
    //   139: astore_2
    //   140: aload_2
    //   141: ifnull +9 -> 150
    //   144: aload_2
    //   145: invokeinterface 87 1 0
    //   150: aload_1
    //   151: ifnull +14 -> 165
    //   154: aload_1
    //   155: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   158: ifeq +7 -> 165
    //   161: aload_1
    //   162: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   165: aload_3
    //   166: athrow
    //   167: astore_3
    //   168: aconst_null
    //   169: astore_2
    //   170: goto -30 -> 140
    //   173: astore_3
    //   174: goto -34 -> 140
    //   177: astore_1
    //   178: aconst_null
    //   179: astore_1
    //   180: goto -101 -> 79
    //   183: astore_3
    //   184: goto -105 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	this	TidDbHelper
    //   15	147	1	localSQLiteDatabase	SQLiteDatabase
    //   177	1	1	localException1	Exception
    //   179	1	1	localObject1	Object
    //   1	169	2	localObject2	Object
    //   23	30	3	localObject3	Object
    //   78	1	3	localException2	Exception
    //   135	31	3	localObject4	Object
    //   167	1	3	localObject5	Object
    //   173	1	3	localObject6	Object
    //   183	1	3	localException3	Exception
    //   9	124	4	localArrayList	java.util.ArrayList
    // Exception table:
    //   from	to	target	type
    //   26	75	78	java/lang/Exception
    //   11	16	135	finally
    //   16	24	167	finally
    //   26	75	173	finally
    //   11	16	177	java/lang/Exception
    //   16	24	183	java/lang/Exception
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    int j = 0;
    Cursor localCursor = paramSQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
    if (localCursor.getCount() <= 14) {
      localCursor.close();
    }
    for (;;)
    {
      return;
      int m = localCursor.getCount() - 14;
      String[] arrayOfString = new String[m];
      if (localCursor.moveToFirst())
      {
        i = 0;
        int k;
        do
        {
          arrayOfString[i] = localCursor.getString(0);
          k = i + 1;
          if (!localCursor.moveToNext()) {
            break;
          }
          i = k;
        } while (m > k);
      }
      localCursor.close();
      int i = j;
      while (i < arrayOfString.length)
      {
        if (!TextUtils.isEmpty(arrayOfString[i])) {
          a(paramSQLiteDatabase, arrayOfString[i]);
        }
        i += 1;
      }
    }
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    try
    {
      paramSQLiteDatabase.delete("tb_tid", "name=?", new String[] { paramString });
      return;
    }
    catch (Exception paramSQLiteDatabase) {}
  }
  
  private void a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    int j = 0;
    paramString3 = Des.a(paramString3, DeviceInfo.c((Context)this.c.get()));
    paramSQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[] { e(paramString1, paramString2), paramString3, paramString4 });
    paramString1 = paramSQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
    if (paramString1.getCount() <= 14) {
      paramString1.close();
    }
    for (;;)
    {
      return;
      int m = paramString1.getCount() - 14;
      paramString2 = new String[m];
      if (paramString1.moveToFirst())
      {
        i = 0;
        int k;
        do
        {
          paramString2[i] = paramString1.getString(0);
          k = i + 1;
          if (!paramString1.moveToNext()) {
            break;
          }
          i = k;
        } while (m > k);
      }
      paramString1.close();
      int i = j;
      while (i < paramString2.length)
      {
        if (!TextUtils.isEmpty(paramString2[i])) {
          a(paramSQLiteDatabase, paramString2[i]);
        }
        i += 1;
      }
    }
  }
  
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2)
  {
    SQLiteDatabase localSQLiteDatabase2 = null;
    SQLiteDatabase localSQLiteDatabase1 = null;
    for (;;)
    {
      try
      {
        paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("select count(*) from tb_tid where name=?", new String[] { e(paramString1, paramString2) });
        localSQLiteDatabase1 = paramSQLiteDatabase;
        localSQLiteDatabase2 = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToFirst()) {
          break label113;
        }
        localSQLiteDatabase1 = paramSQLiteDatabase;
        localSQLiteDatabase2 = paramSQLiteDatabase;
        i = paramSQLiteDatabase.getInt(0);
      }
      catch (Exception paramSQLiteDatabase)
      {
        if (localSQLiteDatabase1 == null) {
          break label105;
        }
        localSQLiteDatabase1.close();
        i = 0;
        continue;
      }
      finally
      {
        if (localSQLiteDatabase2 == null) {
          continue;
        }
        localSQLiteDatabase2.close();
      }
      return i > 0;
      label105:
      int i = 0;
      continue;
      continue;
      label113:
      i = 0;
    }
  }
  
  private void b(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramSQLiteDatabase.execSQL("update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?", new Object[] { Des.a(paramString3, DeviceInfo.c((Context)this.c.get())), paramString4, e(paramString1, paramString2) });
  }
  
  /* Error */
  private long d(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: aconst_null
    //   4: astore 13
    //   6: aconst_null
    //   7: astore 12
    //   9: aconst_null
    //   10: astore 11
    //   12: lconst_0
    //   13: lstore 5
    //   15: aload_0
    //   16: invokevirtual 38	com/alipay/sdk/tid/TidDbHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   19: astore 9
    //   21: aload 13
    //   23: astore 10
    //   25: aload 12
    //   27: astore 11
    //   29: aload 9
    //   31: ldc -115
    //   33: iconst_1
    //   34: anewarray 100	java/lang/String
    //   37: dup
    //   38: iconst_0
    //   39: aload_1
    //   40: aload_2
    //   41: invokestatic 124	com/alipay/sdk/tid/TidDbHelper:e	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   44: aastore
    //   45: invokevirtual 46	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore_1
    //   49: lload 5
    //   51: lstore_3
    //   52: aload_1
    //   53: astore 10
    //   55: aload_1
    //   56: astore 11
    //   58: aload_1
    //   59: invokeinterface 103 1 0
    //   64: ifeq +35 -> 99
    //   67: aload_1
    //   68: astore 10
    //   70: aload_1
    //   71: astore 11
    //   73: new 143	java/text/SimpleDateFormat
    //   76: dup
    //   77: ldc -111
    //   79: invokestatic 151	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   82: invokespecial 154	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   85: aload_1
    //   86: iconst_0
    //   87: invokeinterface 56 2 0
    //   92: invokevirtual 158	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   95: invokevirtual 164	java/util/Date:getTime	()J
    //   98: lstore_3
    //   99: aload_1
    //   100: ifnull +9 -> 109
    //   103: aload_1
    //   104: invokeinterface 87 1 0
    //   109: lload_3
    //   110: lstore 7
    //   112: aload 9
    //   114: ifnull +22 -> 136
    //   117: lload_3
    //   118: lstore 7
    //   120: aload 9
    //   122: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   125: ifeq +11 -> 136
    //   128: aload 9
    //   130: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   133: lload_3
    //   134: lstore 7
    //   136: lload 7
    //   138: lreturn
    //   139: astore_1
    //   140: aconst_null
    //   141: astore 9
    //   143: aload 11
    //   145: ifnull +10 -> 155
    //   148: aload 11
    //   150: invokeinterface 87 1 0
    //   155: lload 5
    //   157: lstore 7
    //   159: aload 9
    //   161: ifnull -25 -> 136
    //   164: lload 5
    //   166: lstore 7
    //   168: aload 9
    //   170: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   173: ifeq -37 -> 136
    //   176: aload 9
    //   178: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   181: lconst_0
    //   182: lreturn
    //   183: astore_1
    //   184: aconst_null
    //   185: astore 9
    //   187: aload 10
    //   189: ifnull +10 -> 199
    //   192: aload 10
    //   194: invokeinterface 87 1 0
    //   199: aload 9
    //   201: ifnull +16 -> 217
    //   204: aload 9
    //   206: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   209: ifeq +8 -> 217
    //   212: aload 9
    //   214: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   217: aload_1
    //   218: athrow
    //   219: astore_1
    //   220: goto -33 -> 187
    //   223: astore_1
    //   224: goto -81 -> 143
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	227	0	this	TidDbHelper
    //   0	227	1	paramString1	String
    //   0	227	2	paramString2	String
    //   51	83	3	l1	long
    //   13	152	5	l2	long
    //   110	57	7	l3	long
    //   19	194	9	localSQLiteDatabase	SQLiteDatabase
    //   1	192	10	localObject1	Object
    //   10	139	11	localObject2	Object
    //   7	19	12	localObject3	Object
    //   4	18	13	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   15	21	139	java/lang/Exception
    //   15	21	183	finally
    //   29	49	219	finally
    //   58	67	219	finally
    //   73	99	219	finally
    //   29	49	223	java/lang/Exception
    //   58	67	223	java/lang/Exception
    //   73	99	223	java/lang/Exception
  }
  
  private static String e(String paramString1, String paramString2)
  {
    return paramString1 + paramString2;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      b(localSQLiteDatabase, paramString1, paramString2, "", "");
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      a(localSQLiteDatabase, e(paramString1, paramString2));
      if ((localSQLiteDatabase != null) && (localSQLiteDatabase.isOpen())) {
        localSQLiteDatabase.close();
      }
      return;
    }
    catch (Exception paramString1) {}finally
    {
      if ((localObject2 != null) && (((SQLiteDatabase)localObject2).isOpen())) {
        ((SQLiteDatabase)localObject2).close();
      }
    }
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    localObject2 = null;
    localObject1 = null;
    for (;;)
    {
      try
      {
        localSQLiteDatabase = getWritableDatabase();
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (!a(localSQLiteDatabase, paramString1, paramString2)) {
          continue;
        }
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        b(localSQLiteDatabase, paramString1, paramString2, paramString3, paramString4);
      }
      catch (Exception paramString1)
      {
        SQLiteDatabase localSQLiteDatabase;
        return;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        int k = paramString1.getCount() - 14;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        paramString2 = new String[k];
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (!paramString1.moveToFirst()) {
          continue;
        }
        int i = 0;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        paramString2[i] = paramString1.getString(0);
        int j = i + 1;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (!paramString1.moveToNext()) {
          continue;
        }
        i = j;
        if (k > j) {
          continue;
        }
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        paramString1.close();
        i = 0;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (i >= paramString2.length) {
          continue;
        }
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (TextUtils.isEmpty(paramString2[i])) {
          continue;
        }
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        a(localSQLiteDatabase, paramString2[i]);
        i += 1;
        continue;
      }
      finally
      {
        if ((localObject2 == null) || (!((SQLiteDatabase)localObject2).isOpen())) {
          continue;
        }
        ((SQLiteDatabase)localObject2).close();
      }
      if ((localSQLiteDatabase != null) && (localSQLiteDatabase.isOpen())) {
        localSQLiteDatabase.close();
      }
      return;
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      paramString3 = Des.a(paramString3, DeviceInfo.c((Context)this.c.get()));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localSQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[] { e(paramString1, paramString2), paramString3, paramString4 });
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      paramString1 = localSQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      if (paramString1.getCount() > 14) {
        continue;
      }
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      paramString1.close();
    }
  }
  
  /* Error */
  public final String b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 38	com/alipay/sdk/tid/TidDbHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore_3
    //   8: aload_3
    //   9: ldc -68
    //   11: iconst_1
    //   12: anewarray 100	java/lang/String
    //   15: dup
    //   16: iconst_0
    //   17: aload_1
    //   18: aload_2
    //   19: invokestatic 124	com/alipay/sdk/tid/TidDbHelper:e	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   22: aastore
    //   23: invokevirtual 46	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   26: astore_2
    //   27: aload 4
    //   29: astore_1
    //   30: aload_2
    //   31: invokeinterface 103 1 0
    //   36: ifeq +11 -> 47
    //   39: aload_2
    //   40: iconst_0
    //   41: invokeinterface 56 2 0
    //   46: astore_1
    //   47: aload_2
    //   48: ifnull +9 -> 57
    //   51: aload_2
    //   52: invokeinterface 87 1 0
    //   57: aload_3
    //   58: ifnull +135 -> 193
    //   61: aload_3
    //   62: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   65: ifeq +128 -> 193
    //   68: aload_3
    //   69: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   72: aload_1
    //   73: astore_2
    //   74: aload_1
    //   75: invokestatic 62	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   78: ifne +21 -> 99
    //   81: aload_1
    //   82: aload_0
    //   83: getfield 25	com/alipay/sdk/tid/TidDbHelper:c	Ljava/lang/ref/WeakReference;
    //   86: invokevirtual 66	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   89: checkcast 68	android/content/Context
    //   92: invokestatic 73	com/alipay/sdk/util/DeviceInfo:c	(Landroid/content/Context;)Ljava/lang/String;
    //   95: invokestatic 78	com/alipay/sdk/encrypt/Des:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   98: astore_2
    //   99: aload_2
    //   100: areturn
    //   101: astore_1
    //   102: aconst_null
    //   103: astore_2
    //   104: aconst_null
    //   105: astore_3
    //   106: aload_2
    //   107: ifnull +9 -> 116
    //   110: aload_2
    //   111: invokeinterface 87 1 0
    //   116: aload_3
    //   117: ifnull +71 -> 188
    //   120: aload_3
    //   121: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   124: ifeq +64 -> 188
    //   127: aload_3
    //   128: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   131: aconst_null
    //   132: astore_1
    //   133: goto -61 -> 72
    //   136: astore_1
    //   137: aconst_null
    //   138: astore_3
    //   139: aconst_null
    //   140: astore_2
    //   141: aload_2
    //   142: ifnull +9 -> 151
    //   145: aload_2
    //   146: invokeinterface 87 1 0
    //   151: aload_3
    //   152: ifnull +14 -> 166
    //   155: aload_3
    //   156: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   159: ifeq +7 -> 166
    //   162: aload_3
    //   163: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   166: aload_1
    //   167: athrow
    //   168: astore_1
    //   169: aconst_null
    //   170: astore_2
    //   171: goto -30 -> 141
    //   174: astore_1
    //   175: goto -34 -> 141
    //   178: astore_1
    //   179: aconst_null
    //   180: astore_2
    //   181: goto -75 -> 106
    //   184: astore_1
    //   185: goto -79 -> 106
    //   188: aconst_null
    //   189: astore_1
    //   190: goto -118 -> 72
    //   193: goto -121 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	TidDbHelper
    //   0	196	1	paramString1	String
    //   0	196	2	paramString2	String
    //   7	156	3	localSQLiteDatabase	SQLiteDatabase
    //   1	27	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	8	101	java/lang/Exception
    //   3	8	136	finally
    //   8	27	168	finally
    //   30	47	174	finally
    //   8	27	178	java/lang/Exception
    //   30	47	184	java/lang/Exception
  }
  
  /* Error */
  public final String c(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: invokevirtual 38	com/alipay/sdk/tid/TidDbHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore_3
    //   11: aload_3
    //   12: ldc -66
    //   14: iconst_1
    //   15: anewarray 100	java/lang/String
    //   18: dup
    //   19: iconst_0
    //   20: aload_1
    //   21: aload_2
    //   22: invokestatic 124	com/alipay/sdk/tid/TidDbHelper:e	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   25: aastore
    //   26: invokevirtual 46	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   29: astore_1
    //   30: aload 5
    //   32: astore_2
    //   33: aload_1
    //   34: invokeinterface 103 1 0
    //   39: ifeq +11 -> 50
    //   42: aload_1
    //   43: iconst_0
    //   44: invokeinterface 56 2 0
    //   49: astore_2
    //   50: aload_1
    //   51: ifnull +9 -> 60
    //   54: aload_1
    //   55: invokeinterface 87 1 0
    //   60: aload_2
    //   61: astore_1
    //   62: aload_3
    //   63: ifnull +18 -> 81
    //   66: aload_2
    //   67: astore_1
    //   68: aload_3
    //   69: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   72: ifeq +9 -> 81
    //   75: aload_3
    //   76: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   79: aload_2
    //   80: astore_1
    //   81: aload_1
    //   82: areturn
    //   83: astore_1
    //   84: aconst_null
    //   85: astore_1
    //   86: aconst_null
    //   87: astore_3
    //   88: aload_1
    //   89: ifnull +9 -> 98
    //   92: aload_1
    //   93: invokeinterface 87 1 0
    //   98: aload 4
    //   100: astore_1
    //   101: aload_3
    //   102: ifnull -21 -> 81
    //   105: aload 4
    //   107: astore_1
    //   108: aload_3
    //   109: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   112: ifeq -31 -> 81
    //   115: aload_3
    //   116: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   119: aconst_null
    //   120: areturn
    //   121: astore_2
    //   122: aconst_null
    //   123: astore_3
    //   124: aconst_null
    //   125: astore_1
    //   126: aload_1
    //   127: ifnull +9 -> 136
    //   130: aload_1
    //   131: invokeinterface 87 1 0
    //   136: aload_3
    //   137: ifnull +14 -> 151
    //   140: aload_3
    //   141: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   144: ifeq +7 -> 151
    //   147: aload_3
    //   148: invokevirtual 91	android/database/sqlite/SQLiteDatabase:close	()V
    //   151: aload_2
    //   152: athrow
    //   153: astore_2
    //   154: aconst_null
    //   155: astore_1
    //   156: goto -30 -> 126
    //   159: astore_2
    //   160: goto -34 -> 126
    //   163: astore_1
    //   164: aconst_null
    //   165: astore_1
    //   166: goto -78 -> 88
    //   169: astore_2
    //   170: goto -82 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	TidDbHelper
    //   0	173	1	paramString1	String
    //   0	173	2	paramString2	String
    //   10	138	3	localSQLiteDatabase	SQLiteDatabase
    //   1	105	4	localObject1	Object
    //   4	27	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   6	11	83	java/lang/Exception
    //   6	11	121	finally
    //   11	30	153	finally
    //   33	50	159	finally
    //   11	30	163	java/lang/Exception
    //   33	50	169	java/lang/Exception
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("drop table if exists tb_tid");
    paramSQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/tid/TidDbHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */