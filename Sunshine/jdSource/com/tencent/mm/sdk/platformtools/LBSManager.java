package com.tencent.mm.sdk.platformtools;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import java.util.LinkedList;
import java.util.List;

public class LBSManager
  extends BroadcastReceiver
{
  public static final String FILTER_GPS = "filter_gps";
  public static final int INVALID_ACC = -1000;
  public static final float INVALID_LAT = -1000.0F;
  public static final float INVALID_LNG = -1000.0F;
  public static final int MM_SOURCE_HARDWARE = 0;
  public static final int MM_SOURCE_NET = 1;
  public static final int MM_SOURCE_REPORT_HARWARE = 3;
  public static final int MM_SOURCE_REPORT_NETWORK = 4;
  private static LocationCache ab;
  private Context R;
  private OnLocationGotListener ac;
  private LocationManager ad;
  private PendingIntent ae;
  private boolean af = false;
  boolean ag;
  boolean ah = false;
  boolean ai = false;
  int aj;
  private MTimerHandler ak = new MTimerHandler(new LBSManager.1(this), false);
  
  public LBSManager(Context paramContext, OnLocationGotListener paramOnLocationGotListener)
  {
    this.ac = paramOnLocationGotListener;
    this.ag = false;
    this.aj = 0;
    this.R = paramContext;
    PhoneUtil.getSignalStrength(paramContext);
    this.ad = ((LocationManager)paramContext.getSystemService("location"));
    b();
    this.ae = PendingIntent.getBroadcast(paramContext, 0, new Intent("filter_gps"), 134217728);
  }
  
  private boolean b()
  {
    boolean bool = false;
    if (this.ad != null) {}
    try
    {
      this.ad.sendExtraCommand("gps", "force_xtra_injection", null);
      this.ad.sendExtraCommand("gps", "force_time_injection", null);
      bool = true;
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  private void c()
  {
    this.ak.stopTimer();
    this.ag = true;
  }
  
  public static void setLocationCache(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0) {
      return;
    }
    Log.v("MicroMsg.LBSManager", "setLocationCache [" + paramFloat1 + "," + paramFloat2 + "] acc:" + paramInt1 + " source:" + paramInt2);
    if (ab == null) {
      ab = new LocationCache();
    }
    ab.am = paramFloat1;
    ab.an = paramFloat2;
    ab.ao = paramInt1;
    ab.time = System.currentTimeMillis();
    ab.I = paramInt2;
  }
  
  public String getTelLocation()
  {
    return PhoneUtil.getCellXml(PhoneUtil.getCellInfoList(this.R));
  }
  
  public String getWIFILocation()
  {
    Object localObject = (WifiManager)this.R.getSystemService("wifi");
    if (localObject == null)
    {
      Log.e("MicroMsg.LBSManager", "no wifi service");
      return "";
    }
    if (((WifiManager)localObject).getConnectionInfo() == null)
    {
      Log.e("MicroMsg.LBSManager", "WIFILocation wifi info null");
      return "";
    }
    LinkedList localLinkedList = new LinkedList();
    localObject = ((WifiManager)localObject).getScanResults();
    if (localObject != null)
    {
      int i = 0;
      while (i < ((List)localObject).size())
      {
        localLinkedList.add(new PhoneUtil.MacInfo(((ScanResult)((List)localObject).get(i)).BSSID, ((ScanResult)((List)localObject).get(i)).level));
        i += 1;
      }
    }
    return PhoneUtil.getMacXml(localLinkedList);
  }
  
  public boolean isGpsEnable()
  {
    try
    {
      boolean bool = this.ad.isProviderEnabled("gps");
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  public boolean isNetworkPrividerEnable()
  {
    try
    {
      boolean bool = this.ad.isProviderEnabled("network");
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Location)paramIntent.getExtras().get("location");
    this.aj += 1;
    boolean bool;
    int i;
    String str;
    if (paramContext != null)
    {
      bool = "gps".equals(paramContext.getProvider());
      if (((bool) && (paramContext.getAccuracy() <= 200.0F)) || ((!bool) && (paramContext.getAccuracy() <= 1000.0F) && (paramContext.getAccuracy() > 0.0F)))
      {
        if (!bool) {
          break label271;
        }
        i = 0;
        setLocationCache((float)paramContext.getLatitude(), (float)paramContext.getLongitude(), (int)paramContext.getAccuracy(), i);
        if ((this.ac != null) && ((!this.ag) || (!this.ah) || (!this.ai)))
        {
          paramIntent = Util.nullAsNil(getWIFILocation());
          str = Util.nullAsNil(getTelLocation());
          if (this.ag) {
            break label276;
          }
          c();
          this.ag = true;
          Log.v("MicroMsg.LBSManager", "location by provider ok:[" + paramContext.getLatitude() + " , " + paramContext.getLongitude() + "]  accuracy:" + paramContext.getAccuracy() + "  retry count:" + this.aj + " isGpsProvider:" + bool);
          this.ac.onLocationGot((float)paramContext.getLatitude(), (float)paramContext.getLongitude(), (int)paramContext.getAccuracy(), i, paramIntent, str, true);
        }
      }
    }
    label271:
    label276:
    do
    {
      return;
      i = 1;
      break;
      if ((!this.ah) && (i == 0))
      {
        this.ah = true;
        Log.v("MicroMsg.LBSManager", "report location by GPS ok:[" + paramContext.getLatitude() + " , " + paramContext.getLongitude() + "]  accuracy:" + paramContext.getAccuracy() + "  retry count:" + this.aj + " isGpsProvider:" + bool);
        this.ac.onLocationGot((float)paramContext.getLatitude(), (float)paramContext.getLongitude(), (int)paramContext.getAccuracy(), 3, paramIntent, str, true);
        return;
      }
    } while ((this.ai) || (i != 1));
    this.ai = true;
    Log.v("MicroMsg.LBSManager", "report location by Network ok:[" + paramContext.getLatitude() + " , " + paramContext.getLongitude() + "]  accuracy:" + paramContext.getAccuracy() + "  retry count:" + this.aj + " isGpsProvider:" + bool);
    this.ac.onLocationGot((float)paramContext.getLatitude(), (float)paramContext.getLongitude(), (int)paramContext.getAccuracy(), 4, paramIntent, str, true);
  }
  
  public void removeGpsUpdate()
  {
    Log.v("MicroMsg.LBSManager", "removed gps update");
    if (this.ad != null) {
      this.ad.removeUpdates(this.ae);
    }
    try
    {
      this.R.unregisterReceiver(this);
      return;
    }
    catch (Exception localException)
    {
      Log.v("MicroMsg.LBSManager", "location receiver has already unregistered");
    }
  }
  
  public void removeListener()
  {
    Log.v("MicroMsg.LBSManager", "removed gps update on destroy");
    removeGpsUpdate();
    if (this.ak != null) {
      c();
    }
    this.ac = null;
    this.R = null;
    this.ak = null;
    this.ad = null;
  }
  
  public void requestGpsUpdate()
  {
    if ((!isGpsEnable()) && (!isNetworkPrividerEnable())) {}
    do
    {
      return;
      Log.v("MicroMsg.LBSManager", "requested gps update");
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("filter_gps");
      this.R.registerReceiver(this, localIntentFilter);
      if (isGpsEnable()) {
        this.ad.requestLocationUpdates("gps", 500L, 0.0F, this.ae);
      }
    } while (!isNetworkPrividerEnable());
    this.ad.requestLocationUpdates("network", 500L, 0.0F, this.ae);
  }
  
  public void start()
  {
    String str1 = Util.nullAsNil(getWIFILocation());
    String str2 = Util.nullAsNil(getTelLocation());
    int i;
    if ((isGpsEnable()) || (isNetworkPrividerEnable()))
    {
      i = 1;
      if ((i == 0) || (this.af)) {
        break label73;
      }
      this.af = true;
      this.aj = 0;
      requestGpsUpdate();
      this.ak.startTimer(3000L);
    }
    label73:
    label241:
    label302:
    do
    {
      do
      {
        return;
        i = 0;
        break;
        if (ab == null) {
          i = 0;
        }
        for (;;)
        {
          if (i == 0) {
            break label241;
          }
          if (this.ac == null) {
            break;
          }
          this.ag = true;
          Log.v("MicroMsg.LBSManager", "location by GPS cache ok:[" + ab.am + " , " + ab.an + "]  accuracy:" + ab.ao + " source:" + ab.I);
          this.ac.onLocationGot(ab.am, ab.an, ab.ao, ab.I, str1, str2, true);
          return;
          if ((System.currentTimeMillis() - ab.time > 180000L) || (ab.ao <= 0)) {
            i = 0;
          } else {
            i = 1;
          }
        }
        this.ag = true;
        if ((!str1.equals("")) || (!str2.equals(""))) {
          break label302;
        }
        Log.v("MicroMsg.LBSManager", "get location by network failed");
      } while (this.ac == null);
      this.ac.onLocationGot(-1000.0F, -1000.0F, 64536, 0, "", "", false);
      return;
      Log.v("MicroMsg.LBSManager", "get location by network ok, macs : " + str1 + " cell ids :" + str2);
    } while (this.ac == null);
    this.ac.onLocationGot(-1000.0F, -1000.0F, 64536, 0, str1, str2, true);
  }
  
  static class LocationCache
  {
    int I = 1;
    float am = -1000.0F;
    float an = -1000.0F;
    int ao = 64536;
    long time;
  }
  
  public static abstract interface OnLocationGotListener
  {
    public abstract void onLocationGot(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, String paramString1, String paramString2, boolean paramBoolean);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/LBSManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */