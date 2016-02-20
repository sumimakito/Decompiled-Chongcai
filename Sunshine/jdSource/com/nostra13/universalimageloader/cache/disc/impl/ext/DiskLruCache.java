package com.nostra13.universalimageloader.cache.disc.impl.ext;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import wx;
import wy;
import xa;
import xb;
import xd;

public final class DiskLruCache
  implements Closeable
{
  static final Pattern a = Pattern.compile("[a-z0-9_-]{1,64}");
  private static final OutputStream r = new wy();
  final ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final File c;
  private final File d;
  private final File e;
  private final File f;
  private final int g;
  private long h;
  private int i;
  private final int j;
  private long k = 0L;
  private int l = 0;
  private Writer m;
  private final LinkedHashMap<String, xa> n = new LinkedHashMap(0, 0.75F, true);
  private int o;
  private long p = 0L;
  private final Callable<Void> q = new wx(this);
  
  private DiskLruCache(File paramFile, int paramInt1, int paramInt2, long paramLong, int paramInt3)
  {
    this.c = paramFile;
    this.g = 1;
    this.d = new File(paramFile, "journal");
    this.e = new File(paramFile, "journal.tmp");
    this.f = new File(paramFile, "journal.bkp");
    this.j = 1;
    this.h = paramLong;
    this.i = paramInt3;
  }
  
  private DiskLruCache.Editor a(String paramString, long paramLong)
  {
    try
    {
      if (this.m == null) {
        throw new IllegalStateException("cache is closed");
      }
    }
    finally {}
    d(paramString);
    xa localxa = (xa)this.n.get(paramString);
    if (paramLong != -1L) {
      if (localxa != null)
      {
        long l1 = localxa.e;
        if (l1 == paramLong) {}
      }
      else
      {
        paramString = null;
        return paramString;
      }
    }
    if (localxa == null)
    {
      localxa = new xa(this, paramString, null);
      this.n.put(paramString, localxa);
    }
    for (;;)
    {
      DiskLruCache.Editor localEditor = new DiskLruCache.Editor(this, localxa, null);
      localxa.d = localEditor;
      this.m.write("DIRTY " + paramString + '\n');
      this.m.flush();
      paramString = localEditor;
      break;
      localEditor = localxa.d;
      if (localEditor != null)
      {
        paramString = null;
        break;
      }
    }
  }
  
  public static DiskLruCache a(File paramFile, int paramInt1, int paramInt2, long paramLong, int paramInt3)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt3 <= 0) {
      throw new IllegalArgumentException("maxFileCount <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists()) {
        break label151;
      }
      ((File)localObject).delete();
    }
    label151:
    do
    {
      localObject = new DiskLruCache(paramFile, 1, 1, paramLong, paramInt3);
      if (!((DiskLruCache)localObject).d.exists()) {
        break label225;
      }
      try
      {
        ((DiskLruCache)localObject).f();
        ((DiskLruCache)localObject).g();
        ((DiskLruCache)localObject).m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(((DiskLruCache)localObject).d, true), xd.a));
        return (DiskLruCache)localObject;
      }
      catch (IOException localIOException)
      {
        System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        ((DiskLruCache)localObject).close();
        xd.a(((DiskLruCache)localObject).c);
      }
    } while (((File)localObject).renameTo(localFile));
    throw new IOException();
    label225:
    paramFile.mkdirs();
    paramFile = new DiskLruCache(paramFile, 1, 1, paramLong, paramInt3);
    paramFile.h();
    return paramFile;
  }
  
  private void a(DiskLruCache.Editor paramEditor, boolean paramBoolean)
  {
    int i2 = 1;
    xa localxa;
    try
    {
      localxa = DiskLruCache.Editor.a(paramEditor);
      if (localxa.d != paramEditor) {
        throw new IllegalStateException();
      }
    }
    finally {}
    if ((paramBoolean) && (!localxa.c))
    {
      i1 = 0;
      while (i1 < this.j)
      {
        if (DiskLruCache.Editor.b(paramEditor)[i1] == 0)
        {
          paramEditor.abort();
          throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
        }
        if (!localxa.b(i1).exists())
        {
          paramEditor.abort();
          return;
        }
        i1 += 1;
      }
    }
    int i1 = 0;
    label121:
    long l1;
    if (i1 < this.j)
    {
      paramEditor = localxa.b(i1);
      if (paramBoolean)
      {
        if (paramEditor.exists())
        {
          File localFile = localxa.a(i1);
          paramEditor.renameTo(localFile);
          l1 = localxa.b[i1];
          long l2 = localFile.length();
          localxa.b[i1] = l2;
          this.k = (l2 + (this.k - l1));
          this.l += 1;
        }
      }
      else if ((paramEditor.exists()) && (!paramEditor.delete())) {
        throw new IOException();
      }
    }
    else
    {
      this.o += 1;
      localxa.d = null;
      if ((localxa.c | paramBoolean))
      {
        localxa.c = true;
        this.m.write("CLEAN " + localxa.a + localxa.a() + '\n');
        if (paramBoolean)
        {
          l1 = this.p;
          this.p = (1L + l1);
          localxa.e = l1;
        }
        label334:
        this.m.flush();
        if ((this.k <= this.h) && (this.l <= this.i))
        {
          if ((this.o < 2000) || (this.o < this.n.size())) {
            break label458;
          }
          i1 = i2;
          break label470;
        }
      }
    }
    for (;;)
    {
      this.b.submit(this.q);
      break;
      this.n.remove(localxa.a);
      this.m.write("REMOVE " + localxa.a + '\n');
      break label334;
      label458:
      i1 = 0;
      break label470;
      i1 += 1;
      break label121;
      label470:
      if (i1 == 0) {
        break;
      }
    }
  }
  
  private static void d(String paramString)
  {
    if (!a.matcher(paramString).matches()) {
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + paramString + "\"");
    }
  }
  
  private void f()
  {
    xb localxb = new xb(new FileInputStream(this.d), xd.a);
    int i1;
    label534:
    try
    {
      String str1 = localxb.a();
      localObject3 = localxb.a();
      localObject4 = localxb.a();
      str2 = localxb.a();
      String str3 = localxb.a();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(localObject3)) || (!Integer.toString(this.g).equals(localObject4)) || (!Integer.toString(this.j).equals(str2)) || (!"".equals(str3))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + (String)localObject3 + ", " + str2 + ", " + str3 + "]");
      }
    }
    finally
    {
      Object localObject3;
      Object localObject4;
      String str2;
      xd.a(localxb);
      throw ((Throwable)localObject1);
      i1 = 0;
      int i2;
      try
      {
        str2 = localxb.a();
        i2 = str2.indexOf(' ');
        if (i2 == -1) {
          throw new IOException("unexpected journal line: " + str2);
        }
      }
      catch (EOFException localEOFException)
      {
        this.o = (i1 - this.n.size());
        xd.a(localxb);
        return;
      }
      int i3 = i2 + 1;
      int i4 = str2.indexOf(' ', i3);
      Object localObject2;
      if (i4 == -1)
      {
        localObject2 = str2.substring(i3);
        if ((i2 == 6) && (str2.startsWith("REMOVE")))
        {
          this.n.remove(localObject2);
          break label534;
        }
      }
      else
      {
        localObject2 = str2.substring(i3, i4);
      }
      for (;;)
      {
        localObject4 = (xa)this.n.get(localObject2);
        localObject3 = localObject4;
        if (localObject4 == null)
        {
          localObject3 = new xa(this, (String)localObject2, null);
          this.n.put(localObject2, localObject3);
        }
        if ((i4 != -1) && (i2 == 5) && (str2.startsWith("CLEAN")))
        {
          localObject2 = str2.substring(i4 + 1).split(" ");
          ((xa)localObject3).c = true;
          ((xa)localObject3).d = null;
          ((xa)localObject3).a((String[])localObject2);
          break;
        }
        if ((i4 == -1) && (i2 == 5) && (str2.startsWith("DIRTY")))
        {
          ((xa)localObject3).d = new DiskLruCache.Editor(this, (xa)localObject3, null);
          break;
        }
        if ((i4 == -1) && (i2 == 4) && (str2.startsWith("READ"))) {
          break;
        }
        throw new IOException("unexpected journal line: " + str2);
      }
    }
  }
  
  private void g()
  {
    Object localObject = this.e;
    if ((((File)localObject).exists()) && (!((File)localObject).delete())) {
      throw new IOException();
    }
    localObject = this.n.values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      xa localxa = (xa)((Iterator)localObject).next();
      int i1;
      if (localxa.d == null)
      {
        i1 = 0;
        while (i1 < this.j)
        {
          this.k += localxa.b[i1];
          this.l += 1;
          i1 += 1;
        }
      }
      else
      {
        localxa.d = null;
        i1 = 0;
        while (i1 < this.j)
        {
          File localFile = localxa.a(i1);
          if ((localFile.exists()) && (!localFile.delete())) {
            throw new IOException();
          }
          localFile = localxa.b(i1);
          if ((localFile.exists()) && (!localFile.delete())) {
            throw new IOException();
          }
          i1 += 1;
        }
        ((Iterator)localObject).remove();
      }
    }
  }
  
  private void h()
  {
    for (;;)
    {
      try
      {
        if (this.m != null) {
          this.m.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), xd.a));
        xa localxa;
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.g));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.j));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = this.n.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localxa = (xa)localIterator.next();
          if (localxa.d != null)
          {
            localBufferedWriter.write("DIRTY " + localxa.a + '\n');
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        ((Writer)localObject1).write("CLEAN " + localxa.a + localxa.a() + '\n');
      }
      finally {}
    }
    ((Writer)localObject1).close();
    if (this.d.exists())
    {
      File localFile1 = this.d;
      File localFile2 = this.f;
      if ((localFile2.exists()) && (!localFile2.delete())) {
        throw new IOException();
      }
      if (!localFile1.renameTo(localFile2)) {
        throw new IOException();
      }
    }
    if (!this.e.renameTo(this.d)) {
      throw new IOException();
    }
    this.f.delete();
    this.m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), xd.a));
  }
  
  private void i()
  {
    while (this.k > this.h) {
      c((String)((Map.Entry)this.n.entrySet().iterator().next()).getKey());
    }
  }
  
  private void j()
  {
    while (this.l > this.i) {
      c((String)((Map.Entry)this.n.entrySet().iterator().next()).getKey());
    }
  }
  
  public final DiskLruCache.Snapshot a(String paramString)
  {
    int i2 = 0;
    try
    {
      if (this.m == null) {
        throw new IllegalStateException("cache is closed");
      }
    }
    finally {}
    d(paramString);
    xa localxa = (xa)this.n.get(paramString);
    if (localxa == null) {
      paramString = null;
    }
    int i1;
    for (;;)
    {
      return paramString;
      if (!localxa.c)
      {
        paramString = null;
      }
      else
      {
        File[] arrayOfFile = new File[this.j];
        InputStream[] arrayOfInputStream = new InputStream[this.j];
        i1 = 0;
        for (;;)
        {
          try
          {
            if (i1 >= this.j) {
              continue;
            }
            File localFile = localxa.a(i1);
            arrayOfFile[i1] = localFile;
            arrayOfInputStream[i1] = new FileInputStream(localFile);
            i1 += 1;
            continue;
          }
          catch (FileNotFoundException paramString)
          {
            i1 = i2;
            continue;
            paramString = null;
          }
          if ((i1 >= this.j) || (arrayOfInputStream[i1] == null)) {
            continue;
          }
          xd.a(arrayOfInputStream[i1]);
          i1 += 1;
        }
        this.o += 1;
        this.m.append("READ " + paramString + '\n');
        if ((this.o >= 2000) && (this.o >= this.n.size())) {}
        for (i1 = 1;; i1 = 0)
        {
          if (i1 != 0) {
            this.b.submit(this.q);
          }
          paramString = new DiskLruCache.Snapshot(this, paramString, localxa.e, arrayOfFile, arrayOfInputStream, localxa.b, null);
          break;
        }
      }
    }
  }
  
  public final File a()
  {
    return this.c;
  }
  
  public final long b()
  {
    try
    {
      long l1 = this.h;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final DiskLruCache.Editor b(String paramString)
  {
    return a(paramString, -1L);
  }
  
  public final int c()
  {
    try
    {
      int i1 = this.i;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean c(String paramString)
  {
    int i2 = 0;
    try
    {
      if (this.m == null) {
        throw new IllegalStateException("cache is closed");
      }
    }
    finally {}
    d(paramString);
    xa localxa = (xa)this.n.get(paramString);
    Object localObject;
    if (localxa != null)
    {
      localObject = localxa.d;
      if (localObject == null) {
        break label68;
      }
    }
    for (boolean bool = false;; bool = true)
    {
      return bool;
      label68:
      int i1 = 0;
      while (i1 < this.j)
      {
        localObject = localxa.a(i1);
        if ((((File)localObject).exists()) && (!((File)localObject).delete())) {
          throw new IOException("failed to delete " + localObject);
        }
        this.k -= localxa.b[i1];
        this.l -= 1;
        localxa.b[i1] = 0L;
        i1 += 1;
      }
      this.o += 1;
      this.m.append("REMOVE " + paramString + '\n');
      this.n.remove(paramString);
      i1 = i2;
      if (this.o >= 2000)
      {
        i1 = i2;
        if (this.o >= this.n.size()) {
          i1 = 1;
        }
      }
      if (i1 != 0) {
        this.b.submit(this.q);
      }
    }
  }
  
  public final void close()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = this.m;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(this.n.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          xa localxa = (xa)((Iterator)localObject1).next();
          if (localxa.d == null) {
            continue;
          }
          localxa.d.abort();
          continue;
        }
        i();
      }
      finally {}
      j();
      this.m.close();
      this.m = null;
    }
  }
  
  public final void d()
  {
    close();
    xd.a(this.c);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */