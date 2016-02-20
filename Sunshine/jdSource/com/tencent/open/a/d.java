package com.tencent.open.a;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.text.SimpleDateFormat;

public class d
{
  public static final class a
  {
    public static final boolean a(int paramInt1, int paramInt2)
    {
      return paramInt2 == (paramInt1 & paramInt2);
    }
  }
  
  public static final class b
  {
    public static boolean a(File paramFile)
    {
      int i = 0;
      if (paramFile != null)
      {
        if (!paramFile.isFile()) {
          break label28;
        }
        if (paramFile.delete()) {
          break label26;
        }
        paramFile.deleteOnExit();
      }
      label26:
      label28:
      File[] arrayOfFile;
      do
      {
        do
        {
          return false;
          return true;
        } while (!paramFile.isDirectory());
        arrayOfFile = paramFile.listFiles();
      } while ((arrayOfFile == null) || (arrayOfFile.length == 0));
      int j = arrayOfFile.length;
      while (i < j)
      {
        a(arrayOfFile[i]);
        i += 1;
      }
      return paramFile.delete();
    }
  }
  
  public static final class c
  {
    public static boolean a()
    {
      String str = Environment.getExternalStorageState();
      return ("mounted".equals(str)) || ("mounted_ro".equals(str));
    }
    
    public static d.d b()
    {
      if (!a()) {
        return null;
      }
      return d.d.b(Environment.getExternalStorageDirectory());
    }
  }
  
  public static class d
  {
    private File a;
    private long b;
    private long c;
    
    public static d b(File paramFile)
    {
      d locald = new d();
      locald.a(paramFile);
      paramFile = new StatFs(paramFile.getAbsolutePath());
      long l1 = paramFile.getBlockSize();
      long l2 = paramFile.getBlockCount();
      long l3 = paramFile.getAvailableBlocks();
      locald.a(l2 * l1);
      locald.b(l3 * l1);
      return locald;
    }
    
    public File a()
    {
      return this.a;
    }
    
    public void a(long paramLong)
    {
      this.b = paramLong;
    }
    
    public void a(File paramFile)
    {
      this.a = paramFile;
    }
    
    public long b()
    {
      return this.b;
    }
    
    public void b(long paramLong)
    {
      this.c = paramLong;
    }
    
    public long c()
    {
      return this.c;
    }
    
    public String toString()
    {
      return String.format("[%s : %d / %d]", new Object[] { a().getAbsolutePath(), Long.valueOf(c()), Long.valueOf(b()) });
    }
  }
  
  public static final class e
  {
    @SuppressLint({"SimpleDateFormat"})
    public static SimpleDateFormat a(String paramString)
    {
      return new SimpleDateFormat(paramString);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */