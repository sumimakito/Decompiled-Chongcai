import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class xe
  implements ThreadFactory
{
  private static final AtomicInteger a = new AtomicInteger(1);
  private final ThreadGroup b;
  private final AtomicInteger c = new AtomicInteger(1);
  private final String d;
  private final int e;
  
  public xe(int paramInt, String paramString)
  {
    this.e = paramInt;
    this.b = Thread.currentThread().getThreadGroup();
    this.d = (paramString + a.getAndIncrement() + "-thread-");
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(this.b, paramRunnable, this.d + this.c.getAndIncrement(), 0L);
    if (paramRunnable.isDaemon()) {
      paramRunnable.setDaemon(false);
    }
    paramRunnable.setPriority(this.e);
    return paramRunnable;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */