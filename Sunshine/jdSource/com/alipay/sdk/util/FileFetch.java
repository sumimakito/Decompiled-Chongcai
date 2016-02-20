package com.alipay.sdk.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

final class FileFetch
  implements Runnable
{
  private String a;
  private String b;
  private FileDownloader c;
  private boolean d = false;
  private long e;
  private long f;
  
  public FileFetch(String paramString1, String paramString2, FileDownloader paramFileDownloader)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramFileDownloader;
  }
  
  public final long a()
  {
    return this.e;
  }
  
  public final void a(long paramLong)
  {
    this.e = paramLong;
  }
  
  public final long b()
  {
    return this.f;
  }
  
  public final void b(long paramLong)
  {
    this.f = paramLong;
  }
  
  public final boolean c()
  {
    return this.d;
  }
  
  public final void d()
  {
    this.d = true;
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 32	com/alipay/sdk/util/FileFetch:c	Lcom/alipay/sdk/util/FileDownloader;
    //   4: invokevirtual 52	com/alipay/sdk/util/FileDownloader:a	()Z
    //   7: ifeq +30 -> 37
    //   10: aload_0
    //   11: getfield 40	com/alipay/sdk/util/FileFetch:f	J
    //   14: lconst_0
    //   15: lcmp
    //   16: ifle +15 -> 31
    //   19: aload_0
    //   20: getfield 37	com/alipay/sdk/util/FileFetch:e	J
    //   23: aload_0
    //   24: getfield 40	com/alipay/sdk/util/FileFetch:f	J
    //   27: lcmp
    //   28: iflt +9 -> 37
    //   31: aload_0
    //   32: iconst_1
    //   33: putfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   36: return
    //   37: new 8	com/alipay/sdk/util/FileFetch$FileAccess
    //   40: dup
    //   41: aload_0
    //   42: invokespecial 55	com/alipay/sdk/util/FileFetch$FileAccess:<init>	(Lcom/alipay/sdk/util/FileFetch;)V
    //   45: astore 15
    //   47: aload_0
    //   48: getfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   51: ifne +279 -> 330
    //   54: aconst_null
    //   55: astore 8
    //   57: aconst_null
    //   58: astore 10
    //   60: aconst_null
    //   61: astore 12
    //   63: aconst_null
    //   64: astore 13
    //   66: aconst_null
    //   67: astore 14
    //   69: aconst_null
    //   70: astore 11
    //   72: aconst_null
    //   73: astore 7
    //   75: aload 12
    //   77: astore 9
    //   79: aload 13
    //   81: astore 6
    //   83: new 57	org/apache/http/client/methods/HttpGet
    //   86: dup
    //   87: aload_0
    //   88: getfield 28	com/alipay/sdk/util/FileFetch:a	Ljava/lang/String;
    //   91: invokespecial 60	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   94: astore 16
    //   96: aload 12
    //   98: astore 9
    //   100: aload 13
    //   102: astore 6
    //   104: new 62	org/apache/http/impl/client/DefaultHttpClient
    //   107: dup
    //   108: invokespecial 63	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   111: astore 17
    //   113: aload 12
    //   115: astore 9
    //   117: aload 13
    //   119: astore 6
    //   121: aload_0
    //   122: getfield 32	com/alipay/sdk/util/FileFetch:c	Lcom/alipay/sdk/util/FileDownloader;
    //   125: invokevirtual 52	com/alipay/sdk/util/FileDownloader:a	()Z
    //   128: ifeq +49 -> 177
    //   131: aload 12
    //   133: astore 9
    //   135: aload 13
    //   137: astore 6
    //   139: aload 16
    //   141: ldc 65
    //   143: new 67	java/lang/StringBuilder
    //   146: dup
    //   147: ldc 69
    //   149: invokespecial 70	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   152: aload_0
    //   153: getfield 37	com/alipay/sdk/util/FileFetch:e	J
    //   156: invokevirtual 74	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   159: ldc 76
    //   161: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: aload_0
    //   165: getfield 40	com/alipay/sdk/util/FileFetch:f	J
    //   168: invokevirtual 74	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   171: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: invokevirtual 87	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   177: aload 12
    //   179: astore 9
    //   181: aload 13
    //   183: astore 6
    //   185: aload 17
    //   187: aload 16
    //   189: invokeinterface 93 2 0
    //   194: astore 16
    //   196: aload 12
    //   198: astore 9
    //   200: aload 13
    //   202: astore 6
    //   204: aload 16
    //   206: invokeinterface 99 1 0
    //   211: invokeinterface 105 1 0
    //   216: istore_2
    //   217: iload_2
    //   218: tableswitch	default:+46->264, 200:+118->336, 201:+118->336, 202:+118->336, 203:+118->336, 204:+118->336, 205:+118->336, 206:+118->336, 207:+118->336
    //   264: aload 12
    //   266: astore 9
    //   268: aload 13
    //   270: astore 6
    //   272: iload_2
    //   273: istore_1
    //   274: aload 14
    //   276: astore 10
    //   278: aload 11
    //   280: astore 8
    //   282: aload_0
    //   283: iconst_1
    //   284: putfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   287: aload 7
    //   289: astore 9
    //   291: aload 7
    //   293: astore 6
    //   295: iload_2
    //   296: istore_1
    //   297: aload 7
    //   299: astore 10
    //   301: aload 7
    //   303: astore 8
    //   305: aload_0
    //   306: getfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   309: istore 5
    //   311: aload 7
    //   313: astore 8
    //   315: iload 5
    //   317: ifeq +112 -> 429
    //   320: aload 7
    //   322: ifnull +8 -> 330
    //   325: aload 7
    //   327: invokevirtual 110	java/io/InputStream:close	()V
    //   330: aload 15
    //   332: invokevirtual 112	com/alipay/sdk/util/FileFetch$FileAccess:a	()V
    //   335: return
    //   336: aload 12
    //   338: astore 9
    //   340: aload 13
    //   342: astore 6
    //   344: iload_2
    //   345: istore_1
    //   346: aload 14
    //   348: astore 10
    //   350: aload 11
    //   352: astore 8
    //   354: aload 16
    //   356: invokeinterface 116 1 0
    //   361: invokeinterface 122 1 0
    //   366: astore 7
    //   368: goto -81 -> 287
    //   371: astore 12
    //   373: iconst_0
    //   374: istore_2
    //   375: aload 8
    //   377: astore 7
    //   379: aload 7
    //   381: astore 11
    //   383: aload 7
    //   385: astore 9
    //   387: aload 7
    //   389: astore 6
    //   391: iload_2
    //   392: istore_1
    //   393: aload 7
    //   395: astore 10
    //   397: aload 12
    //   399: invokevirtual 125	java/io/IOException:printStackTrace	()V
    //   402: aload 7
    //   404: astore 11
    //   406: aload 7
    //   408: astore 9
    //   410: aload 7
    //   412: astore 6
    //   414: iload_2
    //   415: istore_1
    //   416: aload 7
    //   418: astore 10
    //   420: aload_0
    //   421: iconst_1
    //   422: putfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   425: aload 7
    //   427: astore 8
    //   429: aload 8
    //   431: ifnonnull +21 -> 452
    //   434: aload 8
    //   436: ifnull -389 -> 47
    //   439: aload 8
    //   441: invokevirtual 110	java/io/InputStream:close	()V
    //   444: goto -397 -> 47
    //   447: astore 6
    //   449: goto -402 -> 47
    //   452: aload 8
    //   454: astore 11
    //   456: aload 8
    //   458: astore 9
    //   460: aload 8
    //   462: astore 6
    //   464: iload_2
    //   465: istore_1
    //   466: aload 8
    //   468: astore 10
    //   470: sipush 1024
    //   473: newarray <illegal type>
    //   475: astore 7
    //   477: aload 8
    //   479: astore 11
    //   481: aload 8
    //   483: astore 9
    //   485: aload 8
    //   487: astore 6
    //   489: iload_2
    //   490: istore_1
    //   491: aload 8
    //   493: astore 10
    //   495: aload 8
    //   497: aload 7
    //   499: iconst_0
    //   500: aload 7
    //   502: arraylength
    //   503: invokevirtual 129	java/io/InputStream:read	([BII)I
    //   506: istore 4
    //   508: iload 4
    //   510: iconst_m1
    //   511: if_icmpeq +65 -> 576
    //   514: aload 8
    //   516: astore 11
    //   518: aload 8
    //   520: astore 9
    //   522: aload 8
    //   524: astore 6
    //   526: iload_2
    //   527: istore_1
    //   528: aload 8
    //   530: astore 10
    //   532: aload_0
    //   533: aload_0
    //   534: getfield 37	com/alipay/sdk/util/FileFetch:e	J
    //   537: aload 15
    //   539: aload 7
    //   541: iload 4
    //   543: invokevirtual 132	com/alipay/sdk/util/FileFetch$FileAccess:a	([BI)I
    //   546: i2l
    //   547: ladd
    //   548: putfield 37	com/alipay/sdk/util/FileFetch:e	J
    //   551: aload 8
    //   553: astore 11
    //   555: aload 8
    //   557: astore 9
    //   559: aload 8
    //   561: astore 6
    //   563: iload_2
    //   564: istore_1
    //   565: aload 8
    //   567: astore 10
    //   569: aload_0
    //   570: getfield 32	com/alipay/sdk/util/FileFetch:c	Lcom/alipay/sdk/util/FileDownloader;
    //   573: invokevirtual 134	com/alipay/sdk/util/FileDownloader:d	()V
    //   576: aload 8
    //   578: astore 11
    //   580: aload 8
    //   582: astore 9
    //   584: aload 8
    //   586: astore 6
    //   588: iload_2
    //   589: istore_1
    //   590: aload 8
    //   592: astore 10
    //   594: aload_0
    //   595: getfield 32	com/alipay/sdk/util/FileFetch:c	Lcom/alipay/sdk/util/FileDownloader;
    //   598: invokevirtual 52	com/alipay/sdk/util/FileDownloader:a	()Z
    //   601: ifeq +110 -> 711
    //   604: aload 8
    //   606: astore 11
    //   608: aload 8
    //   610: astore 9
    //   612: aload 8
    //   614: astore 6
    //   616: iload_2
    //   617: istore_1
    //   618: aload 8
    //   620: astore 10
    //   622: aload_0
    //   623: getfield 37	com/alipay/sdk/util/FileFetch:e	J
    //   626: aload_0
    //   627: getfield 40	com/alipay/sdk/util/FileFetch:f	J
    //   630: lcmp
    //   631: iflt +80 -> 711
    //   634: iconst_0
    //   635: istore_3
    //   636: aload 8
    //   638: astore 11
    //   640: aload 8
    //   642: astore 9
    //   644: aload 8
    //   646: astore 6
    //   648: iload_2
    //   649: istore_1
    //   650: aload 8
    //   652: astore 10
    //   654: aload_0
    //   655: getfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   658: ifne +58 -> 716
    //   661: iload_3
    //   662: ifeq +54 -> 716
    //   665: iconst_1
    //   666: istore_1
    //   667: goto +186 -> 853
    //   670: aload 8
    //   672: astore 11
    //   674: aload 8
    //   676: astore 9
    //   678: aload 8
    //   680: astore 6
    //   682: iload_2
    //   683: istore_1
    //   684: aload 8
    //   686: astore 10
    //   688: aload_0
    //   689: iconst_1
    //   690: putfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   693: aload 8
    //   695: ifnull -648 -> 47
    //   698: aload 8
    //   700: invokevirtual 110	java/io/InputStream:close	()V
    //   703: goto -656 -> 47
    //   706: astore 6
    //   708: goto -661 -> 47
    //   711: iconst_1
    //   712: istore_3
    //   713: goto -77 -> 636
    //   716: iconst_0
    //   717: istore_1
    //   718: goto +135 -> 853
    //   721: astore 6
    //   723: iconst_0
    //   724: istore_1
    //   725: iload_1
    //   726: ifne +12 -> 738
    //   729: aload 10
    //   731: astore 6
    //   733: aload_0
    //   734: iconst_1
    //   735: putfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   738: aload 10
    //   740: ifnull -693 -> 47
    //   743: aload 10
    //   745: invokevirtual 110	java/io/InputStream:close	()V
    //   748: goto -701 -> 47
    //   751: astore 6
    //   753: goto -706 -> 47
    //   756: astore 6
    //   758: aload 11
    //   760: astore 6
    //   762: aload_0
    //   763: iconst_1
    //   764: putfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   767: aload 11
    //   769: ifnull -722 -> 47
    //   772: aload 11
    //   774: invokevirtual 110	java/io/InputStream:close	()V
    //   777: goto -730 -> 47
    //   780: astore 6
    //   782: goto -735 -> 47
    //   785: astore 6
    //   787: aload 9
    //   789: astore 6
    //   791: aload_0
    //   792: iconst_1
    //   793: putfield 26	com/alipay/sdk/util/FileFetch:d	Z
    //   796: aload 9
    //   798: ifnull -751 -> 47
    //   801: aload 9
    //   803: invokevirtual 110	java/io/InputStream:close	()V
    //   806: goto -759 -> 47
    //   809: astore 6
    //   811: goto -764 -> 47
    //   814: astore 7
    //   816: aload 6
    //   818: ifnull +8 -> 826
    //   821: aload 6
    //   823: invokevirtual 110	java/io/InputStream:close	()V
    //   826: aload 7
    //   828: athrow
    //   829: astore 6
    //   831: goto -501 -> 330
    //   834: astore 6
    //   836: goto -10 -> 826
    //   839: astore 6
    //   841: goto -116 -> 725
    //   844: astore 12
    //   846: aload 8
    //   848: astore 7
    //   850: goto -471 -> 379
    //   853: iload 4
    //   855: iflt -185 -> 670
    //   858: iload_1
    //   859: ifne -382 -> 477
    //   862: goto -192 -> 670
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	865	0	this	FileFetch
    //   273	586	1	i	int
    //   216	467	2	j	int
    //   635	78	3	k	int
    //   506	348	4	m	int
    //   309	7	5	bool	boolean
    //   81	332	6	localObject1	Object
    //   447	1	6	localException1	Exception
    //   462	219	6	localObject2	Object
    //   706	1	6	localException2	Exception
    //   721	1	6	localSocketTimeoutException1	java.net.SocketTimeoutException
    //   731	1	6	localObject3	Object
    //   751	1	6	localException3	Exception
    //   756	1	6	localIOException1	IOException
    //   760	1	6	localObject4	Object
    //   780	1	6	localException4	Exception
    //   785	1	6	localException5	Exception
    //   789	1	6	localObject5	Object
    //   809	13	6	localException6	Exception
    //   829	1	6	localException7	Exception
    //   834	1	6	localException8	Exception
    //   839	1	6	localSocketTimeoutException2	java.net.SocketTimeoutException
    //   73	467	7	localObject6	Object
    //   814	13	7	localObject7	Object
    //   848	1	7	localObject8	Object
    //   55	792	8	localObject9	Object
    //   77	725	9	localObject10	Object
    //   58	686	10	localObject11	Object
    //   70	703	11	localObject12	Object
    //   61	276	12	localObject13	Object
    //   371	27	12	localIOException2	IOException
    //   844	1	12	localIOException3	IOException
    //   64	277	13	localObject14	Object
    //   67	280	14	localObject15	Object
    //   45	493	15	localFileAccess	FileAccess
    //   94	261	16	localObject16	Object
    //   111	75	17	localDefaultHttpClient	org.apache.http.impl.client.DefaultHttpClient
    // Exception table:
    //   from	to	target	type
    //   83	96	371	java/io/IOException
    //   104	113	371	java/io/IOException
    //   121	131	371	java/io/IOException
    //   139	177	371	java/io/IOException
    //   185	196	371	java/io/IOException
    //   204	217	371	java/io/IOException
    //   439	444	447	java/lang/Exception
    //   698	703	706	java/lang/Exception
    //   83	96	721	java/net/SocketTimeoutException
    //   104	113	721	java/net/SocketTimeoutException
    //   121	131	721	java/net/SocketTimeoutException
    //   139	177	721	java/net/SocketTimeoutException
    //   185	196	721	java/net/SocketTimeoutException
    //   204	217	721	java/net/SocketTimeoutException
    //   743	748	751	java/lang/Exception
    //   397	402	756	java/io/IOException
    //   420	425	756	java/io/IOException
    //   470	477	756	java/io/IOException
    //   495	508	756	java/io/IOException
    //   532	551	756	java/io/IOException
    //   569	576	756	java/io/IOException
    //   594	604	756	java/io/IOException
    //   622	634	756	java/io/IOException
    //   654	661	756	java/io/IOException
    //   688	693	756	java/io/IOException
    //   772	777	780	java/lang/Exception
    //   83	96	785	java/lang/Exception
    //   104	113	785	java/lang/Exception
    //   121	131	785	java/lang/Exception
    //   139	177	785	java/lang/Exception
    //   185	196	785	java/lang/Exception
    //   204	217	785	java/lang/Exception
    //   282	287	785	java/lang/Exception
    //   305	311	785	java/lang/Exception
    //   354	368	785	java/lang/Exception
    //   397	402	785	java/lang/Exception
    //   420	425	785	java/lang/Exception
    //   470	477	785	java/lang/Exception
    //   495	508	785	java/lang/Exception
    //   532	551	785	java/lang/Exception
    //   569	576	785	java/lang/Exception
    //   594	604	785	java/lang/Exception
    //   622	634	785	java/lang/Exception
    //   654	661	785	java/lang/Exception
    //   688	693	785	java/lang/Exception
    //   801	806	809	java/lang/Exception
    //   83	96	814	finally
    //   104	113	814	finally
    //   121	131	814	finally
    //   139	177	814	finally
    //   185	196	814	finally
    //   204	217	814	finally
    //   282	287	814	finally
    //   305	311	814	finally
    //   354	368	814	finally
    //   397	402	814	finally
    //   420	425	814	finally
    //   470	477	814	finally
    //   495	508	814	finally
    //   532	551	814	finally
    //   569	576	814	finally
    //   594	604	814	finally
    //   622	634	814	finally
    //   654	661	814	finally
    //   688	693	814	finally
    //   733	738	814	finally
    //   762	767	814	finally
    //   791	796	814	finally
    //   325	330	829	java/lang/Exception
    //   821	826	834	java/lang/Exception
    //   282	287	839	java/net/SocketTimeoutException
    //   305	311	839	java/net/SocketTimeoutException
    //   354	368	839	java/net/SocketTimeoutException
    //   397	402	839	java/net/SocketTimeoutException
    //   420	425	839	java/net/SocketTimeoutException
    //   470	477	839	java/net/SocketTimeoutException
    //   495	508	839	java/net/SocketTimeoutException
    //   532	551	839	java/net/SocketTimeoutException
    //   569	576	839	java/net/SocketTimeoutException
    //   594	604	839	java/net/SocketTimeoutException
    //   622	634	839	java/net/SocketTimeoutException
    //   654	661	839	java/net/SocketTimeoutException
    //   688	693	839	java/net/SocketTimeoutException
    //   282	287	844	java/io/IOException
    //   305	311	844	java/io/IOException
    //   354	368	844	java/io/IOException
  }
  
  final class FileAccess
  {
    private FileOutputStream b;
    
    public FileAccess()
    {
      try
      {
        this.b = new FileOutputStream(FileFetch.a(FileFetch.this), true);
        return;
      }
      catch (FileNotFoundException this$1)
      {
        FileFetch.this.printStackTrace();
      }
    }
    
    public final int a(byte[] paramArrayOfByte, int paramInt)
      throws IOException
    {
      try
      {
        this.b.write(paramArrayOfByte, 0, paramInt);
        return paramInt;
      }
      finally
      {
        paramArrayOfByte = finally;
        throw paramArrayOfByte;
      }
    }
    
    public final void a()
    {
      try
      {
        this.b.close();
        return;
      }
      catch (Exception localException) {}
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/util/FileFetch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */