import com.nostra13.universalimageloader.core.DefaultConfigurationFactory;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

public final class xm
{
  public final ImageLoaderConfiguration a;
  public Executor b;
  public Executor c;
  public Executor d;
  public final Map<Integer, String> e = Collections.synchronizedMap(new HashMap());
  public final Map<String, ReentrantLock> f = new WeakHashMap();
  public final AtomicBoolean g = new AtomicBoolean(false);
  public final AtomicBoolean h = new AtomicBoolean(false);
  public final AtomicBoolean i = new AtomicBoolean(false);
  public final Object j = new Object();
  
  public xm(ImageLoaderConfiguration paramImageLoaderConfiguration)
  {
    this.a = paramImageLoaderConfiguration;
    this.b = paramImageLoaderConfiguration.g;
    this.c = paramImageLoaderConfiguration.h;
    this.d = DefaultConfigurationFactory.createTaskDistributor();
  }
  
  public final ReentrantLock a(String paramString)
  {
    ReentrantLock localReentrantLock2 = (ReentrantLock)this.f.get(paramString);
    ReentrantLock localReentrantLock1 = localReentrantLock2;
    if (localReentrantLock2 == null)
    {
      localReentrantLock1 = new ReentrantLock();
      this.f.put(paramString, localReentrantLock1);
    }
    return localReentrantLock1;
  }
  
  public final void a()
  {
    if ((!this.a.i) && (((ExecutorService)this.b).isShutdown())) {
      this.b = DefaultConfigurationFactory.createExecutor(this.a.k, this.a.l, this.a.m);
    }
    if ((!this.a.j) && (((ExecutorService)this.c).isShutdown())) {
      this.c = DefaultConfigurationFactory.createExecutor(this.a.k, this.a.l, this.a.m);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */