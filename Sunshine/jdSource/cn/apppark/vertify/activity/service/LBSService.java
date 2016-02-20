package cn.apppark.vertify.activity.service;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.free.LBSReturnVo;
import cn.apppark.vertify.base.PushWebView;
import cn.apppark.vertify.network.request.WebServicePool;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import pr;
import ps;

public class LBSService
  extends Service
{
  private final int ADMIN_WHAT = 1;
  private final int USE_WHAT = 2;
  private ArrayList<LBSReturnVo> arrLBS;
  private JsonParserDyn jsonParse;
  private ps myHandler = new ps(this, null);
  private NotificationManager myNotiManager;
  private int notiID = 0;
  private SharedPreferences sp;
  
  private boolean compilerValue(String paramString1, String paramString2)
  {
    paramString1 = paramString1.split(":");
    paramString2 = paramString2.split(":");
    int i = Integer.parseInt(paramString1[0]);
    int j = Integer.parseInt(paramString1[1]);
    int k = Integer.parseInt(paramString2[0]);
    int m = Integer.parseInt(paramString2[1]);
    if (i > k) {}
    do
    {
      return true;
      if (i < k) {
        return false;
      }
    } while (j >= m);
    return false;
  }
  
  private void getLBS()
  {
    WebServicePool localWebServicePool = new WebServicePool(2, this.myHandler, "json", "{}", "http://ws.ckj.hqch.com/", "http://www.apppark.cn//push.ws", "getPushMsg");
    localWebServicePool.doRequest(localWebServicePool);
  }
  
  private boolean isNeedToPush()
  {
    String str1 = this.sp.getString("lbs_start", "23:59");
    String str2 = this.sp.getString("lbs_end", "09:00");
    boolean bool = compilerValue(str2, str1);
    String str3 = new SimpleDateFormat("H:MM").format(Long.valueOf(System.currentTimeMillis()));
    if (bool) {
      if ((!compilerValue(str3, str1)) || (!compilerValue(str2, str3))) {}
    }
    while ((compilerValue(str3, str2)) && (compilerValue(str1, str3)))
    {
      return true;
      return false;
    }
    return false;
  }
  
  private void messagReturn(String paramString)
  {
    if ((WebServiceRequest.WEB_ERROR.equals(paramString)) || (WebServiceRequest.NO_DATA.equals(paramString))) {
      return;
    }
    Type localType = new pr(this).getType();
    JsonParserDyn localJsonParserDyn = this.jsonParse;
    this.arrLBS = JsonParserDyn.parseJson2List(paramString, localType);
    showNotifi();
  }
  
  private void setNotiType(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("id", paramString4);
    localBundle.putString("content", paramString1);
    localBundle.putString("title", paramString2);
    localBundle.putString("urlStr", paramString3);
    paramString3 = new Intent(this, PushWebView.class);
    paramString3.putExtras(localBundle);
    paramString3.setFlags(67108864);
    paramString3 = PendingIntent.getActivity(this, paramInt2, paramString3, 134217728);
    paramString4 = new Notification();
    paramString4.icon = paramInt1;
    paramString4.tickerText = paramString2;
    paramString4.flags = 16;
    paramString4.defaults = 1;
    paramString4.setLatestEventInfo(this, paramString2, paramString1, paramString3);
    this.myNotiManager.notify(paramInt2, paramString4);
  }
  
  private void showNotifi()
  {
    if (this.arrLBS != null)
    {
      int i = 0;
      while (i < this.arrLBS.size())
      {
        setNotiType(2130837674, this.notiID, ((LBSReturnVo)this.arrLBS.get(i)).getContent(), ((LBSReturnVo)this.arrLBS.get(i)).getTitle(), ((LBSReturnVo)this.arrLBS.get(i)).getUrl(), ((LBSReturnVo)this.arrLBS.get(i)).getId());
        this.notiID += 1;
        i += 1;
      }
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    this.jsonParse = new JsonParserDyn();
    this.myNotiManager = ((NotificationManager)getSystemService("notification"));
    startAlarm(1200000L, LBSService.class);
    this.sp = PreferenceManager.getDefaultSharedPreferences(this);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    stopAlarm(LBSService.class);
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    if (isNeedToPush())
    {
      paramIntent = new WebServicePool(2, this.myHandler, "json", "{}", "http://ws.ckj.hqch.com/", "http://www.apppark.cn//push.ws", "getPushMsg");
      paramIntent.doRequest(paramIntent);
    }
  }
  
  public void startAlarm(long paramLong, Class<?> paramClass)
  {
    AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
    paramClass = PendingIntent.getService(this, 0, new Intent(getApplicationContext(), paramClass), 268435456);
    localAlarmManager.setInexactRepeating(3, SystemClock.elapsedRealtime() + paramLong, paramLong, paramClass);
  }
  
  public void stopAlarm(Class<?> paramClass)
  {
    ((AlarmManager)getSystemService("alarm")).cancel(PendingIntent.getService(this, 0, new Intent(getApplicationContext(), paramClass), 134217728));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/service/LBSService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */