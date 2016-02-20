package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import com.tencent.stat.a.e;
import com.tencent.stat.a.i;
import com.tencent.stat.common.StatLogger;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;

class j
  implements Runnable
{
  private Context a = null;
  private Map<String, Integer> b = null;
  
  public j(Context paramContext, Map<String, Integer> paramMap)
  {
    this.a = paramContext;
    if (paramMap != null) {
      this.b = paramMap;
    }
  }
  
  private NetworkMonitor a(String paramString, int paramInt)
  {
    NetworkMonitor localNetworkMonitor = new NetworkMonitor();
    Socket localSocket = new Socket();
    int i = 0;
    for (;;)
    {
      try
      {
        localNetworkMonitor.setDomain(paramString);
        localNetworkMonitor.setPort(paramInt);
        long l = System.currentTimeMillis();
        paramString = new InetSocketAddress(paramString, paramInt);
        localSocket.connect(paramString, 30000);
        localNetworkMonitor.setMillisecondsConsume(System.currentTimeMillis() - l);
        localNetworkMonitor.setRemoteIp(paramString.getAddress().getHostAddress());
        if (localSocket != null) {
          localSocket.close();
        }
        paramInt = i;
      }
      catch (IOException paramString)
      {
        i = -1;
        StatService.b().e(paramString);
        paramInt = i;
        if (localSocket == null) {
          continue;
        }
        try
        {
          localSocket.close();
          paramInt = i;
        }
        catch (Throwable paramString)
        {
          StatService.b().e(paramString);
          paramInt = i;
        }
        continue;
      }
      finally
      {
        if (localSocket == null) {
          break label176;
        }
      }
      try
      {
        localSocket.close();
        paramInt = i;
      }
      catch (Throwable paramString)
      {
        StatService.b().e(paramString);
        paramInt = i;
      }
    }
    localNetworkMonitor.setStatusCode(paramInt);
    return localNetworkMonitor;
    try
    {
      localSocket.close();
      label176:
      throw paramString;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        StatService.b().e(localThrowable);
      }
    }
  }
  
  private Map<String, Integer> a()
  {
    HashMap localHashMap = new HashMap();
    Object localObject = StatConfig.a("__MTA_TEST_SPEED__", null);
    if ((localObject == null) || (((String)localObject).trim().length() == 0)) {
      return localHashMap;
    }
    localObject = ((String)localObject).split(";");
    int j = localObject.length;
    int i = 0;
    label51:
    String[] arrayOfString;
    if (i < j)
    {
      arrayOfString = localObject[i].split(",");
      if ((arrayOfString != null) && (arrayOfString.length == 2)) {
        break label86;
      }
    }
    for (;;)
    {
      i += 1;
      break label51;
      break;
      label86:
      String str = arrayOfString[0];
      if ((str != null) && (str.trim().length() != 0)) {
        try
        {
          int k = Integer.valueOf(arrayOfString[1]).intValue();
          localHashMap.put(str, Integer.valueOf(k));
        }
        catch (NumberFormatException localNumberFormatException)
        {
          StatService.b().e(localNumberFormatException);
        }
      }
    }
  }
  
  public void run()
  {
    try
    {
      if (!com.tencent.stat.common.k.h(this.a)) {
        return;
      }
      if (this.b == null) {
        this.b = a();
      }
      if ((this.b == null) || (this.b.size() == 0))
      {
        StatService.b().w("empty domain list.");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      StatService.b().e(localThrowable);
      return;
    }
    JSONArray localJSONArray = new JSONArray();
    Object localObject = this.b.entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      String str = (String)localEntry.getKey();
      if ((str == null) || (str.length() == 0)) {
        StatService.b().w("empty domain name.");
      } else if ((Integer)localEntry.getValue() == null) {
        StatService.b().w("port is null for " + str);
      } else {
        localJSONArray.put(a((String)localEntry.getKey(), ((Integer)localEntry.getValue()).intValue()).toJSONObject());
      }
    }
    if (localJSONArray.length() != 0)
    {
      localObject = new i(this.a, StatService.a(this.a, false));
      ((i)localObject).a(localJSONArray.toString());
      if (StatService.c(this.a) != null) {
        StatService.c(this.a).post(new k((e)localObject));
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */