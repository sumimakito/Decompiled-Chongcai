package com.tencent.open.utils;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.open.a.f;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class AsynLoadImg
{
  private static String c;
  private String a;
  private AsynLoadImgBack b;
  private long d;
  private Handler e;
  private Runnable f = new Runnable()
  {
    public void run()
    {
      f.a("AsynLoadImg", "saveFileRunnable:");
      String str1 = Util.encrypt(AsynLoadImg.b(AsynLoadImg.this));
      str1 = "share_qq_" + str1 + ".jpg";
      String str2 = AsynLoadImg.a() + str1;
      Object localObject = new File(str2);
      Message localMessage = AsynLoadImg.c(AsynLoadImg.this).obtainMessage();
      if (((File)localObject).exists())
      {
        localMessage.arg1 = 0;
        localMessage.obj = str2;
        f.a("AsynLoadImg", "file exists: time:" + (System.currentTimeMillis() - AsynLoadImg.d(AsynLoadImg.this)));
        AsynLoadImg.c(AsynLoadImg.this).sendMessage(localMessage);
        return;
      }
      localObject = AsynLoadImg.getbitmap(AsynLoadImg.b(AsynLoadImg.this));
      boolean bool;
      if (localObject != null)
      {
        bool = AsynLoadImg.this.saveFile((Bitmap)localObject, str1);
        label182:
        if (!bool) {
          break label247;
        }
        localMessage.arg1 = 0;
        localMessage.obj = str2;
      }
      for (;;)
      {
        f.a("AsynLoadImg", "file not exists: download time:" + (System.currentTimeMillis() - AsynLoadImg.d(AsynLoadImg.this)));
        break;
        f.a("AsynLoadImg", "saveFileRunnable:get bmp fail---");
        bool = false;
        break label182;
        label247:
        localMessage.arg1 = 1;
      }
    }
  };
  
  public AsynLoadImg(Activity paramActivity)
  {
    this.e = new Handler(paramActivity.getMainLooper())
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        f.a("AsynLoadImg", "handleMessage:" + paramAnonymousMessage.arg1);
        if (paramAnonymousMessage.arg1 == 0)
        {
          AsynLoadImg.a(AsynLoadImg.this).saved(paramAnonymousMessage.arg1, (String)paramAnonymousMessage.obj);
          return;
        }
        AsynLoadImg.a(AsynLoadImg.this).saved(paramAnonymousMessage.arg1, null);
      }
    };
  }
  
  public static Bitmap getbitmap(String paramString)
  {
    f.a("AsynLoadImg", "getbitmap:" + paramString);
    try
    {
      Object localObject = (HttpURLConnection)new URL(paramString).openConnection();
      ((HttpURLConnection)localObject).setDoInput(true);
      ((HttpURLConnection)localObject).connect();
      localObject = ((HttpURLConnection)localObject).getInputStream();
      Bitmap localBitmap = BitmapFactory.decodeStream((InputStream)localObject);
      ((InputStream)localObject).close();
      f.a("AsynLoadImg", "image download finished." + paramString);
      return localBitmap;
    }
    catch (OutOfMemoryError paramString)
    {
      paramString.printStackTrace();
      f.a("AsynLoadImg", "getbitmap bmp fail---");
      return null;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
      f.a("AsynLoadImg", "getbitmap bmp fail---");
    }
    return null;
  }
  
  public void save(String paramString, AsynLoadImgBack paramAsynLoadImgBack)
  {
    f.a("AsynLoadImg", "--save---");
    if ((paramString == null) || (paramString.equals("")))
    {
      paramAsynLoadImgBack.saved(1, null);
      return;
    }
    if (!Util.hasSDCard())
    {
      paramAsynLoadImgBack.saved(2, null);
      return;
    }
    c = Environment.getExternalStorageDirectory() + "/tmp/";
    this.d = System.currentTimeMillis();
    this.a = paramString;
    this.b = paramAsynLoadImgBack;
    new Thread(this.f).start();
  }
  
  /* Error */
  public boolean saveFile(Bitmap paramBitmap, String paramString)
  {
    // Byte code:
    //   0: getstatic 47	com/tencent/open/utils/AsynLoadImg:c	Ljava/lang/String;
    //   3: astore 7
    //   5: aconst_null
    //   6: astore 6
    //   8: aconst_null
    //   9: astore 5
    //   11: aload 6
    //   13: astore 4
    //   15: new 173	java/io/File
    //   18: dup
    //   19: aload 7
    //   21: invokespecial 174	java/io/File:<init>	(Ljava/lang/String;)V
    //   24: astore 8
    //   26: aload 6
    //   28: astore 4
    //   30: aload 8
    //   32: invokevirtual 177	java/io/File:exists	()Z
    //   35: ifne +13 -> 48
    //   38: aload 6
    //   40: astore 4
    //   42: aload 8
    //   44: invokevirtual 180	java/io/File:mkdir	()Z
    //   47: pop
    //   48: aload 6
    //   50: astore 4
    //   52: new 64	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   59: aload 7
    //   61: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: aload_2
    //   65: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: astore 7
    //   73: aload 6
    //   75: astore 4
    //   77: ldc 62
    //   79: new 64	java/lang/StringBuilder
    //   82: dup
    //   83: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   86: ldc -74
    //   88: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: aload_2
    //   92: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokestatic 79	com/tencent/open/a/f:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   101: aload 6
    //   103: astore 4
    //   105: new 184	java/io/BufferedOutputStream
    //   108: dup
    //   109: new 186	java/io/FileOutputStream
    //   112: dup
    //   113: new 173	java/io/File
    //   116: dup
    //   117: aload 7
    //   119: invokespecial 174	java/io/File:<init>	(Ljava/lang/String;)V
    //   122: invokespecial 189	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   125: invokespecial 192	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   128: astore_2
    //   129: aload_1
    //   130: getstatic 198	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   133: bipush 80
    //   135: aload_2
    //   136: invokevirtual 204	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   139: pop
    //   140: aload_2
    //   141: invokevirtual 207	java/io/BufferedOutputStream:flush	()V
    //   144: aload_2
    //   145: ifnull +7 -> 152
    //   148: aload_2
    //   149: invokevirtual 208	java/io/BufferedOutputStream:close	()V
    //   152: iconst_1
    //   153: istore_3
    //   154: iload_3
    //   155: ireturn
    //   156: astore_1
    //   157: aload_1
    //   158: invokevirtual 120	java/io/IOException:printStackTrace	()V
    //   161: goto -9 -> 152
    //   164: astore_2
    //   165: aload 5
    //   167: astore_1
    //   168: aload_1
    //   169: astore 4
    //   171: aload_2
    //   172: invokevirtual 120	java/io/IOException:printStackTrace	()V
    //   175: aload_1
    //   176: astore 4
    //   178: ldc 62
    //   180: ldc -46
    //   182: invokestatic 79	com/tencent/open/a/f:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   185: iconst_0
    //   186: istore_3
    //   187: aload_1
    //   188: ifnull -34 -> 154
    //   191: aload_1
    //   192: invokevirtual 208	java/io/BufferedOutputStream:close	()V
    //   195: iconst_0
    //   196: ireturn
    //   197: astore_1
    //   198: aload_1
    //   199: invokevirtual 120	java/io/IOException:printStackTrace	()V
    //   202: iconst_0
    //   203: ireturn
    //   204: astore_1
    //   205: aload 4
    //   207: ifnull +8 -> 215
    //   210: aload 4
    //   212: invokevirtual 208	java/io/BufferedOutputStream:close	()V
    //   215: aload_1
    //   216: athrow
    //   217: astore_2
    //   218: aload_2
    //   219: invokevirtual 120	java/io/IOException:printStackTrace	()V
    //   222: goto -7 -> 215
    //   225: astore_1
    //   226: aload_2
    //   227: astore 4
    //   229: goto -24 -> 205
    //   232: astore 4
    //   234: aload_2
    //   235: astore_1
    //   236: aload 4
    //   238: astore_2
    //   239: goto -71 -> 168
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	242	0	this	AsynLoadImg
    //   0	242	1	paramBitmap	Bitmap
    //   0	242	2	paramString	String
    //   153	34	3	bool	boolean
    //   13	215	4	localObject1	Object
    //   232	5	4	localIOException	IOException
    //   9	157	5	localObject2	Object
    //   6	96	6	localObject3	Object
    //   3	115	7	str	String
    //   24	19	8	localFile	File
    // Exception table:
    //   from	to	target	type
    //   148	152	156	java/io/IOException
    //   15	26	164	java/io/IOException
    //   30	38	164	java/io/IOException
    //   42	48	164	java/io/IOException
    //   52	73	164	java/io/IOException
    //   77	101	164	java/io/IOException
    //   105	129	164	java/io/IOException
    //   191	195	197	java/io/IOException
    //   15	26	204	finally
    //   30	38	204	finally
    //   42	48	204	finally
    //   52	73	204	finally
    //   77	101	204	finally
    //   105	129	204	finally
    //   171	175	204	finally
    //   178	185	204	finally
    //   210	215	217	java/io/IOException
    //   129	144	225	finally
    //   129	144	232	java/io/IOException
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/AsynLoadImg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */