package com.tencent.stat;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings.System;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.d;
import com.tencent.stat.common.k;
import com.tencent.stat.common.p;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.util.Iterator;
import java.util.List;

public class a
{
  private static a b = null;
  private StatLogger a = k.b();
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  private Context f = null;
  
  private a(Context paramContext)
  {
    this.f = paramContext.getApplicationContext();
    this.c = b(paramContext);
    this.d = d(paramContext);
    this.e = c(paramContext);
  }
  
  public static a a(Context paramContext)
  {
    try
    {
      if (b == null) {
        b = new a(paramContext);
      }
      paramContext = b;
      return paramContext;
    }
    finally {}
  }
  
  private boolean b(Context paramContext)
  {
    if (!k.a(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE"))
    {
      this.a.e("Check permission failed: android.permission.WRITE_EXTERNAL_STORAGE");
      return false;
    }
    return true;
  }
  
  private boolean c(Context paramContext)
  {
    if (!k.a(paramContext, "android.permission.WRITE_SETTINGS"))
    {
      this.a.e("Check permission failed: android.permission.WRITE_SETTINGS");
      return false;
    }
    return true;
  }
  
  private boolean d(Context paramContext)
  {
    if (k.d() < 14) {
      return b(paramContext);
    }
    return true;
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    p.b(this.f, paramString1, paramString2);
    return true;
  }
  
  public String b(String paramString1, String paramString2)
  {
    return p.a(this.f, paramString1, paramString2);
  }
  
  public boolean c(String paramString1, String paramString2)
  {
    if (!this.c) {
      return false;
    }
    try
    {
      d.a(Environment.getExternalStorageDirectory() + "/" + "Tencent/mta");
      Object localObject = new File(Environment.getExternalStorageDirectory(), "Tencent/mta/.mid.txt");
      if (localObject != null)
      {
        localObject = new BufferedWriter(new FileWriter((File)localObject));
        ((BufferedWriter)localObject).write(paramString1 + "," + paramString2);
        ((BufferedWriter)localObject).write("\n");
        ((BufferedWriter)localObject).close();
      }
      return true;
    }
    catch (Throwable paramString1)
    {
      this.a.w(paramString1);
    }
    return false;
  }
  
  public String d(String paramString1, String paramString2)
  {
    if (!this.c) {
      return null;
    }
    try
    {
      paramString2 = new File(Environment.getExternalStorageDirectory(), "Tencent/mta/.mid.txt");
      if (paramString2 != null)
      {
        paramString2 = d.a(paramString2).iterator();
        String[] arrayOfString;
        do
        {
          if (!paramString2.hasNext()) {
            break;
          }
          arrayOfString = ((String)paramString2.next()).split(",");
        } while ((arrayOfString.length != 2) || (!arrayOfString[0].equals(paramString1)));
        paramString1 = arrayOfString[1];
        return paramString1;
      }
    }
    catch (FileNotFoundException paramString1)
    {
      this.a.w("Tencent/mta/.mid.txt not found.");
      return null;
    }
    catch (Throwable paramString1)
    {
      for (;;)
      {
        this.a.w(paramString1);
      }
    }
  }
  
  public boolean e(String paramString1, String paramString2)
  {
    if (!this.e) {
      return false;
    }
    Settings.System.putString(this.f.getContentResolver(), paramString1, paramString2);
    return true;
  }
  
  public String f(String paramString1, String paramString2)
  {
    if (!this.e) {
      return paramString2;
    }
    return Settings.System.getString(this.f.getContentResolver(), paramString1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */