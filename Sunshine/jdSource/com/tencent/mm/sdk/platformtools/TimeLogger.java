package com.tencent.mm.sdk.platformtools;

import android.os.SystemClock;
import java.util.ArrayList;

public class TimeLogger
{
  private String bg;
  private String bh;
  private boolean bi;
  ArrayList<Long> bj;
  ArrayList<String> bk;
  
  public TimeLogger(String paramString1, String paramString2)
  {
    reset(paramString1, paramString2);
  }
  
  public void addSplit(String paramString)
  {
    if (this.bi) {
      return;
    }
    long l = SystemClock.elapsedRealtime();
    this.bj.add(Long.valueOf(l));
    this.bk.add(paramString);
  }
  
  public void dumpToLog()
  {
    if (this.bi) {
      return;
    }
    Log.d(this.bg, this.bh + ": begin");
    long l2 = ((Long)this.bj.get(0)).longValue();
    int i = 1;
    long l1 = l2;
    while (i < this.bj.size())
    {
      l1 = ((Long)this.bj.get(i)).longValue();
      String str = (String)this.bk.get(i);
      long l3 = ((Long)this.bj.get(i - 1)).longValue();
      Log.d(this.bg, this.bh + ":      " + (l1 - l3) + " ms, " + str);
      i += 1;
    }
    Log.d(this.bg, this.bh + ": end, " + (l1 - l2) + " ms");
  }
  
  public void reset()
  {
    this.bi = false;
    if (this.bi) {
      return;
    }
    if (this.bj == null)
    {
      this.bj = new ArrayList();
      this.bk = new ArrayList();
    }
    for (;;)
    {
      addSplit(null);
      return;
      this.bj.clear();
      this.bk.clear();
    }
  }
  
  public void reset(String paramString1, String paramString2)
  {
    this.bg = paramString1;
    this.bh = paramString2;
    reset();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/TimeLogger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */