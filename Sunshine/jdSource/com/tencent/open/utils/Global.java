package com.tencent.open.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.io.File;

public final class Global
{
  private static Context a;
  
  public static final Context getContext()
  {
    if (a == null) {
      return null;
    }
    return a;
  }
  
  public static final File getFilesDir()
  {
    if (getContext() == null) {
      return null;
    }
    return getContext().getFilesDir();
  }
  
  public static final String getPackageName()
  {
    if (getContext() == null) {
      return "";
    }
    return getContext().getPackageName();
  }
  
  public static final SharedPreferences getSharedPreferences(String paramString, int paramInt)
  {
    if (getContext() == null) {
      return null;
    }
    return getContext().getSharedPreferences(paramString, paramInt);
  }
  
  public static int getVersionCode()
  {
    return a.getSharedPreferences("openSdk.pref", 0).getInt("app.vercode", 0);
  }
  
  public static void saveVersionCode()
  {
    Object localObject = getContext();
    if (localObject == null) {}
    for (;;)
    {
      return;
      try
      {
        PackageInfo localPackageInfo = ((Context)localObject).getPackageManager().getPackageInfo(((Context)localObject).getPackageName(), 0);
        if (localPackageInfo != null)
        {
          localObject = ((Context)localObject).getSharedPreferences("openSdk.pref", 0).edit();
          ((SharedPreferences.Editor)localObject).putInt("app.vercode", localPackageInfo.versionCode);
          ((SharedPreferences.Editor)localObject).commit();
          return;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
      }
    }
  }
  
  public static final void setContext(Context paramContext)
  {
    a = paramContext;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/Global.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */