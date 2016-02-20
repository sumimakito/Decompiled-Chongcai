package cn.apppark.mcd.util.file;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class AssetsIO
{
  private AssetManager am;
  private Context context;
  
  public AssetsIO(Context paramContext)
  {
    this.context = paramContext;
    this.am = paramContext.getAssets();
  }
  
  /* Error */
  public void copyDataSdcard(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: sipush 4096
    //   9: newarray <illegal type>
    //   11: astore 6
    //   13: new 30	java/io/File
    //   16: dup
    //   17: new 32	java/lang/StringBuilder
    //   20: dup
    //   21: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   24: aload_1
    //   25: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_2
    //   29: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokespecial 44	java/io/File:<init>	(Ljava/lang/String;)V
    //   38: astore 7
    //   40: new 30	java/io/File
    //   43: dup
    //   44: aload 7
    //   46: invokevirtual 47	java/io/File:getParent	()Ljava/lang/String;
    //   49: invokespecial 44	java/io/File:<init>	(Ljava/lang/String;)V
    //   52: astore_1
    //   53: aload_1
    //   54: invokevirtual 51	java/io/File:exists	()Z
    //   57: ifne +8 -> 65
    //   60: aload_1
    //   61: invokevirtual 54	java/io/File:mkdirs	()Z
    //   64: pop
    //   65: aload_0
    //   66: getfield 23	cn/apppark/mcd/util/file/AssetsIO:am	Landroid/content/res/AssetManager;
    //   69: aload_2
    //   70: invokevirtual 60	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   73: astore_1
    //   74: new 62	java/io/FileOutputStream
    //   77: dup
    //   78: aload 7
    //   80: invokespecial 65	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   83: astore_2
    //   84: aload_1
    //   85: aload 6
    //   87: invokevirtual 71	java/io/InputStream:read	([B)I
    //   90: istore_3
    //   91: iload_3
    //   92: iconst_m1
    //   93: if_icmpeq +36 -> 129
    //   96: aload_2
    //   97: aload 6
    //   99: iconst_0
    //   100: iload_3
    //   101: invokevirtual 75	java/io/FileOutputStream:write	([BII)V
    //   104: goto -20 -> 84
    //   107: astore 5
    //   109: aload_2
    //   110: astore 4
    //   112: aload 5
    //   114: astore_2
    //   115: aload_2
    //   116: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   119: aload_1
    //   120: invokevirtual 81	java/io/InputStream:close	()V
    //   123: aload 4
    //   125: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   128: return
    //   129: aload_2
    //   130: invokevirtual 85	java/io/FileOutputStream:flush	()V
    //   133: aload_2
    //   134: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   137: aload_1
    //   138: invokevirtual 81	java/io/InputStream:close	()V
    //   141: aload_1
    //   142: invokevirtual 81	java/io/InputStream:close	()V
    //   145: aload_2
    //   146: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   149: return
    //   150: astore_1
    //   151: aload_1
    //   152: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   155: return
    //   156: astore_1
    //   157: aload_1
    //   158: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   161: goto -16 -> 145
    //   164: astore_1
    //   165: aload_1
    //   166: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   169: goto -46 -> 123
    //   172: astore_1
    //   173: aload_1
    //   174: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   177: return
    //   178: astore_2
    //   179: aconst_null
    //   180: astore_1
    //   181: aload 5
    //   183: astore 4
    //   185: aload_1
    //   186: invokevirtual 81	java/io/InputStream:close	()V
    //   189: aload 4
    //   191: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   194: aload_2
    //   195: athrow
    //   196: astore_1
    //   197: aload_1
    //   198: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   201: goto -12 -> 189
    //   204: astore_1
    //   205: aload_1
    //   206: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   209: goto -15 -> 194
    //   212: astore_2
    //   213: aload 5
    //   215: astore 4
    //   217: goto -32 -> 185
    //   220: astore 5
    //   222: aload_2
    //   223: astore 4
    //   225: aload 5
    //   227: astore_2
    //   228: goto -43 -> 185
    //   231: astore_2
    //   232: goto -47 -> 185
    //   235: astore_2
    //   236: aconst_null
    //   237: astore_1
    //   238: goto -123 -> 115
    //   241: astore_2
    //   242: goto -127 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	245	0	this	AssetsIO
    //   0	245	1	paramString1	String
    //   0	245	2	paramString2	String
    //   90	11	3	i	int
    //   4	220	4	localObject1	Object
    //   1	1	5	localObject2	Object
    //   107	107	5	localException	Exception
    //   220	6	5	localObject3	Object
    //   11	87	6	arrayOfByte	byte[]
    //   38	41	7	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   84	91	107	java/lang/Exception
    //   96	104	107	java/lang/Exception
    //   129	141	107	java/lang/Exception
    //   145	149	150	java/lang/Exception
    //   141	145	156	java/lang/Exception
    //   119	123	164	java/lang/Exception
    //   123	128	172	java/lang/Exception
    //   6	65	178	finally
    //   65	74	178	finally
    //   185	189	196	java/lang/Exception
    //   189	194	204	java/lang/Exception
    //   74	84	212	finally
    //   84	91	220	finally
    //   96	104	220	finally
    //   129	141	220	finally
    //   115	119	231	finally
    //   6	65	235	java/lang/Exception
    //   65	74	235	java/lang/Exception
    //   74	84	241	java/lang/Exception
  }
  
  /* Error */
  public void copyToFiles(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: sipush 1024
    //   6: newarray <illegal type>
    //   8: astore 5
    //   10: new 30	java/io/File
    //   13: dup
    //   14: new 32	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   21: aload_0
    //   22: getfield 15	cn/apppark/mcd/util/file/AssetsIO:context	Landroid/content/Context;
    //   25: invokevirtual 90	android/content/Context:getFilesDir	()Ljava/io/File;
    //   28: invokevirtual 93	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   31: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: ldc 95
    //   36: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload_1
    //   40: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokespecial 44	java/io/File:<init>	(Ljava/lang/String;)V
    //   49: astore_3
    //   50: new 30	java/io/File
    //   53: dup
    //   54: aload_3
    //   55: invokevirtual 47	java/io/File:getParent	()Ljava/lang/String;
    //   58: invokespecial 44	java/io/File:<init>	(Ljava/lang/String;)V
    //   61: astore 6
    //   63: aload 6
    //   65: invokevirtual 51	java/io/File:exists	()Z
    //   68: ifne +9 -> 77
    //   71: aload 6
    //   73: invokevirtual 54	java/io/File:mkdirs	()Z
    //   76: pop
    //   77: aload_0
    //   78: getfield 23	cn/apppark/mcd/util/file/AssetsIO:am	Landroid/content/res/AssetManager;
    //   81: new 32	java/lang/StringBuilder
    //   84: dup
    //   85: ldc 97
    //   87: invokespecial 98	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload_1
    //   91: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokevirtual 60	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   100: astore_1
    //   101: new 62	java/io/FileOutputStream
    //   104: dup
    //   105: aload_3
    //   106: invokespecial 65	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   109: astore_3
    //   110: aload_1
    //   111: aload 5
    //   113: invokevirtual 71	java/io/InputStream:read	([B)I
    //   116: istore_2
    //   117: iload_2
    //   118: iconst_m1
    //   119: if_icmpeq +35 -> 154
    //   122: aload_3
    //   123: aload 5
    //   125: iconst_0
    //   126: iload_2
    //   127: invokevirtual 75	java/io/FileOutputStream:write	([BII)V
    //   130: goto -20 -> 110
    //   133: astore 5
    //   135: aload_3
    //   136: astore 4
    //   138: aload_1
    //   139: astore_3
    //   140: aload 5
    //   142: astore_1
    //   143: aload_3
    //   144: invokevirtual 81	java/io/InputStream:close	()V
    //   147: aload 4
    //   149: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   152: aload_1
    //   153: athrow
    //   154: aload_3
    //   155: invokevirtual 85	java/io/FileOutputStream:flush	()V
    //   158: aload_3
    //   159: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   162: aload_1
    //   163: invokevirtual 81	java/io/InputStream:close	()V
    //   166: aload_1
    //   167: invokevirtual 81	java/io/InputStream:close	()V
    //   170: aload_3
    //   171: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   174: return
    //   175: astore_1
    //   176: goto -6 -> 170
    //   179: astore_1
    //   180: return
    //   181: astore_3
    //   182: goto -35 -> 147
    //   185: astore_3
    //   186: goto -34 -> 152
    //   189: astore_1
    //   190: aconst_null
    //   191: astore_3
    //   192: goto -49 -> 143
    //   195: astore 5
    //   197: aload_1
    //   198: astore_3
    //   199: aload 5
    //   201: astore_1
    //   202: goto -59 -> 143
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	this	AssetsIO
    //   0	205	1	paramString	String
    //   116	11	2	i	int
    //   49	122	3	localObject1	Object
    //   181	1	3	localException1	Exception
    //   185	1	3	localException2	Exception
    //   191	8	3	str	String
    //   1	147	4	localObject2	Object
    //   8	116	5	arrayOfByte	byte[]
    //   133	8	5	localObject3	Object
    //   195	5	5	localObject4	Object
    //   61	11	6	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   110	117	133	finally
    //   122	130	133	finally
    //   154	166	133	finally
    //   166	170	175	java/lang/Exception
    //   170	174	179	java/lang/Exception
    //   143	147	181	java/lang/Exception
    //   147	152	185	java/lang/Exception
    //   3	77	189	finally
    //   77	101	189	finally
    //   101	110	195	finally
  }
  
  /* Error */
  public void copyToSdcard(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: sipush 4096
    //   9: newarray <illegal type>
    //   11: astore 6
    //   13: new 30	java/io/File
    //   16: dup
    //   17: new 32	java/lang/StringBuilder
    //   20: dup
    //   21: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   24: aload_1
    //   25: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_2
    //   29: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokespecial 44	java/io/File:<init>	(Ljava/lang/String;)V
    //   38: astore 7
    //   40: new 30	java/io/File
    //   43: dup
    //   44: aload 7
    //   46: invokevirtual 47	java/io/File:getParent	()Ljava/lang/String;
    //   49: invokespecial 44	java/io/File:<init>	(Ljava/lang/String;)V
    //   52: astore_1
    //   53: aload_1
    //   54: invokevirtual 51	java/io/File:exists	()Z
    //   57: ifne +8 -> 65
    //   60: aload_1
    //   61: invokevirtual 54	java/io/File:mkdirs	()Z
    //   64: pop
    //   65: aload_0
    //   66: getfield 23	cn/apppark/mcd/util/file/AssetsIO:am	Landroid/content/res/AssetManager;
    //   69: new 32	java/lang/StringBuilder
    //   72: dup
    //   73: ldc 97
    //   75: invokespecial 98	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: aload_2
    //   79: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokevirtual 60	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   88: astore_1
    //   89: new 62	java/io/FileOutputStream
    //   92: dup
    //   93: aload 7
    //   95: invokespecial 65	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   98: astore_2
    //   99: aload_1
    //   100: aload 6
    //   102: invokevirtual 71	java/io/InputStream:read	([B)I
    //   105: istore_3
    //   106: iload_3
    //   107: iconst_m1
    //   108: if_icmpeq +36 -> 144
    //   111: aload_2
    //   112: aload 6
    //   114: iconst_0
    //   115: iload_3
    //   116: invokevirtual 75	java/io/FileOutputStream:write	([BII)V
    //   119: goto -20 -> 99
    //   122: astore 5
    //   124: aload_2
    //   125: astore 4
    //   127: aload 5
    //   129: astore_2
    //   130: aload_2
    //   131: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   134: aload_1
    //   135: invokevirtual 81	java/io/InputStream:close	()V
    //   138: aload 4
    //   140: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   143: return
    //   144: aload_2
    //   145: invokevirtual 85	java/io/FileOutputStream:flush	()V
    //   148: aload_2
    //   149: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   152: aload_1
    //   153: invokevirtual 81	java/io/InputStream:close	()V
    //   156: aload_1
    //   157: invokevirtual 81	java/io/InputStream:close	()V
    //   160: aload_2
    //   161: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   164: return
    //   165: astore_1
    //   166: aload_1
    //   167: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   170: return
    //   171: astore_1
    //   172: aload_1
    //   173: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   176: goto -16 -> 160
    //   179: astore_1
    //   180: aload_1
    //   181: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   184: goto -46 -> 138
    //   187: astore_1
    //   188: aload_1
    //   189: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   192: return
    //   193: astore_2
    //   194: aconst_null
    //   195: astore_1
    //   196: aload 5
    //   198: astore 4
    //   200: aload_1
    //   201: invokevirtual 81	java/io/InputStream:close	()V
    //   204: aload 4
    //   206: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   209: aload_2
    //   210: athrow
    //   211: astore_1
    //   212: aload_1
    //   213: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   216: goto -12 -> 204
    //   219: astore_1
    //   220: aload_1
    //   221: invokevirtual 78	java/lang/Exception:printStackTrace	()V
    //   224: goto -15 -> 209
    //   227: astore_2
    //   228: aload 5
    //   230: astore 4
    //   232: goto -32 -> 200
    //   235: astore 5
    //   237: aload_2
    //   238: astore 4
    //   240: aload 5
    //   242: astore_2
    //   243: goto -43 -> 200
    //   246: astore_2
    //   247: goto -47 -> 200
    //   250: astore_2
    //   251: aconst_null
    //   252: astore_1
    //   253: goto -123 -> 130
    //   256: astore_2
    //   257: goto -127 -> 130
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	260	0	this	AssetsIO
    //   0	260	1	paramString1	String
    //   0	260	2	paramString2	String
    //   105	11	3	i	int
    //   4	235	4	localObject1	Object
    //   1	1	5	localObject2	Object
    //   122	107	5	localException	Exception
    //   235	6	5	localObject3	Object
    //   11	102	6	arrayOfByte	byte[]
    //   38	56	7	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   99	106	122	java/lang/Exception
    //   111	119	122	java/lang/Exception
    //   144	156	122	java/lang/Exception
    //   160	164	165	java/lang/Exception
    //   156	160	171	java/lang/Exception
    //   134	138	179	java/lang/Exception
    //   138	143	187	java/lang/Exception
    //   6	65	193	finally
    //   65	89	193	finally
    //   200	204	211	java/lang/Exception
    //   204	209	219	java/lang/Exception
    //   89	99	227	finally
    //   99	106	235	finally
    //   111	119	235	finally
    //   144	156	235	finally
    //   130	134	246	finally
    //   6	65	250	java/lang/Exception
    //   65	89	250	java/lang/Exception
    //   89	99	256	java/lang/Exception
  }
  
  public String[] getAssetsAllFilesList()
  {
    return this.am.list("");
  }
  
  public String[] getAssetsCopyList(String paramString)
  {
    return this.am.list(paramString);
  }
  
  public ArrayList<String> getTxtCopyList(String paramString)
  {
    localArrayList = new ArrayList();
    str1 = null;
    try
    {
      paramString = this.am.open(paramString);
      str1 = paramString;
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramString));
      for (;;)
      {
        str1 = paramString;
        String str2 = localBufferedReader.readLine();
        if (str2 == null) {
          break;
        }
        str1 = paramString;
        localArrayList.add(str2);
      }
      try
      {
        str1.close();
        throw paramString;
        try
        {
          paramString.close();
          return localArrayList;
        }
        catch (Exception paramString)
        {
          return localArrayList;
        }
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
    finally {}
  }
  
  public String readFile(String paramString)
  {
    str = null;
    try
    {
      paramString = this.am.open(paramString);
      str = paramString;
      Object localObject = new StringBuffer();
      for (;;)
      {
        str = paramString;
        int i = paramString.read();
        if (i == -1) {
          break;
        }
        str = paramString;
        ((StringBuffer)localObject).append((char)i);
      }
      try
      {
        str.close();
        throw paramString;
        str = paramString;
        paramString.close();
        str = paramString;
        localObject = ((StringBuffer)localObject).toString();
        try
        {
          paramString.close();
          return (String)localObject;
        }
        catch (Exception paramString)
        {
          return (String)localObject;
        }
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
    finally {}
  }
  
  public ArrayList<String> readLine(String paramString1, String paramString2)
  {
    localArrayList = new ArrayList();
    try
    {
      paramString1 = new BufferedReader(new InputStreamReader(new FileInputStream(paramString2 + paramString1)));
      for (;;)
      {
        paramString2 = paramString1.readLine();
        if (paramString2 == null) {
          break;
        }
        localArrayList.add(paramString2);
      }
      return localArrayList;
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  /* Error */
  public void writeFile(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 15	cn/apppark/mcd/util/file/AssetsIO:context	Landroid/content/Context;
    //   6: aload_1
    //   7: iconst_0
    //   8: invokevirtual 157	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   11: astore_1
    //   12: aload_1
    //   13: astore_3
    //   14: aload_1
    //   15: aload_2
    //   16: invokevirtual 163	java/lang/String:getBytes	()[B
    //   19: invokevirtual 166	java/io/FileOutputStream:write	([B)V
    //   22: aload_1
    //   23: astore_3
    //   24: aload_1
    //   25: invokevirtual 85	java/io/FileOutputStream:flush	()V
    //   28: aload_1
    //   29: astore_3
    //   30: aload_1
    //   31: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   34: aload_1
    //   35: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   38: return
    //   39: astore_1
    //   40: aload_3
    //   41: invokevirtual 82	java/io/FileOutputStream:close	()V
    //   44: aload_1
    //   45: athrow
    //   46: astore_1
    //   47: return
    //   48: astore_2
    //   49: goto -5 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	AssetsIO
    //   0	52	1	paramString1	String
    //   0	52	2	paramString2	String
    //   1	40	3	str	String
    // Exception table:
    //   from	to	target	type
    //   2	12	39	finally
    //   14	22	39	finally
    //   24	28	39	finally
    //   30	34	39	finally
    //   34	38	46	java/lang/Exception
    //   40	44	48	java/lang/Exception
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/file/AssetsIO.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */