package cn.apppark.mcd.util.file;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class PrivateFileReadSave
{
  public static String countFileSize(Context paramContext, String[] paramArrayOfString)
  {
    double d1 = 0.0D;
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      File localFile = new File(paramContext.getFilesDir() + "/" + paramArrayOfString[i]);
      double d2 = d1;
      if (localFile.exists()) {
        d2 = d1 + localFile.length();
      }
      i += 1;
      d1 = d2;
    }
    return Math.round(d1 / 1024.0D * 100.0D) / 100.0D + "kb";
  }
  
  public static boolean deleteFile(Context paramContext, String[] paramArrayOfString)
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
          File localFile = new File(paramContext.getFilesDir() + "/" + paramArrayOfString[i]);
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
  
  public static boolean deleteFile(String paramString, Context paramContext)
  {
    try
    {
      paramString = new File(paramContext.getFilesDir() + "/" + paramString);
      if (paramString.exists()) {
        paramString.delete();
      }
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static String read(String paramString, Context paramContext)
  {
    Object localObject = null;
    if (new File(paramContext.getFilesDir() + "/" + paramString).exists()) {}
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
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/file/PrivateFileReadSave.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */