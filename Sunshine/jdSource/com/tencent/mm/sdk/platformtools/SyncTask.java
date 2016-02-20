package com.tencent.mm.sdk.platformtools;

public abstract class SyncTask<R>
{
  private final long ba;
  private long bb;
  private long bc;
  private Runnable bd = new SyncTask.1(this);
  private Object lock = new Object();
  private R result;
  
  public SyncTask()
  {
    this(0L, null);
  }
  
  public SyncTask(long paramLong, R paramR)
  {
    this.ba = paramLong;
    this.result = paramR;
  }
  
  /* Error */
  public R exec(android.os.Handler arg1)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +15 -> 16
    //   4: ldc 51
    //   6: ldc 53
    //   8: invokestatic 59	com/tencent/mm/sdk/platformtools/Log:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   11: aload_0
    //   12: invokevirtual 63	com/tencent/mm/sdk/platformtools/SyncTask:run	()Ljava/lang/Object;
    //   15: areturn
    //   16: invokestatic 69	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   19: invokevirtual 73	java/lang/Thread:getId	()J
    //   22: aload_1
    //   23: invokevirtual 79	android/os/Handler:getLooper	()Landroid/os/Looper;
    //   26: invokevirtual 84	android/os/Looper:getThread	()Ljava/lang/Thread;
    //   29: invokevirtual 73	java/lang/Thread:getId	()J
    //   32: lcmp
    //   33: ifne +15 -> 48
    //   36: ldc 51
    //   38: ldc 86
    //   40: invokestatic 59	com/tencent/mm/sdk/platformtools/Log:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_0
    //   44: invokevirtual 63	com/tencent/mm/sdk/platformtools/SyncTask:run	()Ljava/lang/Object;
    //   47: areturn
    //   48: aload_0
    //   49: invokestatic 91	com/tencent/mm/sdk/platformtools/Util:currentTicks	()J
    //   52: putfield 42	com/tencent/mm/sdk/platformtools/SyncTask:bb	J
    //   55: aload_1
    //   56: aload_0
    //   57: getfield 32	com/tencent/mm/sdk/platformtools/SyncTask:bd	Ljava/lang/Runnable;
    //   60: invokevirtual 95	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   63: pop
    //   64: aload_0
    //   65: getfield 25	com/tencent/mm/sdk/platformtools/SyncTask:lock	Ljava/lang/Object;
    //   68: astore_1
    //   69: aload_1
    //   70: monitorenter
    //   71: aload_0
    //   72: getfield 25	com/tencent/mm/sdk/platformtools/SyncTask:lock	Ljava/lang/Object;
    //   75: aload_0
    //   76: getfield 34	com/tencent/mm/sdk/platformtools/SyncTask:ba	J
    //   79: invokevirtual 99	java/lang/Object:wait	(J)V
    //   82: aload_1
    //   83: monitorexit
    //   84: aload_0
    //   85: getfield 42	com/tencent/mm/sdk/platformtools/SyncTask:bb	J
    //   88: invokestatic 103	com/tencent/mm/sdk/platformtools/Util:ticksToNow	(J)J
    //   91: lstore_2
    //   92: ldc 51
    //   94: ldc 105
    //   96: iconst_4
    //   97: anewarray 5	java/lang/Object
    //   100: dup
    //   101: iconst_0
    //   102: new 107	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   109: aload_0
    //   110: getfield 36	com/tencent/mm/sdk/platformtools/SyncTask:result	Ljava/lang/Object;
    //   113: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   116: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: aastore
    //   120: dup
    //   121: iconst_1
    //   122: lload_2
    //   123: invokestatic 122	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   126: aastore
    //   127: dup
    //   128: iconst_2
    //   129: aload_0
    //   130: getfield 45	com/tencent/mm/sdk/platformtools/SyncTask:bc	J
    //   133: invokestatic 122	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   136: aastore
    //   137: dup
    //   138: iconst_3
    //   139: lload_2
    //   140: aload_0
    //   141: getfield 45	com/tencent/mm/sdk/platformtools/SyncTask:bc	J
    //   144: lsub
    //   145: invokestatic 122	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   148: aastore
    //   149: invokestatic 126	com/tencent/mm/sdk/platformtools/Log:v	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   152: aload_0
    //   153: getfield 36	com/tencent/mm/sdk/platformtools/SyncTask:result	Ljava/lang/Object;
    //   156: areturn
    //   157: astore 4
    //   159: aload_1
    //   160: monitorexit
    //   161: aload 4
    //   163: athrow
    //   164: astore_1
    //   165: aload_1
    //   166: invokevirtual 129	java/lang/InterruptedException:printStackTrace	()V
    //   169: goto -85 -> 84
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	SyncTask
    //   91	49	2	l	long
    //   157	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   71	84	157	finally
    //   64	71	164	java/lang/InterruptedException
    //   159	164	164	java/lang/InterruptedException
  }
  
  protected abstract R run();
  
  public void setResult(R arg1)
  {
    this.result = ???;
    synchronized (this.lock)
    {
      this.lock.notify();
      return;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/SyncTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */