package com.tencent.open.a;

import java.io.File;
import java.io.FileFilter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;

public class b
{
  private static SimpleDateFormat a = d.e.a("yyyy-MM-dd");
  private static FileFilter b = new FileFilter()
  {
    public boolean accept(File paramAnonymousFile)
    {
      if (!paramAnonymousFile.isDirectory()) {}
      while (b.a(paramAnonymousFile) <= 0L) {
        return false;
      }
      return true;
    }
  };
  private String c = "Tracer.File";
  private int d = Integer.MAX_VALUE;
  private int e = Integer.MAX_VALUE;
  private int f = 4096;
  private long g = 10000L;
  private File h;
  private int i = 10;
  private String j = ".log";
  private long k = Long.MAX_VALUE;
  private FileFilter l = new FileFilter()
  {
    public boolean accept(File paramAnonymousFile)
    {
      if (!paramAnonymousFile.getName().endsWith(b.this.i())) {}
      while (b.d(paramAnonymousFile) == -1) {
        return false;
      }
      return true;
    }
  };
  private Comparator<? super File> m = new Comparator()
  {
    public int a(File paramAnonymousFile1, File paramAnonymousFile2)
    {
      return b.d(paramAnonymousFile1) - b.d(paramAnonymousFile2);
    }
  };
  
  public b(File paramFile, int paramInt1, int paramInt2, int paramInt3, String paramString1, long paramLong1, int paramInt4, String paramString2, long paramLong2)
  {
    c(paramFile);
    b(paramInt1);
    a(paramInt2);
    c(paramInt3);
    a(paramString1);
    b(paramLong1);
    d(paramInt4);
    b(paramString2);
    c(paramLong2);
  }
  
  public static long a(File paramFile)
  {
    try
    {
      long l1 = a.parse(paramFile.getName()).getTime();
      return l1;
    }
    catch (Exception paramFile) {}
    return -1L;
  }
  
  private File d(long paramLong)
  {
    return e(a(paramLong));
  }
  
  private File e(File paramFile)
  {
    File[] arrayOfFile = b(paramFile);
    if ((arrayOfFile == null) || (arrayOfFile.length == 0))
    {
      paramFile = new File(paramFile, "1" + i());
      return paramFile;
    }
    a(arrayOfFile);
    File localFile2 = arrayOfFile[(arrayOfFile.length - 1)];
    int i1 = arrayOfFile.length - e();
    int n = i1;
    File localFile1 = localFile2;
    if ((int)localFile2.length() > d())
    {
      n = f(localFile2);
      localFile1 = new File(paramFile, n + 1 + i());
      n = i1 + 1;
    }
    i1 = 0;
    for (;;)
    {
      paramFile = localFile1;
      if (i1 >= n) {
        break;
      }
      arrayOfFile[i1].delete();
      i1 += 1;
    }
  }
  
  private static int f(File paramFile)
  {
    try
    {
      paramFile = paramFile.getName();
      int n = Integer.parseInt(paramFile.substring(0, paramFile.indexOf('.')));
      return n;
    }
    catch (Exception paramFile) {}
    return -1;
  }
  
  public File a()
  {
    return d(System.currentTimeMillis());
  }
  
  public File a(long paramLong)
  {
    File localFile = new File(g(), a.format(Long.valueOf(paramLong)));
    localFile.mkdirs();
    return localFile;
  }
  
  public void a(int paramInt)
  {
    this.d = paramInt;
  }
  
  public void a(String paramString)
  {
    this.c = paramString;
  }
  
  public File[] a(File[] paramArrayOfFile)
  {
    Arrays.sort(paramArrayOfFile, this.m);
    return paramArrayOfFile;
  }
  
  public void b()
  {
    if (g() == null) {}
    for (;;)
    {
      return;
      File[] arrayOfFile = g().listFiles(b);
      if (arrayOfFile != null)
      {
        int i1 = arrayOfFile.length;
        int n = 0;
        while (n < i1)
        {
          File localFile = arrayOfFile[n];
          long l1 = a(localFile);
          if (System.currentTimeMillis() - l1 > j()) {
            d.b.a(localFile);
          }
          n += 1;
        }
      }
    }
  }
  
  public void b(int paramInt)
  {
    this.e = paramInt;
  }
  
  public void b(long paramLong)
  {
    this.g = paramLong;
  }
  
  public void b(String paramString)
  {
    this.j = paramString;
  }
  
  public File[] b(File paramFile)
  {
    return paramFile.listFiles(this.l);
  }
  
  public String c()
  {
    return this.c;
  }
  
  public void c(int paramInt)
  {
    this.f = paramInt;
  }
  
  public void c(long paramLong)
  {
    this.k = paramLong;
  }
  
  public void c(File paramFile)
  {
    this.h = paramFile;
  }
  
  public int d()
  {
    return this.d;
  }
  
  public void d(int paramInt)
  {
    this.i = paramInt;
  }
  
  public int e()
  {
    return this.e;
  }
  
  public int f()
  {
    return this.f;
  }
  
  public File g()
  {
    return this.h;
  }
  
  public int h()
  {
    return this.i;
  }
  
  public String i()
  {
    return this.j;
  }
  
  public long j()
  {
    return this.k;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */