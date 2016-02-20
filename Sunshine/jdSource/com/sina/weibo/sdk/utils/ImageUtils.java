package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ImageUtils
{
  private static void delete(File paramFile)
  {
    if ((paramFile != null) && (paramFile.exists()) && (!paramFile.delete())) {
      throw new RuntimeException(paramFile.getAbsolutePath() + " doesn't be deleted!");
    }
  }
  
  private static boolean deleteDependon(String paramString)
  {
    boolean bool1;
    if (TextUtils.isEmpty(paramString)) {
      bool1 = false;
    }
    int j;
    int i;
    boolean bool2;
    do
    {
      return bool1;
      paramString = new File(paramString);
      j = 1;
      i = 0;
      if (1 < 0) {
        i = 5;
      }
      bool2 = false;
      bool1 = false;
    } while (paramString == null);
    for (;;)
    {
      bool1 = bool2;
      if (bool2) {
        break;
      }
      bool1 = bool2;
      if (j > i) {
        break;
      }
      bool1 = bool2;
      if (!paramString.isFile()) {
        break;
      }
      bool1 = bool2;
      if (!paramString.exists()) {
        break;
      }
      bool1 = paramString.delete();
      bool2 = bool1;
      if (!bool1)
      {
        j += 1;
        bool2 = bool1;
      }
    }
  }
  
  private static boolean isFileExisted(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return false;
      paramString = new File(paramString);
    } while ((paramString == null) || (!paramString.exists()));
    return true;
  }
  
  private static boolean isParentExist(File paramFile)
  {
    if (paramFile == null) {}
    File localFile;
    do
    {
      return false;
      localFile = paramFile.getParentFile();
    } while ((localFile == null) || (localFile.exists()) || ((!paramFile.exists()) && (!paramFile.mkdirs())));
    return true;
  }
  
  public static boolean isWifi(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.getType() == 1);
  }
  
  private static void makesureFileExist(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return;
      paramString = new File(paramString);
    } while ((paramString == null) || (paramString.exists()) || (!isParentExist(paramString)));
    if (paramString.exists()) {
      delete(paramString);
    }
    try
    {
      paramString.createNewFile();
      return;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private static void revitionImageSize(String paramString, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt1 <= 0) {
      throw new IllegalArgumentException("size must be greater than 0!");
    }
    if (!isFileExisted(paramString))
    {
      localObject1 = paramString;
      if (paramString == null) {
        localObject1 = "null";
      }
      throw new FileNotFoundException((String)localObject1);
    }
    if (!BitmapHelper.verifyBitmap(paramString)) {
      throw new IOException("");
    }
    Object localObject2 = new FileInputStream(paramString);
    Object localObject1 = new BitmapFactory.Options();
    ((BitmapFactory.Options)localObject1).inJustDecodeBounds = true;
    BitmapFactory.decodeStream((InputStream)localObject2, null, (BitmapFactory.Options)localObject1);
    try
    {
      ((FileInputStream)localObject2).close();
      i = 0;
      if ((((BitmapFactory.Options)localObject1).outWidth >> i <= paramInt1) && (((BitmapFactory.Options)localObject1).outHeight >> i <= paramInt1))
      {
        ((BitmapFactory.Options)localObject1).inSampleSize = ((int)Math.pow(2.0D, i));
        ((BitmapFactory.Options)localObject1).inJustDecodeBounds = false;
        localObject2 = safeDecodeBimtapFile(paramString, (BitmapFactory.Options)localObject1);
        if (localObject2 != null) {
          break label182;
        }
        throw new IOException("Bitmap decode error!");
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int i;
        localException.printStackTrace();
        continue;
        i += 1;
      }
      label182:
      deleteDependon(paramString);
      makesureFileExist(paramString);
      paramString = new FileOutputStream(paramString);
      if (localObject1 == null) {
        break label247;
      }
    }
    if ((((BitmapFactory.Options)localObject1).outMimeType != null) && (((BitmapFactory.Options)localObject1).outMimeType.contains("png"))) {
      localException.compress(Bitmap.CompressFormat.PNG, paramInt2, paramString);
    }
    try
    {
      for (;;)
      {
        paramString.close();
        localException.recycle();
        return;
        label247:
        localException.compress(Bitmap.CompressFormat.JPEG, paramInt2, paramString);
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  /* Error */
  private static void revitionImageSizeHD(String paramString, int paramInt1, int paramInt2)
    throws IOException
  {
    // Byte code:
    //   0: iload_1
    //   1: ifgt +13 -> 14
    //   4: new 109	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 111
    //   10: invokespecial 112	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_0
    //   15: invokestatic 114	com/sina/weibo/sdk/utils/ImageUtils:isFileExisted	(Ljava/lang/String;)Z
    //   18: ifne +24 -> 42
    //   21: aload_0
    //   22: astore 6
    //   24: aload_0
    //   25: ifnonnull +7 -> 32
    //   28: ldc 116
    //   30: astore 6
    //   32: new 118	java/io/FileNotFoundException
    //   35: dup
    //   36: aload 6
    //   38: invokespecial 119	java/io/FileNotFoundException:<init>	(Ljava/lang/String;)V
    //   41: athrow
    //   42: aload_0
    //   43: invokestatic 124	com/sina/weibo/sdk/utils/BitmapHelper:verifyBitmap	(Ljava/lang/String;)Z
    //   46: ifne +13 -> 59
    //   49: new 93	java/io/IOException
    //   52: dup
    //   53: ldc 126
    //   55: invokespecial 127	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: iload_1
    //   60: iconst_2
    //   61: imul
    //   62: istore 5
    //   64: new 129	java/io/FileInputStream
    //   67: dup
    //   68: aload_0
    //   69: invokespecial 130	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   72: astore 6
    //   74: new 132	android/graphics/BitmapFactory$Options
    //   77: dup
    //   78: invokespecial 133	android/graphics/BitmapFactory$Options:<init>	()V
    //   81: astore 8
    //   83: aload 8
    //   85: iconst_1
    //   86: putfield 137	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   89: aload 6
    //   91: aconst_null
    //   92: aload 8
    //   94: invokestatic 143	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   97: pop
    //   98: aload 6
    //   100: invokevirtual 146	java/io/FileInputStream:close	()V
    //   103: iconst_0
    //   104: istore 4
    //   106: aload 8
    //   108: getfield 150	android/graphics/BitmapFactory$Options:outWidth	I
    //   111: iload 4
    //   113: ishr
    //   114: iload 5
    //   116: if_icmpgt +70 -> 186
    //   119: aload 8
    //   121: getfield 153	android/graphics/BitmapFactory$Options:outHeight	I
    //   124: iload 4
    //   126: ishr
    //   127: iload 5
    //   129: if_icmpgt +57 -> 186
    //   132: aload 8
    //   134: ldc2_w 154
    //   137: iload 4
    //   139: i2d
    //   140: invokestatic 161	java/lang/Math:pow	(DD)D
    //   143: d2i
    //   144: putfield 164	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   147: aload 8
    //   149: iconst_0
    //   150: putfield 137	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   153: aload_0
    //   154: aload 8
    //   156: invokestatic 168	com/sina/weibo/sdk/utils/ImageUtils:safeDecodeBimtapFile	(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   159: astore 7
    //   161: aload 7
    //   163: ifnonnull +32 -> 195
    //   166: new 93	java/io/IOException
    //   169: dup
    //   170: ldc -86
    //   172: invokespecial 127	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   175: athrow
    //   176: astore 6
    //   178: aload 6
    //   180: invokevirtual 171	java/lang/Exception:printStackTrace	()V
    //   183: goto -80 -> 103
    //   186: iload 4
    //   188: iconst_1
    //   189: iadd
    //   190: istore 4
    //   192: goto -86 -> 106
    //   195: aload_0
    //   196: invokestatic 173	com/sina/weibo/sdk/utils/ImageUtils:deleteDependon	(Ljava/lang/String;)Z
    //   199: pop
    //   200: aload_0
    //   201: invokestatic 175	com/sina/weibo/sdk/utils/ImageUtils:makesureFileExist	(Ljava/lang/String;)V
    //   204: aload 7
    //   206: invokevirtual 213	android/graphics/Bitmap:getWidth	()I
    //   209: aload 7
    //   211: invokevirtual 216	android/graphics/Bitmap:getHeight	()I
    //   214: if_icmple +167 -> 381
    //   217: aload 7
    //   219: invokevirtual 213	android/graphics/Bitmap:getWidth	()I
    //   222: istore 4
    //   224: iload_1
    //   225: i2f
    //   226: iload 4
    //   228: i2f
    //   229: fdiv
    //   230: fstore_3
    //   231: aload 7
    //   233: astore 6
    //   235: fload_3
    //   236: fconst_1
    //   237: fcmpg
    //   238: ifge +87 -> 325
    //   241: aload 7
    //   243: invokevirtual 213	android/graphics/Bitmap:getWidth	()I
    //   246: i2f
    //   247: fload_3
    //   248: fmul
    //   249: f2i
    //   250: aload 7
    //   252: invokevirtual 216	android/graphics/Bitmap:getHeight	()I
    //   255: i2f
    //   256: fload_3
    //   257: fmul
    //   258: f2i
    //   259: getstatic 222	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   262: invokestatic 226	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   265: astore 6
    //   267: aload 6
    //   269: ifnonnull +8 -> 277
    //   272: aload 7
    //   274: invokevirtual 203	android/graphics/Bitmap:recycle	()V
    //   277: new 228	android/graphics/Canvas
    //   280: dup
    //   281: aload 6
    //   283: invokespecial 231	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   286: astore 9
    //   288: new 233	android/graphics/Matrix
    //   291: dup
    //   292: invokespecial 234	android/graphics/Matrix:<init>	()V
    //   295: astore 10
    //   297: aload 10
    //   299: fload_3
    //   300: fload_3
    //   301: invokevirtual 238	android/graphics/Matrix:setScale	(FF)V
    //   304: aload 9
    //   306: aload 7
    //   308: aload 10
    //   310: new 240	android/graphics/Paint
    //   313: dup
    //   314: invokespecial 241	android/graphics/Paint:<init>	()V
    //   317: invokevirtual 245	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    //   320: aload 7
    //   322: invokevirtual 203	android/graphics/Bitmap:recycle	()V
    //   325: new 177	java/io/FileOutputStream
    //   328: dup
    //   329: aload_0
    //   330: invokespecial 178	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   333: astore_0
    //   334: aload 8
    //   336: ifnull +71 -> 407
    //   339: aload 8
    //   341: getfield 182	android/graphics/BitmapFactory$Options:outMimeType	Ljava/lang/String;
    //   344: ifnull +63 -> 407
    //   347: aload 8
    //   349: getfield 182	android/graphics/BitmapFactory$Options:outMimeType	Ljava/lang/String;
    //   352: ldc -72
    //   354: invokevirtual 187	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   357: ifeq +50 -> 407
    //   360: aload 6
    //   362: getstatic 193	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   365: iload_2
    //   366: aload_0
    //   367: invokevirtual 199	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   370: pop
    //   371: aload_0
    //   372: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   375: aload 6
    //   377: invokevirtual 203	android/graphics/Bitmap:recycle	()V
    //   380: return
    //   381: aload 7
    //   383: invokevirtual 216	android/graphics/Bitmap:getHeight	()I
    //   386: istore 4
    //   388: goto -164 -> 224
    //   391: astore 6
    //   393: invokestatic 250	java/lang/System:gc	()V
    //   396: fload_3
    //   397: f2d
    //   398: ldc2_w 251
    //   401: dmul
    //   402: d2f
    //   403: fstore_3
    //   404: goto -163 -> 241
    //   407: aload 6
    //   409: getstatic 206	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   412: iload_2
    //   413: aload_0
    //   414: invokevirtual 199	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   417: pop
    //   418: goto -47 -> 371
    //   421: astore_0
    //   422: aload_0
    //   423: invokevirtual 171	java/lang/Exception:printStackTrace	()V
    //   426: goto -51 -> 375
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	429	0	paramString	String
    //   0	429	1	paramInt1	int
    //   0	429	2	paramInt2	int
    //   230	174	3	f	float
    //   104	283	4	i	int
    //   62	68	5	j	int
    //   22	77	6	localObject1	Object
    //   176	3	6	localException	Exception
    //   233	143	6	localObject2	Object
    //   391	17	6	localOutOfMemoryError	OutOfMemoryError
    //   159	223	7	localBitmap	Bitmap
    //   81	267	8	localOptions	BitmapFactory.Options
    //   286	19	9	localCanvas	android.graphics.Canvas
    //   295	14	10	localMatrix	android.graphics.Matrix
    // Exception table:
    //   from	to	target	type
    //   98	103	176	java/lang/Exception
    //   241	267	391	java/lang/OutOfMemoryError
    //   371	375	421	java/lang/Exception
  }
  
  public static boolean revitionPostImageSize(Context paramContext, String paramString)
  {
    try
    {
      if (NetworkHelper.isWifiValid(paramContext)) {
        revitionImageSizeHD(paramString, 1600, 75);
      } else {
        revitionImageSize(paramString, 1024, 75);
      }
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
      return false;
    }
    return true;
  }
  
  private static Bitmap safeDecodeBimtapFile(String paramString, BitmapFactory.Options paramOptions)
  {
    Object localObject1 = paramOptions;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      localObject3 = new BitmapFactory.Options();
      ((BitmapFactory.Options)localObject3).inSampleSize = 1;
    }
    localObject1 = null;
    int i = 0;
    Object localObject2 = null;
    for (;;)
    {
      if (i >= 5) {
        return (Bitmap)localObject1;
      }
      try
      {
        localObject6 = new FileInputStream(paramString);
        localObject2 = localObject1;
        localObject4 = localObject1;
      }
      catch (FileNotFoundException paramString)
      {
        try
        {
          localObject1 = BitmapFactory.decodeStream((InputStream)localObject6, null, paramOptions);
          localObject2 = localObject1;
          Object localObject4 = localObject1;
          try
          {
            ((FileInputStream)localObject6).close();
            return (Bitmap)localObject1;
          }
          catch (IOException localIOException2)
          {
            localObject2 = localObject1;
            localObject4 = localObject1;
            localIOException2.printStackTrace();
            return (Bitmap)localObject1;
          }
        }
        catch (OutOfMemoryError localOutOfMemoryError1)
        {
          localObject1 = localObject6;
          localOutOfMemoryError1.printStackTrace();
          ((BitmapFactory.Options)localObject3).inSampleSize *= 2;
          try
          {
            ((FileInputStream)localObject1).close();
            i += 1;
            Object localObject5 = localObject1;
            localObject1 = localObject2;
            localObject2 = localObject5;
          }
          catch (IOException localIOException1)
          {
            for (;;)
            {
              localIOException1.printStackTrace();
            }
          }
          paramString = paramString;
          return (Bitmap)localObject1;
        }
        catch (FileNotFoundException paramString)
        {
          return localIOException1;
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError2)
      {
        for (;;)
        {
          Object localObject6 = localObject2;
          localObject2 = localObject1;
          localObject1 = localObject6;
        }
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/utils/ImageUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */