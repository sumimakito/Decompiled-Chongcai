package cn.apppark.mcd.util.more;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import junit.framework.Assert;

public class WeixinUtil
{
  private static final int MAX_DECODE_PICTURE_SIZE = 2764800;
  private static final String TAG = "SDK_Sample.Util";
  
  public static byte[] bmpToByteArray(Bitmap paramBitmap, boolean paramBoolean)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    if (paramBoolean) {
      paramBitmap.recycle();
    }
    paramBitmap = localByteArrayOutputStream.toByteArray();
    try
    {
      localByteArrayOutputStream.close();
      return paramBitmap;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return paramBitmap;
  }
  
  public static Bitmap extractThumbNail(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null)
    {
      bool1 = bool2;
      if (!paramString.equals(""))
      {
        bool1 = bool2;
        if (paramInt1 > 0)
        {
          bool1 = bool2;
          if (paramInt2 > 0) {
            bool1 = true;
          }
        }
      }
    }
    Assert.assertTrue(bool1);
    Object localObject = new BitmapFactory.Options();
    Bitmap localBitmap;
    double d2;
    double d3;
    double d1;
    for (;;)
    {
      try
      {
        ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
        localBitmap = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
        if (localBitmap != null) {
          localBitmap.recycle();
        }
        Log.d("SDK_Sample.Util", "extractThumbNail: round=" + paramInt2 + "x" + paramInt1 + ", crop=" + paramBoolean);
        d2 = ((BitmapFactory.Options)localObject).outHeight * 1.0D / paramInt1;
        d3 = ((BitmapFactory.Options)localObject).outWidth * 1.0D / paramInt2;
        Log.d("SDK_Sample.Util", "extractThumbNail: extract beX = " + d3 + ", beY = " + d2);
        if (!paramBoolean) {
          break label295;
        }
        if (d2 > d3)
        {
          d1 = d3;
          ((BitmapFactory.Options)localObject).inSampleSize = ((int)d1);
          if (((BitmapFactory.Options)localObject).inSampleSize <= 1) {
            ((BitmapFactory.Options)localObject).inSampleSize = 1;
          }
          if (((BitmapFactory.Options)localObject).outHeight * ((BitmapFactory.Options)localObject).outWidth / ((BitmapFactory.Options)localObject).inSampleSize <= 2764800) {
            break;
          }
          ((BitmapFactory.Options)localObject).inSampleSize += 1;
          continue;
          return (Bitmap)localObject;
        }
      }
      catch (OutOfMemoryError paramString)
      {
        Log.e("SDK_Sample.Util", "decode bitmap failed: " + paramString.getMessage());
        localObject = null;
      }
      d1 = d2;
      continue;
      label295:
      if (d2 < d3) {
        d1 = d3;
      } else {
        d1 = d2;
      }
    }
    int j;
    int i;
    if (paramBoolean) {
      if (d2 > d3)
      {
        d1 = paramInt2;
        j = (int)(d1 * 1.0D * ((BitmapFactory.Options)localObject).outHeight / ((BitmapFactory.Options)localObject).outWidth);
        i = paramInt2;
      }
    }
    for (;;)
    {
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = false;
      Log.i("SDK_Sample.Util", "bitmap required size=" + i + "x" + j + ", orig=" + ((BitmapFactory.Options)localObject).outWidth + "x" + ((BitmapFactory.Options)localObject).outHeight + ", sample=" + ((BitmapFactory.Options)localObject).inSampleSize);
      paramString = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
      if (paramString != null) {
        break;
      }
      Log.e("SDK_Sample.Util", "bitmap decode failed");
      return null;
      i = (int)(paramInt1 * 1.0D * ((BitmapFactory.Options)localObject).outWidth / ((BitmapFactory.Options)localObject).outHeight);
      j = paramInt1;
      continue;
      if (d2 < d3)
      {
        j = (int)(paramInt2 * 1.0D * ((BitmapFactory.Options)localObject).outHeight / ((BitmapFactory.Options)localObject).outWidth);
        i = paramInt2;
      }
      else
      {
        i = (int)(paramInt1 * 1.0D * ((BitmapFactory.Options)localObject).outWidth / ((BitmapFactory.Options)localObject).outHeight);
        j = paramInt1;
      }
    }
    Log.i("SDK_Sample.Util", "bitmap decoded size=" + paramString.getWidth() + "x" + paramString.getHeight());
    localObject = Bitmap.createScaledBitmap(paramString, i, j, true);
    if (localObject != null)
    {
      paramString.recycle();
      paramString = (String)localObject;
    }
    for (;;)
    {
      if (paramBoolean)
      {
        localBitmap = Bitmap.createBitmap(paramString, paramString.getWidth() - paramInt2 >> 1, paramString.getHeight() - paramInt1 >> 1, paramInt2, paramInt1);
        localObject = paramString;
        if (localBitmap == null) {
          break;
        }
        paramString.recycle();
        Log.i("SDK_Sample.Util", "bitmap croped size=" + localBitmap.getWidth() + "x" + localBitmap.getHeight());
        paramString = localBitmap;
      }
      for (;;)
      {
        return paramString;
      }
    }
  }
  
  public static byte[] getHtmlByteArray(String paramString)
  {
    Object localObject = null;
    try
    {
      paramString = (HttpURLConnection)new URL(paramString).openConnection();
      if (paramString.getResponseCode() == 200)
      {
        paramString = paramString.getInputStream();
        return inputStreamToByte(paramString);
      }
    }
    catch (MalformedURLException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = (String)localObject;
      }
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = (String)localObject;
        continue;
        paramString = null;
      }
    }
  }
  
  public static byte[] inputStreamToByte(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      localByteArrayOutputStream = new ByteArrayOutputStream();
      for (;;)
      {
        int i = paramInputStream.read();
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(i);
      }
      paramInputStream = localByteArrayOutputStream.toByteArray();
    }
    catch (Exception paramInputStream)
    {
      paramInputStream.printStackTrace();
      return null;
    }
    localByteArrayOutputStream.close();
    return paramInputStream;
  }
  
  public static byte[] readFromFile(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject2 = null;
    if (paramString == null) {
      return null;
    }
    Object localObject1 = new File(paramString);
    if (!((File)localObject1).exists())
    {
      Log.i("SDK_Sample.Util", "readFromFile: file not found");
      return null;
    }
    int i = paramInt2;
    if (paramInt2 == -1) {
      i = (int)((File)localObject1).length();
    }
    Log.d("SDK_Sample.Util", "readFromFile : offset = " + paramInt1 + " len = " + i + " offset + len = " + (paramInt1 + i));
    if (paramInt1 < 0)
    {
      Log.e("SDK_Sample.Util", "readFromFile invalid offset:" + paramInt1);
      return null;
    }
    if (i <= 0)
    {
      Log.e("SDK_Sample.Util", "readFromFile invalid len:" + i);
      return null;
    }
    if (paramInt1 + i > (int)((File)localObject1).length())
    {
      Log.e("SDK_Sample.Util", "readFromFile invalid file len:" + ((File)localObject1).length());
      return null;
    }
    localObject1 = localObject2;
    try
    {
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramString, "r");
      localObject1 = localObject2;
      paramString = new byte[i];
      localObject1 = paramString;
      localRandomAccessFile.seek(paramInt1);
      localObject1 = paramString;
      localRandomAccessFile.readFully(paramString);
      localObject1 = paramString;
      localRandomAccessFile.close();
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.e("SDK_Sample.Util", "readFromFile : errMsg = " + paramString.getMessage());
      paramString.printStackTrace();
    }
    return (byte[])localObject1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/more/WeixinUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */