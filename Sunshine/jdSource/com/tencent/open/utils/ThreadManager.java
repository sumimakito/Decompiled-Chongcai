package com.tencent.open.utils;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class ThreadManager
{
  public static final Executor NETWORK_EXECUTOR = a();
  private static Handler a;
  private static Object b = new Object();
  private static Handler c;
  private static HandlerThread d;
  private static Handler e;
  private static HandlerThread f;
  
  private static Executor a()
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 11) {
      localObject = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    }
    for (;;)
    {
      if ((localObject instanceof ThreadPoolExecutor)) {
        ((ThreadPoolExecutor)localObject).setCorePoolSize(3);
      }
      return (Executor)localObject;
      try
      {
        localObject = AsyncTask.class.getDeclaredField("sExecutor");
        ((Field)localObject).setAccessible(true);
        localObject = (Executor)((Field)localObject).get(null);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        }
      }
    }
  }
  
  public static void executeOnFileThread(Runnable paramRunnable)
  {
    getFileThreadHandler().post(paramRunnable);
  }
  
  public static void executeOnNetWorkThread(Runnable paramRunnable)
  {
    try
    {
      NETWORK_EXECUTOR.execute(paramRunnable);
      return;
    }
    catch (RejectedExecutionException paramRunnable) {}
  }
  
  public static void executeOnSubThread(Runnable paramRunnable)
  {
    getSubThreadHandler().post(paramRunnable);
  }
  
  public static Handler getFileThreadHandler()
  {
    if (e == null) {}
    try
    {
      f = new HandlerThread("SDK_FILE_RW");
      f.start();
      e = new Handler(f.getLooper());
      return e;
    }
    finally {}
  }
  
  public static Looper getFileThreadLooper()
  {
    return getFileThreadHandler().getLooper();
  }
  
  public static Handler getMainHandler()
  {
    if (a == null) {}
    synchronized (b)
    {
      if (a == null) {
        a = new Handler(Looper.getMainLooper());
      }
      return a;
    }
  }
  
  public static Thread getSubThread()
  {
    if (d == null) {
      getSubThreadHandler();
    }
    return d;
  }
  
  public static Handler getSubThreadHandler()
  {
    if (c == null) {}
    try
    {
      d = new HandlerThread("SDK_SUB");
      d.start();
      c = new Handler(d.getLooper());
      return c;
    }
    finally {}
  }
  
  public static Looper getSubThreadLooper()
  {
    return getSubThreadHandler().getLooper();
  }
  
  public static void init() {}
  
  public static Executor newSerialExecutor()
  {
    return new SerialExecutor(null);
  }
  
  private static class SerialExecutor
    implements Executor
  {
    final Queue<Runnable> a = new LinkedList();
    Runnable b;
    
    protected void a()
    {
      try
      {
        Runnable localRunnable = (Runnable)this.a.poll();
        this.b = localRunnable;
        if (localRunnable != null) {
          ThreadManager.NETWORK_EXECUTOR.execute(this.b);
        }
        return;
      }
      finally {}
    }
    
    public void execute(final Runnable paramRunnable)
    {
      try
      {
        this.a.offer(new Runnable()
        {
          public void run()
          {
            try
            {
              paramRunnable.run();
              return;
            }
            finally
            {
              ThreadManager.SerialExecutor.this.a();
            }
          }
        });
        if (this.b == null) {
          a();
        }
        return;
      }
      finally
      {
        paramRunnable = finally;
        throw paramRunnable;
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/utils/ThreadManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */