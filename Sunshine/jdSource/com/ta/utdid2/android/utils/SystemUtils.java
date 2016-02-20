package com.ta.utdid2.android.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Environment;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;

public class SystemUtils
{
  public static String getAppLabel(Context paramContext)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      paramContext = paramContext.getPackageName();
      if ((localPackageManager != null) && (paramContext != null))
      {
        paramContext = localPackageManager.getApplicationLabel(localPackageManager.getPackageInfo(paramContext, 1).applicationInfo).toString();
        return paramContext;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static String getCpuInfo()
  {
    Object localObject4 = null;
    Object localObject2 = null;
    localObject1 = null;
    Object localObject6 = null;
    Object localObject5 = null;
    BufferedReader localBufferedReader = null;
    for (;;)
    {
      try
      {
        localFileReader = new FileReader("/proc/cpuinfo");
        localObject1 = localBufferedReader;
        if (localFileReader == null) {}
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        FileReader localFileReader;
        Object localObject3;
        continue;
      }
      try
      {
        localBufferedReader = new BufferedReader(localFileReader, 1024);
        localObject1 = localObject6;
        localObject2 = localObject5;
        return "";
      }
      catch (IOException localIOException1)
      {
        try
        {
          localObject4 = localBufferedReader.readLine();
          localObject1 = localObject4;
          localObject2 = localObject4;
          localBufferedReader.close();
          localObject1 = localObject4;
          localObject2 = localObject4;
          localFileReader.close();
          localObject1 = localObject4;
          if (localObject1 == null) {
            continue;
          }
          return ((String)localObject1).substring(((String)localObject1).indexOf(':') + 1).trim();
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          continue;
        }
        catch (IOException localIOException2)
        {
          localObject1 = localFileNotFoundException2;
          continue;
        }
        localIOException1 = localIOException1;
        localObject1 = localObject4;
        localObject4 = localIOException1;
        localObject3 = localObject1;
        Log.e("Could not read from file /proc/cpuinfo", ((IOException)localObject4).toString());
      }
      catch (FileNotFoundException localFileNotFoundException3)
      {
        localObject1 = localObject3;
        localObject3 = localFileNotFoundException3;
        Log.e("BaseParameter-Could not open file /proc/cpuinfo", ((FileNotFoundException)localObject3).toString());
      }
    }
  }
  
  public static File getRootFolder(String paramString)
  {
    File localFile = Environment.getExternalStorageDirectory();
    if (localFile != null)
    {
      paramString = new File(String.format("%s%s%s", new Object[] { localFile.getAbsolutePath(), File.separator, paramString }));
      if ((paramString != null) && (!paramString.exists())) {
        paramString.mkdirs();
      }
      return paramString;
    }
    return null;
  }
  
  public static int getSystemVersion()
  {
    try
    {
      i = Build.VERSION.class.getField("SDK_INT").getInt(null);
      return i;
    }
    catch (Exception localException1)
    {
      try
      {
        int i = Integer.parseInt((String)Build.VERSION.class.getField("SDK").get(null));
        return i;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
    return 2;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/ta/utdid2/android/utils/SystemUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */