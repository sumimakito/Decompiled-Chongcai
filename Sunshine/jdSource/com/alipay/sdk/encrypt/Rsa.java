package com.alipay.sdk.encrypt;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

public class Rsa
{
  public static final String a = "SHA1WithRSA";
  private static final String b = "RSA";
  
  /* Error */
  public static String a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 23	java/security/spec/X509EncodedKeySpec
    //   6: dup
    //   7: aload_1
    //   8: invokestatic 28	com/alipay/sdk/encrypt/Base64:a	(Ljava/lang/String;)[B
    //   11: invokespecial 31	java/security/spec/X509EncodedKeySpec:<init>	([B)V
    //   14: astore_1
    //   15: ldc 11
    //   17: invokestatic 37	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   20: aload_1
    //   21: invokevirtual 41	java/security/KeyFactory:generatePublic	(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    //   24: astore_1
    //   25: ldc 43
    //   27: invokestatic 48	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   30: astore 6
    //   32: aload 6
    //   34: iconst_1
    //   35: aload_1
    //   36: invokevirtual 52	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   39: aload_0
    //   40: ldc 54
    //   42: invokevirtual 59	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   45: astore 7
    //   47: aload 6
    //   49: invokevirtual 63	javax/crypto/Cipher:getBlockSize	()I
    //   52: istore 4
    //   54: new 65	java/io/ByteArrayOutputStream
    //   57: dup
    //   58: invokespecial 66	java/io/ByteArrayOutputStream:<init>	()V
    //   61: astore_1
    //   62: iconst_0
    //   63: istore_2
    //   64: aload_1
    //   65: astore_0
    //   66: iload_2
    //   67: aload 7
    //   69: arraylength
    //   70: if_icmpge +46 -> 116
    //   73: aload_1
    //   74: astore_0
    //   75: aload 7
    //   77: arraylength
    //   78: iload_2
    //   79: isub
    //   80: iload 4
    //   82: if_icmpge +134 -> 216
    //   85: aload_1
    //   86: astore_0
    //   87: aload 7
    //   89: arraylength
    //   90: iload_2
    //   91: isub
    //   92: istore_3
    //   93: aload_1
    //   94: astore_0
    //   95: aload_1
    //   96: aload 6
    //   98: aload 7
    //   100: iload_2
    //   101: iload_3
    //   102: invokevirtual 70	javax/crypto/Cipher:doFinal	([BII)[B
    //   105: invokevirtual 73	java/io/ByteArrayOutputStream:write	([B)V
    //   108: iload_2
    //   109: iload 4
    //   111: iadd
    //   112: istore_2
    //   113: goto -49 -> 64
    //   116: aload_1
    //   117: astore_0
    //   118: new 56	java/lang/String
    //   121: dup
    //   122: aload_1
    //   123: invokevirtual 77	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   126: invokestatic 80	com/alipay/sdk/encrypt/Base64:a	([B)Ljava/lang/String;
    //   129: invokespecial 83	java/lang/String:<init>	(Ljava/lang/String;)V
    //   132: astore 5
    //   134: aload_1
    //   135: invokevirtual 86	java/io/ByteArrayOutputStream:close	()V
    //   138: aload 5
    //   140: areturn
    //   141: astore_0
    //   142: aload_0
    //   143: invokevirtual 89	java/io/IOException:printStackTrace	()V
    //   146: aload 5
    //   148: areturn
    //   149: astore 5
    //   151: aconst_null
    //   152: astore_1
    //   153: aload_1
    //   154: astore_0
    //   155: aload 5
    //   157: invokevirtual 90	java/lang/Exception:printStackTrace	()V
    //   160: aload_1
    //   161: ifnull +53 -> 214
    //   164: aload_1
    //   165: invokevirtual 86	java/io/ByteArrayOutputStream:close	()V
    //   168: aconst_null
    //   169: areturn
    //   170: astore_0
    //   171: aload_0
    //   172: invokevirtual 89	java/io/IOException:printStackTrace	()V
    //   175: aconst_null
    //   176: areturn
    //   177: astore_0
    //   178: aload 5
    //   180: astore_1
    //   181: aload_1
    //   182: ifnull +7 -> 189
    //   185: aload_1
    //   186: invokevirtual 86	java/io/ByteArrayOutputStream:close	()V
    //   189: aload_0
    //   190: athrow
    //   191: astore_1
    //   192: aload_1
    //   193: invokevirtual 89	java/io/IOException:printStackTrace	()V
    //   196: goto -7 -> 189
    //   199: astore 5
    //   201: aload_0
    //   202: astore_1
    //   203: aload 5
    //   205: astore_0
    //   206: goto -25 -> 181
    //   209: astore 5
    //   211: goto -58 -> 153
    //   214: aconst_null
    //   215: areturn
    //   216: iload 4
    //   218: istore_3
    //   219: goto -126 -> 93
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	paramString1	String
    //   0	222	1	paramString2	String
    //   63	50	2	i	int
    //   92	127	3	j	int
    //   52	165	4	k	int
    //   1	146	5	str	String
    //   149	30	5	localException1	Exception
    //   199	5	5	localObject	Object
    //   209	1	5	localException2	Exception
    //   30	67	6	localCipher	javax.crypto.Cipher
    //   45	54	7	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   134	138	141	java/io/IOException
    //   3	62	149	java/lang/Exception
    //   164	168	170	java/io/IOException
    //   3	62	177	finally
    //   185	189	191	java/io/IOException
    //   66	73	199	finally
    //   75	85	199	finally
    //   87	93	199	finally
    //   95	108	199	finally
    //   118	134	199	finally
    //   155	160	199	finally
    //   66	73	209	java/lang/Exception
    //   75	85	209	java/lang/Exception
    //   87	93	209	java/lang/Exception
    //   95	108	209	java/lang/Exception
    //   118	134	209	java/lang/Exception
  }
  
  private static boolean a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString3 = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.a(paramString3)));
      Signature localSignature = Signature.getInstance("SHA1WithRSA");
      localSignature.initVerify(paramString3);
      localSignature.update(paramString1.getBytes("utf-8"));
      boolean bool = localSignature.verify(Base64.a(paramString2));
      return bool;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  private static PublicKey b(String paramString1, String paramString2)
    throws NoSuchAlgorithmException, Exception
  {
    paramString2 = new X509EncodedKeySpec(Base64.a(paramString2));
    return KeyFactory.getInstance(paramString1).generatePublic(paramString2);
  }
  
  /* Error */
  private static String c(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 116	java/security/spec/PKCS8EncodedKeySpec
    //   6: dup
    //   7: aload_1
    //   8: invokestatic 28	com/alipay/sdk/encrypt/Base64:a	(Ljava/lang/String;)[B
    //   11: invokespecial 117	java/security/spec/PKCS8EncodedKeySpec:<init>	([B)V
    //   14: astore_1
    //   15: ldc 11
    //   17: invokestatic 37	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   20: aload_1
    //   21: invokevirtual 121	java/security/KeyFactory:generatePrivate	(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    //   24: astore_1
    //   25: ldc 43
    //   27: invokestatic 48	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   30: astore 6
    //   32: aload 6
    //   34: iconst_2
    //   35: aload_1
    //   36: invokevirtual 52	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   39: aload_0
    //   40: invokestatic 28	com/alipay/sdk/encrypt/Base64:a	(Ljava/lang/String;)[B
    //   43: astore 7
    //   45: aload 6
    //   47: invokevirtual 63	javax/crypto/Cipher:getBlockSize	()I
    //   50: istore 4
    //   52: new 65	java/io/ByteArrayOutputStream
    //   55: dup
    //   56: invokespecial 66	java/io/ByteArrayOutputStream:<init>	()V
    //   59: astore_1
    //   60: iconst_0
    //   61: istore_2
    //   62: aload_1
    //   63: astore_0
    //   64: iload_2
    //   65: aload 7
    //   67: arraylength
    //   68: if_icmpge +46 -> 114
    //   71: aload_1
    //   72: astore_0
    //   73: aload 7
    //   75: arraylength
    //   76: iload_2
    //   77: isub
    //   78: iload 4
    //   80: if_icmpge +131 -> 211
    //   83: aload_1
    //   84: astore_0
    //   85: aload 7
    //   87: arraylength
    //   88: iload_2
    //   89: isub
    //   90: istore_3
    //   91: aload_1
    //   92: astore_0
    //   93: aload_1
    //   94: aload 6
    //   96: aload 7
    //   98: iload_2
    //   99: iload_3
    //   100: invokevirtual 70	javax/crypto/Cipher:doFinal	([BII)[B
    //   103: invokevirtual 73	java/io/ByteArrayOutputStream:write	([B)V
    //   106: iload_2
    //   107: iload 4
    //   109: iadd
    //   110: istore_2
    //   111: goto -49 -> 62
    //   114: aload_1
    //   115: astore_0
    //   116: new 56	java/lang/String
    //   119: dup
    //   120: aload_1
    //   121: invokevirtual 77	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   124: invokespecial 122	java/lang/String:<init>	([B)V
    //   127: astore 5
    //   129: aload_1
    //   130: invokevirtual 86	java/io/ByteArrayOutputStream:close	()V
    //   133: aload 5
    //   135: areturn
    //   136: astore_0
    //   137: aload_0
    //   138: invokevirtual 89	java/io/IOException:printStackTrace	()V
    //   141: aload 5
    //   143: areturn
    //   144: astore 5
    //   146: aconst_null
    //   147: astore_1
    //   148: aload_1
    //   149: astore_0
    //   150: aload 5
    //   152: invokevirtual 90	java/lang/Exception:printStackTrace	()V
    //   155: aload_1
    //   156: ifnull +53 -> 209
    //   159: aload_1
    //   160: invokevirtual 86	java/io/ByteArrayOutputStream:close	()V
    //   163: aconst_null
    //   164: areturn
    //   165: astore_0
    //   166: aload_0
    //   167: invokevirtual 89	java/io/IOException:printStackTrace	()V
    //   170: aconst_null
    //   171: areturn
    //   172: astore_0
    //   173: aload 5
    //   175: astore_1
    //   176: aload_1
    //   177: ifnull +7 -> 184
    //   180: aload_1
    //   181: invokevirtual 86	java/io/ByteArrayOutputStream:close	()V
    //   184: aload_0
    //   185: athrow
    //   186: astore_1
    //   187: aload_1
    //   188: invokevirtual 89	java/io/IOException:printStackTrace	()V
    //   191: goto -7 -> 184
    //   194: astore 5
    //   196: aload_0
    //   197: astore_1
    //   198: aload 5
    //   200: astore_0
    //   201: goto -25 -> 176
    //   204: astore 5
    //   206: goto -58 -> 148
    //   209: aconst_null
    //   210: areturn
    //   211: iload 4
    //   213: istore_3
    //   214: goto -123 -> 91
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	217	0	paramString1	String
    //   0	217	1	paramString2	String
    //   61	50	2	i	int
    //   90	124	3	j	int
    //   50	162	4	k	int
    //   1	141	5	str	String
    //   144	30	5	localException1	Exception
    //   194	5	5	localObject	Object
    //   204	1	5	localException2	Exception
    //   30	65	6	localCipher	javax.crypto.Cipher
    //   43	54	7	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   129	133	136	java/io/IOException
    //   3	60	144	java/lang/Exception
    //   159	163	165	java/io/IOException
    //   3	60	172	finally
    //   180	184	186	java/io/IOException
    //   64	71	194	finally
    //   73	83	194	finally
    //   85	91	194	finally
    //   93	106	194	finally
    //   116	129	194	finally
    //   150	155	194	finally
    //   64	71	204	java/lang/Exception
    //   73	83	204	java/lang/Exception
    //   85	91	204	java/lang/Exception
    //   93	106	204	java/lang/Exception
    //   116	129	204	java/lang/Exception
  }
  
  private static String d(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new PKCS8EncodedKeySpec(Base64.a(paramString2));
      paramString2 = KeyFactory.getInstance("RSA").generatePrivate(paramString2);
      Signature localSignature = Signature.getInstance("SHA1WithRSA");
      localSignature.initSign(paramString2);
      localSignature.update(paramString1.getBytes("utf-8"));
      paramString1 = Base64.a(localSignature.sign());
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/encrypt/Rsa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */