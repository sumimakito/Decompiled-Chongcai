package cn.apppark.mcd.util;

public class NetworkIO
{
  private static final int GUI_STOP_NOTIFIER = 4097;
  private static final int GUI_THREADING_NOTIFIER = 4098;
  private static final int GUI_TOTALSIZE_NOTIFIER = 4099;
  
  /* Error */
  public static void downFilesToSdcard(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: new 24	java/net/URL
    //   9: dup
    //   10: aload_0
    //   11: invokespecial 27	java/net/URL:<init>	(Ljava/lang/String;)V
    //   14: invokevirtual 31	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   17: astore_3
    //   18: aload_3
    //   19: invokevirtual 36	java/net/URLConnection:connect	()V
    //   22: aload_3
    //   23: invokevirtual 40	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   26: astore_3
    //   27: aload_0
    //   28: aload_0
    //   29: ldc 42
    //   31: invokevirtual 48	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   34: iconst_1
    //   35: iadd
    //   36: aload_0
    //   37: invokevirtual 52	java/lang/String:length	()I
    //   40: invokevirtual 56	java/lang/String:substring	(II)Ljava/lang/String;
    //   43: astore 6
    //   45: aload_1
    //   46: ldc 58
    //   48: invokevirtual 62	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   51: ifeq +14 -> 65
    //   54: aload_1
    //   55: astore_0
    //   56: aload_1
    //   57: ldc 42
    //   59: invokevirtual 62	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   62: ifne +24 -> 86
    //   65: new 64	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   72: aload_1
    //   73: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: getstatic 75	java/io/File:separator	Ljava/lang/String;
    //   79: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: astore_0
    //   86: new 71	java/io/File
    //   89: dup
    //   90: new 64	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   97: aload_0
    //   98: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload 6
    //   103: ldc 81
    //   105: invokestatic 87	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   108: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   114: invokespecial 88	java/io/File:<init>	(Ljava/lang/String;)V
    //   117: astore_0
    //   118: new 71	java/io/File
    //   121: dup
    //   122: aload_0
    //   123: invokevirtual 91	java/io/File:getParent	()Ljava/lang/String;
    //   126: invokespecial 88	java/io/File:<init>	(Ljava/lang/String;)V
    //   129: astore_1
    //   130: aload_1
    //   131: invokevirtual 95	java/io/File:exists	()Z
    //   134: ifne +8 -> 142
    //   137: aload_1
    //   138: invokevirtual 98	java/io/File:mkdirs	()Z
    //   141: pop
    //   142: new 100	java/io/FileOutputStream
    //   145: dup
    //   146: aload_0
    //   147: invokespecial 103	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   150: astore_0
    //   151: sipush 4096
    //   154: newarray <illegal type>
    //   156: astore_1
    //   157: aload_3
    //   158: aload_1
    //   159: invokevirtual 109	java/io/InputStream:read	([B)I
    //   162: istore_2
    //   163: iload_2
    //   164: iconst_m1
    //   165: if_icmpeq +45 -> 210
    //   168: aload_0
    //   169: aload_1
    //   170: iconst_0
    //   171: iload_2
    //   172: invokevirtual 113	java/io/FileOutputStream:write	([BII)V
    //   175: goto -18 -> 157
    //   178: astore 4
    //   180: aload_0
    //   181: astore_1
    //   182: aload_3
    //   183: astore_0
    //   184: aload 4
    //   186: astore_3
    //   187: aload_3
    //   188: athrow
    //   189: astore 4
    //   191: aload_0
    //   192: astore_3
    //   193: aload 4
    //   195: astore_0
    //   196: aload_3
    //   197: invokevirtual 116	java/io/InputStream:close	()V
    //   200: aload_1
    //   201: ifnull +7 -> 208
    //   204: aload_1
    //   205: invokevirtual 117	java/io/FileOutputStream:close	()V
    //   208: aload_0
    //   209: athrow
    //   210: aload_0
    //   211: invokevirtual 120	java/io/FileOutputStream:flush	()V
    //   214: aload_0
    //   215: invokevirtual 117	java/io/FileOutputStream:close	()V
    //   218: aload_3
    //   219: invokevirtual 116	java/io/InputStream:close	()V
    //   222: aload_3
    //   223: invokevirtual 116	java/io/InputStream:close	()V
    //   226: aload_0
    //   227: invokevirtual 117	java/io/FileOutputStream:close	()V
    //   230: return
    //   231: astore_0
    //   232: aload_0
    //   233: invokevirtual 123	java/lang/Exception:printStackTrace	()V
    //   236: return
    //   237: astore_1
    //   238: aload_1
    //   239: invokevirtual 123	java/lang/Exception:printStackTrace	()V
    //   242: goto -34 -> 208
    //   245: astore_1
    //   246: goto -20 -> 226
    //   249: astore_3
    //   250: goto -50 -> 200
    //   253: astore_0
    //   254: aconst_null
    //   255: astore_3
    //   256: aload 5
    //   258: astore_1
    //   259: goto -63 -> 196
    //   262: astore_0
    //   263: aload 5
    //   265: astore_1
    //   266: goto -70 -> 196
    //   269: astore 4
    //   271: aload_0
    //   272: astore_1
    //   273: aload 4
    //   275: astore_0
    //   276: goto -80 -> 196
    //   279: astore_3
    //   280: aconst_null
    //   281: astore_0
    //   282: aload 4
    //   284: astore_1
    //   285: goto -98 -> 187
    //   288: astore_1
    //   289: aload_3
    //   290: astore_0
    //   291: aload_1
    //   292: astore_3
    //   293: aload 4
    //   295: astore_1
    //   296: goto -109 -> 187
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	299	0	paramString1	String
    //   0	299	1	paramString2	String
    //   162	10	2	i	int
    //   17	206	3	localObject1	Object
    //   249	1	3	localException	Exception
    //   255	1	3	localObject2	Object
    //   279	11	3	localIOException1	java.io.IOException
    //   292	1	3	str1	String
    //   4	1	4	localObject3	Object
    //   178	7	4	localIOException2	java.io.IOException
    //   189	5	4	localObject4	Object
    //   269	25	4	localObject5	Object
    //   1	263	5	localObject6	Object
    //   43	59	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   151	157	178	java/io/IOException
    //   157	163	178	java/io/IOException
    //   168	175	178	java/io/IOException
    //   210	222	178	java/io/IOException
    //   187	189	189	finally
    //   226	230	231	java/lang/Exception
    //   204	208	237	java/lang/Exception
    //   222	226	245	java/lang/Exception
    //   196	200	249	java/lang/Exception
    //   6	27	253	finally
    //   27	54	262	finally
    //   56	65	262	finally
    //   65	86	262	finally
    //   86	142	262	finally
    //   142	151	262	finally
    //   151	157	269	finally
    //   157	163	269	finally
    //   168	175	269	finally
    //   210	222	269	finally
    //   6	27	279	java/io/IOException
    //   27	54	288	java/io/IOException
    //   56	65	288	java/io/IOException
    //   65	86	288	java/io/IOException
    //   86	142	288	java/io/IOException
    //   142	151	288	java/io/IOException
  }
  
  /* Error */
  public static void downSingleFileToSdcard(String paramString1, String paramString2, android.os.Handler paramHandler)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: iconst_0
    //   4: istore_3
    //   5: new 24	java/net/URL
    //   8: dup
    //   9: aload_0
    //   10: invokespecial 27	java/net/URL:<init>	(Ljava/lang/String;)V
    //   13: invokevirtual 31	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   16: astore 7
    //   18: aload 7
    //   20: invokevirtual 36	java/net/URLConnection:connect	()V
    //   23: aload 7
    //   25: invokevirtual 40	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   28: astore 5
    //   30: aload 7
    //   32: invokevirtual 128	java/net/URLConnection:getContentLength	()I
    //   35: istore 4
    //   37: new 130	android/os/Message
    //   40: dup
    //   41: invokespecial 131	android/os/Message:<init>	()V
    //   44: astore 7
    //   46: aload 7
    //   48: sipush 4099
    //   51: putfield 134	android/os/Message:what	I
    //   54: aload 7
    //   56: iload 4
    //   58: sipush 1024
    //   61: idiv
    //   62: putfield 137	android/os/Message:arg1	I
    //   65: aload_2
    //   66: aload 7
    //   68: invokevirtual 143	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   71: pop
    //   72: aload_0
    //   73: aload_0
    //   74: ldc 42
    //   76: invokevirtual 48	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   79: iconst_1
    //   80: iadd
    //   81: aload_0
    //   82: invokevirtual 52	java/lang/String:length	()I
    //   85: invokevirtual 56	java/lang/String:substring	(II)Ljava/lang/String;
    //   88: astore 7
    //   90: new 64	java/lang/StringBuilder
    //   93: dup
    //   94: ldc -111
    //   96: invokespecial 146	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   99: aload 7
    //   101: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: astore_0
    //   108: new 71	java/io/File
    //   111: dup
    //   112: new 64	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   119: aload_1
    //   120: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: aload 7
    //   125: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokespecial 88	java/io/File:<init>	(Ljava/lang/String;)V
    //   134: astore 7
    //   136: new 71	java/io/File
    //   139: dup
    //   140: new 64	java/lang/StringBuilder
    //   143: dup
    //   144: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   147: aload_1
    //   148: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload_0
    //   152: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokespecial 88	java/io/File:<init>	(Ljava/lang/String;)V
    //   161: astore_1
    //   162: new 71	java/io/File
    //   165: dup
    //   166: aload_1
    //   167: invokevirtual 91	java/io/File:getParent	()Ljava/lang/String;
    //   170: invokespecial 88	java/io/File:<init>	(Ljava/lang/String;)V
    //   173: astore_0
    //   174: aload_0
    //   175: invokevirtual 95	java/io/File:exists	()Z
    //   178: ifne +8 -> 186
    //   181: aload_0
    //   182: invokevirtual 98	java/io/File:mkdirs	()Z
    //   185: pop
    //   186: new 100	java/io/FileOutputStream
    //   189: dup
    //   190: aload_1
    //   191: invokespecial 103	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   194: astore_0
    //   195: sipush 1024
    //   198: newarray <illegal type>
    //   200: astore 6
    //   202: aload 5
    //   204: aload 6
    //   206: invokevirtual 109	java/io/InputStream:read	([B)I
    //   209: istore 4
    //   211: iload 4
    //   213: iconst_m1
    //   214: if_icmpeq +74 -> 288
    //   217: iload_3
    //   218: iload 4
    //   220: iadd
    //   221: istore_3
    //   222: new 130	android/os/Message
    //   225: dup
    //   226: invokespecial 131	android/os/Message:<init>	()V
    //   229: astore 8
    //   231: aload 8
    //   233: sipush 4098
    //   236: putfield 134	android/os/Message:what	I
    //   239: aload 8
    //   241: iload_3
    //   242: sipush 1024
    //   245: idiv
    //   246: putfield 149	android/os/Message:arg2	I
    //   249: aload_2
    //   250: aload 8
    //   252: invokevirtual 143	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   255: pop
    //   256: aload_0
    //   257: aload 6
    //   259: iconst_0
    //   260: iload 4
    //   262: invokevirtual 113	java/io/FileOutputStream:write	([BII)V
    //   265: goto -63 -> 202
    //   268: astore 6
    //   270: aload_0
    //   271: astore_2
    //   272: aload 5
    //   274: astore_1
    //   275: aload 6
    //   277: astore_0
    //   278: aload_1
    //   279: invokevirtual 116	java/io/InputStream:close	()V
    //   282: aload_2
    //   283: invokevirtual 117	java/io/FileOutputStream:close	()V
    //   286: aload_0
    //   287: athrow
    //   288: aload_1
    //   289: aload 7
    //   291: invokevirtual 153	java/io/File:renameTo	(Ljava/io/File;)Z
    //   294: pop
    //   295: new 130	android/os/Message
    //   298: dup
    //   299: invokespecial 131	android/os/Message:<init>	()V
    //   302: astore_1
    //   303: aload_1
    //   304: sipush 4097
    //   307: putfield 134	android/os/Message:what	I
    //   310: aload_2
    //   311: aload_1
    //   312: invokevirtual 143	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   315: pop
    //   316: aload_0
    //   317: invokevirtual 120	java/io/FileOutputStream:flush	()V
    //   320: aload_0
    //   321: invokevirtual 117	java/io/FileOutputStream:close	()V
    //   324: aload 5
    //   326: invokevirtual 116	java/io/InputStream:close	()V
    //   329: aload 5
    //   331: invokevirtual 116	java/io/InputStream:close	()V
    //   334: aload_0
    //   335: invokevirtual 117	java/io/FileOutputStream:close	()V
    //   338: return
    //   339: astore_1
    //   340: aload_1
    //   341: invokevirtual 123	java/lang/Exception:printStackTrace	()V
    //   344: goto -10 -> 334
    //   347: astore_0
    //   348: aload_0
    //   349: invokevirtual 123	java/lang/Exception:printStackTrace	()V
    //   352: return
    //   353: astore_1
    //   354: aload_1
    //   355: invokevirtual 123	java/lang/Exception:printStackTrace	()V
    //   358: goto -76 -> 282
    //   361: astore_1
    //   362: aload_1
    //   363: invokevirtual 123	java/lang/Exception:printStackTrace	()V
    //   366: goto -80 -> 286
    //   369: astore_0
    //   370: aconst_null
    //   371: astore_1
    //   372: aload 6
    //   374: astore_2
    //   375: goto -97 -> 278
    //   378: astore_0
    //   379: aload 5
    //   381: astore_1
    //   382: aload 6
    //   384: astore_2
    //   385: goto -107 -> 278
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	388	0	paramString1	String
    //   0	388	1	paramString2	String
    //   0	388	2	paramHandler	android.os.Handler
    //   4	242	3	i	int
    //   35	226	4	j	int
    //   28	352	5	localInputStream	java.io.InputStream
    //   1	257	6	arrayOfByte	byte[]
    //   268	115	6	localObject1	Object
    //   16	274	7	localObject2	Object
    //   229	22	8	localMessage	android.os.Message
    // Exception table:
    //   from	to	target	type
    //   195	202	268	finally
    //   202	211	268	finally
    //   222	265	268	finally
    //   288	329	268	finally
    //   329	334	339	java/lang/Exception
    //   334	338	347	java/lang/Exception
    //   278	282	353	java/lang/Exception
    //   282	286	361	java/lang/Exception
    //   5	30	369	finally
    //   30	186	378	finally
    //   186	195	378	finally
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/NetworkIO.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */