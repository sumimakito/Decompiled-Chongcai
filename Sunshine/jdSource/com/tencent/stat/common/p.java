package com.tencent.stat.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public class p
{
  private static SharedPreferences a = null;
  
  public static int a(Context paramContext, String paramString, int paramInt)
  {
    paramString = k.b(paramContext, "" + paramString);
    return a(paramContext).getInt(paramString, paramInt);
  }
  
  public static long a(Context paramContext, String paramString, long paramLong)
  {
    paramString = k.b(paramContext, "" + paramString);
    return a(paramContext).getLong(paramString, paramLong);
  }
  
  static SharedPreferences a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = PreferenceManager.getDefaultSharedPreferences(paramContext);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    paramString1 = k.b(paramContext, "" + paramString1);
    return a(paramContext).getString(paramString1, paramString2);
  }
  
  public static void b(Context paramContext, String paramString, int paramInt)
  {
    paramString = k.b(paramContext, "" + paramString);
    paramContext = a(paramContext).edit();
    paramContext.putInt(paramString, paramInt);
    paramContext.commit();
  }
  
  public static void b(Context paramContext, String paramString, long paramLong)
  {
    paramString = k.b(paramContext, "" + paramString);
    paramContext = a(paramContext).edit();
    paramContext.putLong(paramString, paramLong);
    paramContext.commit();
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    paramString1 = k.b(paramContext, "" + paramString1);
    paramContext = a(paramContext).edit();
    paramContext.putString(paramString1, paramString2);
    paramContext.commit();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/common/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */