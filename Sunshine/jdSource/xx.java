import com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;

public abstract class xx
  implements Iterator<E>
{
  ya<E> a;
  E b;
  private ya<E> d;
  
  /* Error */
  xx(LinkedBlockingDeque paramLinkedBlockingDeque)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield 20	xx:c	Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
    //   5: aload_0
    //   6: invokespecial 23	java/lang/Object:<init>	()V
    //   9: aload_1
    //   10: getfield 28	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   13: astore_2
    //   14: aload_2
    //   15: invokevirtual 33	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   18: aload_0
    //   19: aload_0
    //   20: invokevirtual 36	xx:a	()Lya;
    //   23: putfield 38	xx:a	Lya;
    //   26: aload_0
    //   27: getfield 38	xx:a	Lya;
    //   30: ifnonnull +15 -> 45
    //   33: aconst_null
    //   34: astore_1
    //   35: aload_0
    //   36: aload_1
    //   37: putfield 40	xx:b	Ljava/lang/Object;
    //   40: aload_2
    //   41: invokevirtual 43	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   44: return
    //   45: aload_0
    //   46: getfield 38	xx:a	Lya;
    //   49: getfield 47	ya:a	Ljava/lang/Object;
    //   52: astore_1
    //   53: goto -18 -> 35
    //   56: astore_1
    //   57: aload_2
    //   58: invokevirtual 43	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	xx
    //   0	63	1	paramLinkedBlockingDeque	LinkedBlockingDeque
    //   13	45	2	localReentrantLock	ReentrantLock
    // Exception table:
    //   from	to	target	type
    //   18	33	56	finally
    //   35	40	56	finally
    //   45	53	56	finally
  }
  
  private void b()
  {
    Object localObject4 = null;
    ReentrantLock localReentrantLock = this.c.c;
    localReentrantLock.lock();
    label101:
    for (;;)
    {
      try
      {
        Object localObject3 = this.a;
        ya localya = a((ya)localObject3);
        if (localya == null)
        {
          localObject1 = null;
          this.a = ((ya)localObject1);
          if (this.a == null)
          {
            localObject1 = localObject4;
            this.b = localObject1;
          }
        }
        else
        {
          localObject1 = localya;
          if (localya.a != null) {
            continue;
          }
          if (localya != localObject3) {
            break label101;
          }
          localObject1 = a();
          continue;
        }
        Object localObject1 = this.a.a;
        continue;
        localObject3 = localya;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }
  
  abstract ya<E> a();
  
  abstract ya<E> a(ya<E> paramya);
  
  public boolean hasNext()
  {
    return this.a != null;
  }
  
  public E next()
  {
    if (this.a == null) {
      throw new NoSuchElementException();
    }
    this.d = this.a;
    Object localObject = this.b;
    b();
    return (E)localObject;
  }
  
  public void remove()
  {
    ya localya = this.d;
    if (localya == null) {
      throw new IllegalStateException();
    }
    this.d = null;
    ReentrantLock localReentrantLock = this.c.c;
    localReentrantLock.lock();
    try
    {
      if (localya.a != null) {
        this.c.a(localya);
      }
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */