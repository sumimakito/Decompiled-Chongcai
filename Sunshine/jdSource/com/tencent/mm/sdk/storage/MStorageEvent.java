package com.tencent.mm.sdk.storage;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.sdk.platformtools.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class MStorageEvent<T, E>
{
  private int bP = 0;
  private final Hashtable<T, Object> bQ = new Hashtable();
  private final CopyOnWriteArraySet<E> bR = new CopyOnWriteArraySet();
  
  private void e()
  {
    Object localObject1 = new HashSet(this.bQ.keySet());
    if (((Set)localObject1).size() <= 0) {
      return;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = ((Set)localObject1).iterator();
    while (localIterator1.hasNext())
    {
      Object localObject2 = localIterator1.next();
      Object localObject3 = this.bQ.get(localObject2);
      Iterator localIterator2 = this.bR.iterator();
      while (localIterator2.hasNext())
      {
        Object localObject4 = localIterator2.next();
        if (localObject4 != null) {
          if (localObject3 == null)
          {
            Log.f("MicroMsg.SDK.MStorageEvent", "handle listener fatal unknown bug");
          }
          else if ((localObject3 instanceof Looper))
          {
            Looper localLooper = (Looper)localObject3;
            Handler localHandler = (Handler)localHashMap.get(localLooper);
            localObject1 = localHandler;
            if (localHandler == null)
            {
              localObject1 = new Handler(localLooper);
              localHashMap.put(localLooper, localObject1);
            }
            ((Handler)localObject1).post(new MStorageEvent.1(this, localObject2, localObject4));
          }
          else
          {
            processEvent(localObject2, localObject4);
          }
        }
      }
    }
    this.bR.clear();
  }
  
  public void add(T paramT, Looper paramLooper)
  {
    if (!this.bQ.containsKey(paramT))
    {
      if (paramLooper != null) {
        this.bQ.put(paramT, paramLooper);
      }
    }
    else {
      return;
    }
    this.bQ.put(paramT, new Object());
  }
  
  public void doNotify()
  {
    if (!isLocked()) {
      e();
    }
  }
  
  public boolean event(E paramE)
  {
    return this.bR.add(paramE);
  }
  
  public boolean isLocked()
  {
    return this.bP > 0;
  }
  
  public void lock()
  {
    this.bP += 1;
  }
  
  protected abstract void processEvent(T paramT, E paramE);
  
  public void remove(T paramT)
  {
    this.bQ.remove(paramT);
  }
  
  public void removeAll()
  {
    this.bQ.clear();
  }
  
  public void unlock()
  {
    this.bP -= 1;
    if (this.bP <= 0)
    {
      this.bP = 0;
      e();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/storage/MStorageEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */