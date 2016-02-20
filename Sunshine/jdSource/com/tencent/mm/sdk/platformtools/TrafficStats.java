package com.tencent.mm.sdk.platformtools;

import android.os.Process;
import java.io.File;
import java.util.Scanner;

public final class TrafficStats
{
  public static final String DEV_FILE = "/proc/self/net/dev";
  public static final String GPRSLINE = "rmnet0";
  public static final String WIFILINE = "tiwlan0";
  private static long bl;
  private static long bm;
  private static long bn;
  private static long bo;
  private static long bp;
  private static long bq;
  private static long br;
  private static long bs;
  
  public static long getMobileRx(long paramLong)
  {
    long l = paramLong;
    if (bq > paramLong) {
      l = bq;
    }
    return l;
  }
  
  public static long getMobileTx(long paramLong)
  {
    long l = paramLong;
    if (bp > paramLong) {
      l = bp;
    }
    return l;
  }
  
  public static long getWifiRx(long paramLong)
  {
    long l = paramLong;
    if (bs > paramLong) {
      l = bs;
    }
    return l;
  }
  
  public static long getWifiTx(long paramLong)
  {
    long l = paramLong;
    if (br > paramLong) {
      l = br;
    }
    return l;
  }
  
  public static void reset()
  {
    bl = -1L;
    bm = -1L;
    bn = -1L;
    bo = -1L;
    update();
  }
  
  public static void update()
  {
    long l4 = 0L;
    long l3 = 0L;
    long l2 = 0L;
    long l1 = 0L;
    for (;;)
    {
      try
      {
        localScanner = new Scanner(new File("/proc/" + Process.myPid() + "/net/dev"));
        localScanner.nextLine();
        localScanner.nextLine();
        if (!localScanner.hasNext()) {
          continue;
        }
        arrayOfString = localScanner.nextLine().split("[ :\t]+");
        if (arrayOfString[0].length() != 0) {
          continue;
        }
        i = 1;
      }
      catch (Exception localException)
      {
        Scanner localScanner;
        String[] arrayOfString;
        long l6;
        long l5;
        localException.printStackTrace();
        continue;
        int i = 0;
        continue;
      }
      l6 = l3;
      l5 = l4;
      if (!arrayOfString[0].equals("lo"))
      {
        l6 = l3;
        l5 = l4;
        if (arrayOfString[(i + 0)].startsWith("rmnet"))
        {
          l5 = l4 + Long.parseLong(arrayOfString[(i + 9)]);
          l6 = l3 + Long.parseLong(arrayOfString[(i + 1)]);
        }
      }
      l3 = l6;
      l4 = l5;
      if (!arrayOfString[(i + 0)].equals("lo"))
      {
        l3 = l6;
        l4 = l5;
        if (!arrayOfString[(i + 0)].startsWith("rmnet"))
        {
          l2 += Long.parseLong(arrayOfString[(i + 9)]);
          l1 += Long.parseLong(arrayOfString[(i + 1)]);
          l3 = l6;
          l4 = l5;
        }
      }
    }
    localScanner.close();
    if (bl < 0L)
    {
      bl = l4;
      Log.v("MicroMsg.SDK.TrafficStats", "fix loss newMobileTx %d", new Object[] { Long.valueOf(l4) });
    }
    if (bm < 0L)
    {
      bm = l3;
      Log.v("MicroMsg.SDK.TrafficStats", "fix loss newMobileRx %d", new Object[] { Long.valueOf(l3) });
    }
    if (bn < 0L)
    {
      bn = l2;
      Log.v("MicroMsg.SDK.TrafficStats", "fix loss newWifiTx %d", new Object[] { Long.valueOf(l2) });
    }
    if (bo < 0L)
    {
      bo = l1;
      Log.v("MicroMsg.SDK.TrafficStats", "fix loss newWifiRx %d", new Object[] { Long.valueOf(l1) });
    }
    if (l1 - bo < 0L) {
      Log.v("MicroMsg.SDK.TrafficStats", "minu %d", new Object[] { Long.valueOf(l1 - bo) });
    }
    if (l2 - bn < 0L) {
      Log.v("MicroMsg.SDK.TrafficStats", "minu %d", new Object[] { Long.valueOf(l2 - bn) });
    }
    if (l4 >= bl)
    {
      l5 = l4 - bl;
      bp = l5;
      if (l3 < bm) {
        break label594;
      }
      l5 = l3 - bm;
      label476:
      bq = l5;
      if (l2 < bn) {
        break label601;
      }
      l5 = l2 - bn;
      label496:
      br = l5;
      if (l1 < bo) {
        break label607;
      }
    }
    label594:
    label601:
    label607:
    for (l5 = l1 - bo;; l5 = l1)
    {
      bs = l5;
      bl = l4;
      bm = l3;
      bn = l2;
      bo = l1;
      Log.d("MicroMsg.SDK.TrafficStats", "current system traffic: wifi rx/tx=%d/%d, mobile rx/tx=%d/%d", new Object[] { Long.valueOf(bs), Long.valueOf(br), Long.valueOf(bq), Long.valueOf(bp) });
      return;
      l5 = l4;
      break;
      l5 = l3;
      break label476;
      l5 = l2;
      break label496;
    }
  }
  
  public static long updateMobileRx(long paramLong)
  {
    update();
    return getMobileRx(paramLong);
  }
  
  public static long updateMobileTx(long paramLong)
  {
    update();
    return getMobileTx(paramLong);
  }
  
  public static long updateWifiRx(long paramLong)
  {
    update();
    return getWifiRx(paramLong);
  }
  
  public static long updateWifiTx(long paramLong)
  {
    update();
    return getWifiTx(paramLong);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/TrafficStats.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */