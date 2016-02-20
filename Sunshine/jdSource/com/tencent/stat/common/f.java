package com.tencent.stat.common;

import android.content.Context;

public class f
{
  static long a = -1L;
  
  static long a(Context paramContext, String paramString)
  {
    return p.a(paramContext, paramString, a);
  }
  
  static void a(Context paramContext, String paramString, long paramLong)
  {
    p.b(paramContext, paramString, paramLong);
  }
  
  /* Error */
  public static boolean a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc 26
    //   6: invokestatic 28	com/tencent/stat/common/f:a	(Landroid/content/Context;Ljava/lang/String;)J
    //   9: lstore_1
    //   10: aload_0
    //   11: ldc 30
    //   13: invokestatic 28	com/tencent/stat/common/f:a	(Landroid/content/Context;Ljava/lang/String;)J
    //   16: lstore_3
    //   17: lload_1
    //   18: lconst_0
    //   19: lcmp
    //   20: ifle +24 -> 44
    //   23: getstatic 12	com/tencent/stat/common/f:a	J
    //   26: lstore 5
    //   28: lload_3
    //   29: lload 5
    //   31: lcmp
    //   32: ifne +12 -> 44
    //   35: iconst_0
    //   36: istore 7
    //   38: ldc 2
    //   40: monitorexit
    //   41: iload 7
    //   43: ireturn
    //   44: lload_1
    //   45: getstatic 12	com/tencent/stat/common/f:a	J
    //   48: lcmp
    //   49: ifne +12 -> 61
    //   52: aload_0
    //   53: ldc 26
    //   55: invokestatic 36	java/lang/System:currentTimeMillis	()J
    //   58: invokestatic 38	com/tencent/stat/common/f:a	(Landroid/content/Context;Ljava/lang/String;J)V
    //   61: iconst_1
    //   62: istore 7
    //   64: goto -26 -> 38
    //   67: astore_0
    //   68: ldc 2
    //   70: monitorexit
    //   71: aload_0
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	paramContext	Context
    //   9	36	1	l1	long
    //   16	13	3	l2	long
    //   26	4	5	l3	long
    //   36	27	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	17	67	finally
    //   23	28	67	finally
    //   44	61	67	finally
  }
  
  public static void b(Context paramContext)
  {
    try
    {
      if (a(paramContext, "1.6.2_end__protection") == a) {
        a(paramContext, "1.6.2_end__protection", System.currentTimeMillis());
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/common/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */