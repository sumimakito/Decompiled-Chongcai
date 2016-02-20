package com.tencent.mm.sdk.platformtools;

import android.os.Build;
import android.os.Build.VERSION;
import java.io.PrintStream;

final class LogHelper
{
  private static final byte[] au = { 4, 0, 0, 0, -1, -1, -1, 0 };
  
  public static void initLogHeader(PrintStream paramPrintStream, String paramString1, String paramString2, long paramLong, int paramInt)
  {
    if ((paramPrintStream == null) || (Util.isNullOrNil(paramString2)) || (paramLong == 0L)) {
      return;
    }
    paramPrintStream.println("1 " + paramString1);
    paramPrintStream.println("2 " + paramString2);
    paramPrintStream.println("3 " + paramLong);
    paramPrintStream.println("4 " + Integer.toHexString(paramInt));
    paramPrintStream.println("5 " + Build.VERSION.RELEASE);
    paramPrintStream.println("6 " + Build.VERSION.CODENAME);
    paramPrintStream.println("7 " + Build.VERSION.INCREMENTAL);
    paramPrintStream.println("8 " + Build.BOARD);
    paramPrintStream.println("9 " + Build.DEVICE);
    paramPrintStream.println("10 " + Build.DISPLAY);
    paramPrintStream.println("11 " + Build.FINGERPRINT);
    paramPrintStream.println("12 " + Build.HOST);
    paramPrintStream.println("13 " + Build.MANUFACTURER);
    paramPrintStream.println("14 " + Build.MODEL);
    paramPrintStream.println("15 " + Build.PRODUCT);
    paramPrintStream.println("16 " + Build.TAGS);
    paramPrintStream.println("17 " + Build.TYPE);
    paramPrintStream.println("18 " + Build.USER);
    paramPrintStream.println();
    paramPrintStream.flush();
  }
  
  /* Error */
  public static void writeToStream(PrintStream paramPrintStream, byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +24 -> 25
    //   4: aload_1
    //   5: invokestatic 147	com/tencent/mm/sdk/platformtools/Util:isNullOrNil	([B)Z
    //   8: ifne +17 -> 25
    //   11: aload_2
    //   12: invokestatic 25	com/tencent/mm/sdk/platformtools/Util:isNullOrNil	(Ljava/lang/String;)Z
    //   15: ifne +10 -> 25
    //   18: aload_3
    //   19: invokestatic 25	com/tencent/mm/sdk/platformtools/Util:isNullOrNil	(Ljava/lang/String;)Z
    //   22: ifeq +4 -> 26
    //   25: return
    //   26: aload_0
    //   27: monitorenter
    //   28: new 149	java/lang/StringBuffer
    //   31: dup
    //   32: invokespecial 150	java/lang/StringBuffer:<init>	()V
    //   35: astore 4
    //   37: aload 4
    //   39: ldc -104
    //   41: invokestatic 158	java/lang/System:currentTimeMillis	()J
    //   44: invokestatic 164	android/text/format/DateFormat:format	(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    //   47: invokevirtual 167	java/lang/StringBuffer:append	(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    //   50: pop
    //   51: aload 4
    //   53: ldc -87
    //   55: invokevirtual 172	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   58: aload_2
    //   59: invokevirtual 172	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   62: ldc -87
    //   64: invokevirtual 172	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   67: aload_3
    //   68: invokevirtual 172	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   71: pop
    //   72: aload 4
    //   74: invokevirtual 173	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   77: astore_2
    //   78: new 175	javax/crypto/spec/DESKeySpec
    //   81: dup
    //   82: aload_1
    //   83: invokespecial 178	javax/crypto/spec/DESKeySpec:<init>	([B)V
    //   86: astore_1
    //   87: ldc -76
    //   89: invokestatic 186	javax/crypto/SecretKeyFactory:getInstance	(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    //   92: aload_1
    //   93: invokevirtual 190	javax/crypto/SecretKeyFactory:generateSecret	(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    //   96: astore_1
    //   97: ldc -76
    //   99: invokestatic 195	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   102: astore_3
    //   103: aload_3
    //   104: iconst_1
    //   105: aload_1
    //   106: invokevirtual 199	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   109: aload_3
    //   110: aload_2
    //   111: invokevirtual 205	java/lang/String:getBytes	()[B
    //   114: invokevirtual 209	javax/crypto/Cipher:doFinal	([B)[B
    //   117: astore_1
    //   118: aload_0
    //   119: aload_1
    //   120: arraylength
    //   121: invokestatic 215	com/tencent/mm/algorithm/TypeTransform:intToByteArrayLH	(I)[B
    //   124: invokevirtual 218	java/io/PrintStream:write	([B)V
    //   127: aload_0
    //   128: aload_1
    //   129: invokevirtual 218	java/io/PrintStream:write	([B)V
    //   132: aload_0
    //   133: getstatic 13	com/tencent/mm/sdk/platformtools/LogHelper:au	[B
    //   136: invokevirtual 218	java/io/PrintStream:write	([B)V
    //   139: aload_0
    //   140: invokevirtual 140	java/io/PrintStream:flush	()V
    //   143: aload_0
    //   144: monitorexit
    //   145: return
    //   146: astore_1
    //   147: aload_0
    //   148: monitorexit
    //   149: aload_1
    //   150: athrow
    //   151: astore_1
    //   152: aload_1
    //   153: invokevirtual 221	java/lang/Exception:printStackTrace	()V
    //   156: goto -17 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	159	0	paramPrintStream	PrintStream
    //   0	159	1	paramArrayOfByte	byte[]
    //   0	159	2	paramString1	String
    //   0	159	3	paramString2	String
    //   35	38	4	localStringBuffer	StringBuffer
    // Exception table:
    //   from	to	target	type
    //   28	78	146	finally
    //   78	139	146	finally
    //   139	145	146	finally
    //   152	156	146	finally
    //   78	139	151	java/lang/Exception
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/LogHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */