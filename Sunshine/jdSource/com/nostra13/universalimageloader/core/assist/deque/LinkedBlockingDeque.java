package com.nostra13.universalimageloader.core.assist.deque;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import xy;
import xz;
import ya;

public class LinkedBlockingDeque<E>
  extends AbstractQueue<E>
  implements BlockingDeque<E>, Serializable
{
  private static final long serialVersionUID = -387911632671998426L;
  public transient ya<E> a;
  public transient ya<E> b;
  public final ReentrantLock c = new ReentrantLock();
  private final int capacity;
  private transient int count;
  private final Condition notEmpty = this.c.newCondition();
  private final Condition notFull = this.c.newCondition();
  
  public LinkedBlockingDeque()
  {
    this(Integer.MAX_VALUE);
  }
  
  public LinkedBlockingDeque(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException();
    }
    this.capacity = paramInt;
  }
  
  public LinkedBlockingDeque(Collection<? extends E> paramCollection)
  {
    this(Integer.MAX_VALUE);
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    Object localObject;
    do
    {
      try
      {
        paramCollection = paramCollection.iterator();
        if (!paramCollection.hasNext()) {
          break;
        }
        localObject = paramCollection.next();
        if (localObject == null) {
          throw new NullPointerException();
        }
      }
      finally
      {
        localReentrantLock.unlock();
      }
    } while (linkLast(new ya(localObject)));
    throw new IllegalStateException("Deque full");
    localReentrantLock.unlock();
  }
  
  private boolean linkFirst(ya<E> paramya)
  {
    if (this.count >= this.capacity) {
      return false;
    }
    ya localya = this.a;
    paramya.c = localya;
    this.a = paramya;
    if (this.b == null) {
      this.b = paramya;
    }
    for (;;)
    {
      this.count += 1;
      this.notEmpty.signal();
      return true;
      localya.b = paramya;
    }
  }
  
  private boolean linkLast(ya<E> paramya)
  {
    if (this.count >= this.capacity) {
      return false;
    }
    ya localya = this.b;
    paramya.b = localya;
    this.b = paramya;
    if (this.a == null) {
      this.a = paramya;
    }
    for (;;)
    {
      this.count += 1;
      this.notEmpty.signal();
      return true;
      localya.c = paramya;
    }
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.count = 0;
    this.a = null;
    this.b = null;
    for (;;)
    {
      Object localObject = paramObjectInputStream.readObject();
      if (localObject == null) {
        break;
      }
      add(localObject);
    }
  }
  
  private E unlinkFirst()
  {
    ya localya1 = this.a;
    if (localya1 == null) {
      return null;
    }
    ya localya2 = localya1.c;
    Object localObject = localya1.a;
    localya1.a = null;
    localya1.c = localya1;
    this.a = localya2;
    if (localya2 == null) {
      this.b = null;
    }
    for (;;)
    {
      this.count -= 1;
      this.notFull.signal();
      return (E)localObject;
      localya2.b = null;
    }
  }
  
  private E unlinkLast()
  {
    ya localya1 = this.b;
    if (localya1 == null) {
      return null;
    }
    ya localya2 = localya1.b;
    Object localObject = localya1.a;
    localya1.a = null;
    localya1.b = localya1;
    this.b = localya2;
    if (localya2 == null) {
      this.a = null;
    }
    for (;;)
    {
      this.count -= 1;
      this.notFull.signal();
      return (E)localObject;
      localya2.c = null;
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      paramObjectOutputStream.defaultWriteObject();
      for (ya localya = this.a; localya != null; localya = localya.c) {
        paramObjectOutputStream.writeObject(localya.a);
      }
      paramObjectOutputStream.writeObject(null);
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public final void a(ya<E> paramya)
  {
    ya localya1 = paramya.b;
    ya localya2 = paramya.c;
    if (localya1 == null)
    {
      unlinkFirst();
      return;
    }
    if (localya2 == null)
    {
      unlinkLast();
      return;
    }
    localya1.c = localya2;
    localya2.b = localya1;
    paramya.a = null;
    this.count -= 1;
    this.notFull.signal();
  }
  
  public boolean add(E paramE)
  {
    addLast(paramE);
    return true;
  }
  
  public void addFirst(E paramE)
  {
    if (!offerFirst(paramE)) {
      throw new IllegalStateException("Deque full");
    }
  }
  
  public void addLast(E paramE)
  {
    if (!offerLast(paramE)) {
      throw new IllegalStateException("Deque full");
    }
  }
  
  public void clear()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      ya localya;
      for (Object localObject1 = this.a; localObject1 != null; localObject1 = localya)
      {
        ((ya)localObject1).a = null;
        localya = ((ya)localObject1).c;
        ((ya)localObject1).b = null;
        ((ya)localObject1).c = null;
      }
      this.b = null;
      this.a = null;
      this.count = 0;
      this.notFull.signalAll();
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public boolean contains(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      for (ya localya = this.a; localya != null; localya = localya.c)
      {
        boolean bool = paramObject.equals(localya.a);
        if (bool) {
          return true;
        }
      }
      return false;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public Iterator<E> descendingIterator()
  {
    return new xy(this, null);
  }
  
  public int drainTo(Collection<? super E> paramCollection)
  {
    return drainTo(paramCollection, Integer.MAX_VALUE);
  }
  
  public int drainTo(Collection<? super E> paramCollection, int paramInt)
  {
    if (paramCollection == null) {
      throw new NullPointerException();
    }
    if (paramCollection == this) {
      throw new IllegalArgumentException();
    }
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      int i = Math.min(paramInt, this.count);
      paramInt = 0;
      while (paramInt < i)
      {
        paramCollection.add(this.a.a);
        unlinkFirst();
        paramInt += 1;
      }
      return i;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E element()
  {
    return (E)getFirst();
  }
  
  public E getFirst()
  {
    Object localObject = peekFirst();
    if (localObject == null) {
      throw new NoSuchElementException();
    }
    return (E)localObject;
  }
  
  public E getLast()
  {
    Object localObject = peekLast();
    if (localObject == null) {
      throw new NoSuchElementException();
    }
    return (E)localObject;
  }
  
  public Iterator<E> iterator()
  {
    return new xz(this, null);
  }
  
  public boolean offer(E paramE)
  {
    return offerLast(paramE);
  }
  
  public boolean offer(E paramE, long paramLong, TimeUnit paramTimeUnit)
  {
    return offerLast(paramE, paramLong, paramTimeUnit);
  }
  
  public boolean offerFirst(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException();
    }
    ya localya = new ya(paramE);
    paramE = this.c;
    paramE.lock();
    try
    {
      boolean bool = linkFirst(localya);
      return bool;
    }
    finally
    {
      paramE.unlock();
    }
  }
  
  public boolean offerFirst(E paramE, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramE == null) {
      throw new NullPointerException();
    }
    paramE = new ya(paramE);
    paramLong = paramTimeUnit.toNanos(paramLong);
    paramTimeUnit = this.c;
    paramTimeUnit.lockInterruptibly();
    try
    {
      for (;;)
      {
        boolean bool = linkFirst(paramE);
        if (bool) {
          break;
        }
        if (paramLong <= 0L) {
          return false;
        }
        paramLong = this.notFull.awaitNanos(paramLong);
      }
      return true;
    }
    finally
    {
      paramTimeUnit.unlock();
    }
  }
  
  public boolean offerLast(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException();
    }
    ya localya = new ya(paramE);
    paramE = this.c;
    paramE.lock();
    try
    {
      boolean bool = linkLast(localya);
      return bool;
    }
    finally
    {
      paramE.unlock();
    }
  }
  
  public boolean offerLast(E paramE, long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramE == null) {
      throw new NullPointerException();
    }
    paramE = new ya(paramE);
    paramLong = paramTimeUnit.toNanos(paramLong);
    paramTimeUnit = this.c;
    paramTimeUnit.lockInterruptibly();
    try
    {
      for (;;)
      {
        boolean bool = linkLast(paramE);
        if (bool) {
          break;
        }
        if (paramLong <= 0L) {
          return false;
        }
        paramLong = this.notFull.awaitNanos(paramLong);
      }
      return true;
    }
    finally
    {
      paramTimeUnit.unlock();
    }
  }
  
  public E peek()
  {
    return (E)peekFirst();
  }
  
  /* Error */
  public E peekFirst()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 39	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: astore_2
    //   5: aload_2
    //   6: invokevirtual 56	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   9: aload_0
    //   10: getfield 101	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:a	Lya;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnonnull +11 -> 26
    //   18: aconst_null
    //   19: astore_1
    //   20: aload_2
    //   21: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   24: aload_1
    //   25: areturn
    //   26: aload_0
    //   27: getfield 101	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:a	Lya;
    //   30: getfield 129	ya:a	Ljava/lang/Object;
    //   33: astore_1
    //   34: goto -14 -> 20
    //   37: astore_1
    //   38: aload_2
    //   39: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	LinkedBlockingDeque
    //   13	21	1	localObject1	Object
    //   37	6	1	localObject2	Object
    //   4	35	2	localReentrantLock	ReentrantLock
    // Exception table:
    //   from	to	target	type
    //   9	14	37	finally
    //   26	34	37	finally
  }
  
  /* Error */
  public E peekLast()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 39	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: astore_2
    //   5: aload_2
    //   6: invokevirtual 56	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   9: aload_0
    //   10: getfield 105	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:b	Lya;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnonnull +11 -> 26
    //   18: aconst_null
    //   19: astore_1
    //   20: aload_2
    //   21: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   24: aload_1
    //   25: areturn
    //   26: aload_0
    //   27: getfield 105	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:b	Lya;
    //   30: getfield 129	ya:a	Ljava/lang/Object;
    //   33: astore_1
    //   34: goto -14 -> 20
    //   37: astore_1
    //   38: aload_2
    //   39: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	LinkedBlockingDeque
    //   13	21	1	localObject1	Object
    //   37	6	1	localObject2	Object
    //   4	35	2	localReentrantLock	ReentrantLock
    // Exception table:
    //   from	to	target	type
    //   9	14	37	finally
    //   26	34	37	finally
  }
  
  public E poll()
  {
    return (E)pollFirst();
  }
  
  public E poll(long paramLong, TimeUnit paramTimeUnit)
  {
    return (E)pollFirst(paramLong, paramTimeUnit);
  }
  
  public E pollFirst()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      Object localObject1 = unlinkFirst();
      return (E)localObject1;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E pollFirst(long paramLong, TimeUnit paramTimeUnit)
  {
    paramLong = paramTimeUnit.toNanos(paramLong);
    paramTimeUnit = this.c;
    paramTimeUnit.lockInterruptibly();
    try
    {
      Object localObject1;
      for (;;)
      {
        localObject1 = unlinkFirst();
        if (localObject1 != null) {
          break;
        }
        if (paramLong <= 0L) {
          return null;
        }
        paramLong = this.notEmpty.awaitNanos(paramLong);
      }
      return (E)localObject1;
    }
    finally
    {
      paramTimeUnit.unlock();
    }
  }
  
  public E pollLast()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      Object localObject1 = unlinkLast();
      return (E)localObject1;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E pollLast(long paramLong, TimeUnit paramTimeUnit)
  {
    paramLong = paramTimeUnit.toNanos(paramLong);
    paramTimeUnit = this.c;
    paramTimeUnit.lockInterruptibly();
    try
    {
      Object localObject1;
      for (;;)
      {
        localObject1 = unlinkLast();
        if (localObject1 != null) {
          break;
        }
        if (paramLong <= 0L) {
          return null;
        }
        paramLong = this.notEmpty.awaitNanos(paramLong);
      }
      return (E)localObject1;
    }
    finally
    {
      paramTimeUnit.unlock();
    }
  }
  
  public E pop()
  {
    return (E)removeFirst();
  }
  
  public void push(E paramE)
  {
    addFirst(paramE);
  }
  
  public void put(E paramE)
  {
    putLast(paramE);
  }
  
  /* Error */
  public void putFirst(E paramE)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 74	java/lang/NullPointerException
    //   7: dup
    //   8: invokespecial 75	java/lang/NullPointerException:<init>	()V
    //   11: athrow
    //   12: new 80	ya
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 83	ya:<init>	(Ljava/lang/Object;)V
    //   20: astore_2
    //   21: aload_0
    //   22: getfield 39	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   25: astore_1
    //   26: aload_1
    //   27: invokevirtual 56	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   30: aload_0
    //   31: aload_2
    //   32: invokespecial 213	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:linkFirst	(Lya;)Z
    //   35: ifne +22 -> 57
    //   38: aload_0
    //   39: getfield 47	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:notFull	Ljava/util/concurrent/locks/Condition;
    //   42: invokeinterface 250 1 0
    //   47: goto -17 -> 30
    //   50: astore_2
    //   51: aload_1
    //   52: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   55: aload_2
    //   56: athrow
    //   57: aload_1
    //   58: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   61: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	LinkedBlockingDeque
    //   0	62	1	paramE	E
    //   20	12	2	localya	ya
    //   50	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   30	47	50	finally
  }
  
  /* Error */
  public void putLast(E paramE)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 74	java/lang/NullPointerException
    //   7: dup
    //   8: invokespecial 75	java/lang/NullPointerException:<init>	()V
    //   11: athrow
    //   12: new 80	ya
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 83	ya:<init>	(Ljava/lang/Object;)V
    //   20: astore_2
    //   21: aload_0
    //   22: getfield 39	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   25: astore_1
    //   26: aload_1
    //   27: invokevirtual 56	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   30: aload_0
    //   31: aload_2
    //   32: invokespecial 87	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:linkLast	(Lya;)Z
    //   35: ifne +22 -> 57
    //   38: aload_0
    //   39: getfield 47	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:notFull	Ljava/util/concurrent/locks/Condition;
    //   42: invokeinterface 250 1 0
    //   47: goto -17 -> 30
    //   50: astore_2
    //   51: aload_1
    //   52: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   55: aload_2
    //   56: athrow
    //   57: aload_1
    //   58: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   61: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	LinkedBlockingDeque
    //   0	62	1	paramE	E
    //   20	12	2	localya	ya
    //   50	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   30	47	50	finally
  }
  
  public int remainingCapacity()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      int i = this.capacity;
      int j = this.count;
      return i - j;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E remove()
  {
    return (E)removeFirst();
  }
  
  public boolean remove(Object paramObject)
  {
    return removeFirstOccurrence(paramObject);
  }
  
  public E removeFirst()
  {
    Object localObject = pollFirst();
    if (localObject == null) {
      throw new NoSuchElementException();
    }
    return (E)localObject;
  }
  
  public boolean removeFirstOccurrence(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      for (ya localya = this.a; localya != null; localya = localya.c) {
        if (paramObject.equals(localya.a))
        {
          a(localya);
          return true;
        }
      }
      return false;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E removeLast()
  {
    Object localObject = pollLast();
    if (localObject == null) {
      throw new NoSuchElementException();
    }
    return (E)localObject;
  }
  
  public boolean removeLastOccurrence(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      for (ya localya = this.b; localya != null; localya = localya.b) {
        if (paramObject.equals(localya.a))
        {
          a(localya);
          return true;
        }
      }
      return false;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public int size()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      int i = this.count;
      return i;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public E take()
  {
    return (E)takeFirst();
  }
  
  public E takeFirst()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      for (;;)
      {
        Object localObject = unlinkFirst();
        if (localObject != null) {
          break;
        }
        this.notEmpty.await();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
    return ?;
  }
  
  public E takeLast()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      for (;;)
      {
        Object localObject = unlinkLast();
        if (localObject != null) {
          break;
        }
        this.notEmpty.await();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
    return ?;
  }
  
  public Object[] toArray()
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    try
    {
      Object[] arrayOfObject = new Object[this.count];
      int i = 0;
      ya localya = this.a;
      while (localya != null)
      {
        arrayOfObject[i] = localya.a;
        localya = localya.c;
        i += 1;
      }
      return arrayOfObject;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    ReentrantLock localReentrantLock = this.c;
    localReentrantLock.lock();
    Object localObject = paramArrayOfT;
    try
    {
      if (paramArrayOfT.length < this.count) {
        localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), this.count);
      }
      int i = 0;
      paramArrayOfT = this.a;
      while (paramArrayOfT != null)
      {
        localObject[i] = paramArrayOfT.a;
        paramArrayOfT = paramArrayOfT.c;
        i += 1;
      }
      if (localObject.length > i) {
        localObject[i] = null;
      }
      return (T[])localObject;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }
  
  /* Error */
  public String toString()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 39	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: astore 4
    //   6: aload 4
    //   8: invokevirtual 56	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   11: aload_0
    //   12: getfield 101	com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque:a	Lya;
    //   15: astore_1
    //   16: aload_1
    //   17: ifnonnull +12 -> 29
    //   20: aload 4
    //   22: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   25: ldc_w 293
    //   28: areturn
    //   29: new 295	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 296	java/lang/StringBuilder:<init>	()V
    //   36: astore 5
    //   38: aload 5
    //   40: bipush 91
    //   42: invokevirtual 300	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   45: pop
    //   46: aload_1
    //   47: getfield 129	ya:a	Ljava/lang/Object;
    //   50: astore_3
    //   51: aload_3
    //   52: astore_2
    //   53: aload_3
    //   54: aload_0
    //   55: if_acmpne +7 -> 62
    //   58: ldc_w 302
    //   61: astore_2
    //   62: aload 5
    //   64: aload_2
    //   65: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload_1
    //   70: getfield 103	ya:c	Lya;
    //   73: astore_1
    //   74: aload_1
    //   75: ifnonnull +21 -> 96
    //   78: aload 5
    //   80: bipush 93
    //   82: invokevirtual 300	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   85: invokevirtual 307	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: astore_1
    //   89: aload 4
    //   91: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   94: aload_1
    //   95: areturn
    //   96: aload 5
    //   98: bipush 44
    //   100: invokevirtual 300	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   103: bipush 32
    //   105: invokevirtual 300	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: goto -63 -> 46
    //   112: astore_1
    //   113: aload 4
    //   115: invokevirtual 78	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   118: aload_1
    //   119: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	120	0	this	LinkedBlockingDeque
    //   15	80	1	localObject1	Object
    //   112	7	1	localObject2	Object
    //   52	13	2	localObject3	Object
    //   50	4	3	localObject4	Object
    //   4	110	4	localReentrantLock	ReentrantLock
    //   36	61	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   11	16	112	finally
    //   29	46	112	finally
    //   46	51	112	finally
    //   62	74	112	finally
    //   78	89	112	finally
    //   96	109	112	finally
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */