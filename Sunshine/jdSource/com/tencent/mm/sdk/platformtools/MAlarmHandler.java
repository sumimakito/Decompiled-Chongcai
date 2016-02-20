package com.tencent.mm.sdk.platformtools;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import junit.framework.Assert;

public class MAlarmHandler
{
  public static final long NEXT_FIRE_INTERVAL = Long.MAX_VALUE;
  private static Map<Integer, MAlarmHandler> aA = new HashMap();
  private static IBumper aC;
  private static boolean aD = false;
  private static int av;
  private final CallBack aB;
  private final int aw;
  private final boolean ax;
  private long ay = 0L;
  private long az = 0L;
  
  public MAlarmHandler(CallBack paramCallBack, boolean paramBoolean)
  {
    Assert.assertTrue("bumper not initialized", aD);
    this.aB = paramCallBack;
    this.ax = paramBoolean;
    if (av >= 8192) {
      av = 0;
    }
    int i = av + 1;
    av = i;
    this.aw = i;
  }
  
  public static long fire()
  {
    LinkedList localLinkedList = new LinkedList();
    Object localObject = new HashSet();
    ((Set)localObject).addAll(aA.keySet());
    localObject = ((Set)localObject).iterator();
    long l1 = Long.MAX_VALUE;
    if (((Iterator)localObject).hasNext())
    {
      Integer localInteger = (Integer)((Iterator)localObject).next();
      MAlarmHandler localMAlarmHandler = (MAlarmHandler)aA.get(localInteger);
      if (localMAlarmHandler == null) {
        break label263;
      }
      long l3 = Util.ticksToNow(localMAlarmHandler.ay);
      long l2 = l3;
      if (l3 < 0L) {
        l2 = 0L;
      }
      if (l2 > localMAlarmHandler.az)
      {
        if ((!localMAlarmHandler.aB.onTimerExpired()) || (!localMAlarmHandler.ax)) {
          localLinkedList.add(localInteger);
        }
        for (;;)
        {
          localMAlarmHandler.ay = Util.currentTicks();
          break;
          l1 = localMAlarmHandler.az;
        }
      }
      if (localMAlarmHandler.az - l2 >= l1) {
        break label263;
      }
      l1 = localMAlarmHandler.az - l2;
    }
    label263:
    for (;;)
    {
      break;
      int i = 0;
      while (i < localLinkedList.size())
      {
        aA.remove(localLinkedList.get(i));
        i += 1;
      }
      if ((l1 == Long.MAX_VALUE) && (aC != null))
      {
        aC.cancel();
        Log.v("MicroMsg.MAlarmHandler", "cancel bumper for no more handler");
      }
      return l1;
    }
  }
  
  public static void initAlarmBumper(IBumper paramIBumper)
  {
    aD = true;
    aC = paramIBumper;
  }
  
  protected void finalize()
  {
    stopTimer();
    super.finalize();
  }
  
  public void startTimer(long paramLong)
  {
    this.az = paramLong;
    this.ay = Util.currentTicks();
    long l3 = this.az;
    Log.d("MicroMsg.MAlarmHandler", "check need prepare: check=" + l3);
    Iterator localIterator = aA.entrySet().iterator();
    paramLong = Long.MAX_VALUE;
    while (localIterator.hasNext())
    {
      MAlarmHandler localMAlarmHandler = (MAlarmHandler)((Map.Entry)localIterator.next()).getValue();
      if (localMAlarmHandler == null) {
        break label224;
      }
      long l2 = Util.ticksToNow(localMAlarmHandler.ay);
      long l1 = l2;
      if (l2 < 0L) {
        l1 = 0L;
      }
      if (l1 > localMAlarmHandler.az)
      {
        paramLong = localMAlarmHandler.az;
      }
      else
      {
        if (localMAlarmHandler.az - l1 >= paramLong) {
          break label224;
        }
        paramLong = localMAlarmHandler.az - l1;
      }
    }
    label224:
    for (;;)
    {
      break;
      if (paramLong > l3) {}
      for (int i = 1;; i = 0)
      {
        stopTimer();
        aA.put(Integer.valueOf(this.aw), this);
        if ((aC != null) && (i != 0))
        {
          Log.v("MicroMsg.MAlarmHandler", "prepare bumper");
          aC.prepare();
        }
        return;
      }
    }
  }
  
  public void stopTimer()
  {
    aA.remove(Integer.valueOf(this.aw));
  }
  
  public boolean stopped()
  {
    return !aA.containsKey(Integer.valueOf(this.aw));
  }
  
  public static abstract interface CallBack
  {
    public abstract boolean onTimerExpired();
  }
  
  public static abstract interface IBumper
  {
    public abstract void cancel();
    
    public abstract void prepare();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/MAlarmHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */