package cn.apppark.mcd.util.file;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class PrivateCacheReadSave
{
  public static void ensureFileExist(Context paramContext, String paramString, InputStream paramInputStream)
  {
    paramContext = new FileOutputStream(new File(paramContext.getDir("dex", 0) + "/" + paramString));
    try
    {
      paramString = new byte[1048576];
      for (;;)
      {
        int i = paramInputStream.read(paramString);
        if (i <= 0) {
          break;
        }
        paramContext.write(paramString, 0, i);
      }
      paramContext.flush();
    }
    catch (IOException paramString)
    {
      paramInputStream.close();
      paramContext.close();
      return;
    }
  }
  
  public static String read(String paramString, Context paramContext)
  {
    Object localObject = null;
    if (new File(paramContext.getCacheDir() + "/" + paramString).exists()) {}
    for (;;)
    {
      try
      {
        paramContext = paramContext.openFileInput(paramString);
        paramString = new ByteArrayOutputStream();
        try
        {
          byte[] arrayOfByte = new byte['Ѐ'];
          int i = paramContext.read(arrayOfByte);
          if (i <= 0) {
            continue;
          }
          paramString.write(arrayOfByte, 0, i);
          continue;
          paramContext.printStackTrace();
        }
        catch (Exception paramContext) {}
      }
      catch (Exception paramContext)
      {
        paramString = null;
        continue;
      }
      paramContext = (Context)localObject;
      if (paramString != null) {
        paramContext = paramString.toString();
      }
      return paramContext;
      paramContext.close();
      continue;
      paramString = null;
    }
  }
  
  public static boolean save(String paramString1, String paramString2, Context paramContext)
  {
    try
    {
      paramString1 = paramContext.openFileOutput(paramString1, 0);
      paramString1.write(paramString2.getBytes());
      paramString1.close();
      return true;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
      }
    }
  }
  
  public static boolean saveBitmap2Cache(Bitmap paramBitmap, String paramString, Context paramContext)
  {
    paramString = new File(paramContext.getCacheDir() + "/" + paramString);
    try
    {
      paramString = new FileOutputStream(paramString);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramString);
    }
    catch (FileNotFoundException paramBitmap)
    {
      try
      {
        paramString.flush();
      }
      catch (IOException paramBitmap)
      {
        try
        {
          for (;;)
          {
            paramString.close();
            return true;
            paramString = paramString;
            paramString.printStackTrace();
            paramString = null;
            continue;
            paramBitmap = paramBitmap;
            paramBitmap.printStackTrace();
          }
        }
        catch (IOException paramBitmap)
        {
          for (;;)
          {
            paramBitmap.printStackTrace();
          }
        }
      }
    }
  }
  
  public static boolean saveBitmap2Cache(Bitmap paramBitmap, String paramString1, String paramString2, Context paramContext)
  {
    File localFile = new File(paramContext.getCacheDir() + File.separator + paramString1);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    paramString1 = new File(paramContext.getCacheDir() + File.separator + paramString1 + File.separator + paramString2);
    try
    {
      paramString1 = new FileOutputStream(paramString1);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramString1);
    }
    catch (FileNotFoundException paramBitmap)
    {
      try
      {
        paramString1.flush();
      }
      catch (IOException paramBitmap)
      {
        try
        {
          for (;;)
          {
            paramString1.close();
            return true;
            paramString1 = paramString1;
            paramString1.printStackTrace();
            paramString1 = null;
            continue;
            paramBitmap = paramBitmap;
            paramBitmap.printStackTrace();
          }
        }
        catch (IOException paramBitmap)
        {
          for (;;)
          {
            paramBitmap.printStackTrace();
          }
        }
      }
    }
  }
  
  public String countFileSize(Context paramContext, String[] paramArrayOfString)
  {
    double d1 = 0.0D;
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      File localFile = new File(paramContext.getCacheDir() + "/" + paramArrayOfString[i]);
      double d2 = d1;
      if (localFile.exists()) {
        d2 = d1 + localFile.length();
      }
      i += 1;
      d1 = d2;
    }
    return Math.round(d1 / 1024.0D * 100.0D) / 100.0D + "kb";
  }
  
  public boolean deleteFile(Context paramContext, String[] paramArrayOfString)
  {
    boolean bool2 = true;
    int i = 0;
    boolean bool1;
    for (;;)
    {
      bool1 = bool2;
      try
      {
        if (i < paramArrayOfString.length)
        {
          File localFile = new File(paramContext.getCacheDir() + "/" + paramArrayOfString[i]);
          if (localFile.exists()) {
            localFile.delete();
          }
          i += 1;
        }
      }
      catch (Exception paramContext)
      {
        bool1 = false;
      }
    }
    return bool1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/file/PrivateCacheReadSave.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */