package com.tencent.open.b;

import android.os.SystemClock;
import com.tencent.open.utils.Util;

public class d
{
  protected static d a;
  
  public static d a()
  {
    try
    {
      if (a == null) {
        a = new d();
      }
      d locald = a;
      return locald;
    }
    finally {}
  }
  
  public void a(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, Long paramLong, int paramInt2, int paramInt3, String paramString5)
  {
    long l = SystemClock.elapsedRealtime() - paramLong.longValue();
    if ((paramLong.longValue() == 0L) || (l < 0L)) {
      l = 0L;
    }
    for (;;)
    {
      paramLong = new StringBuffer("http://c.isdspeed.qq.com/code.cgi");
      paramLong.append("?domain=mobile.opensdk.com&cgi=opensdk&type=").append(paramInt1).append("&code=").append(paramInt2).append("&time=").append(l).append("&rate=").append(paramInt3).append("&uin=").append(paramString2).append("&data=");
      paramString1 = Util.composeHaboCgiReportParams(String.valueOf(paramInt1), String.valueOf(paramInt2), String.valueOf(l), String.valueOf(paramInt3), paramString1, paramString2, paramString3, paramString4, paramString5);
      g.a().a(paramLong.toString(), "GET", paramString1, true);
      return;
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    paramString1 = Util.composeViaReportParams(paramString1, paramString4, paramString5, paramString3, paramString2, paramString6, "", paramString7, paramString8, "", "", "");
    g.a().a(paramString1, paramString2, false);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    paramString1 = Util.composeViaReportParams(paramString1, paramString4, paramString5, paramString3, paramString2, paramString6, paramString7, "", "", paramString8, paramString9, paramString10);
    g.a().a(paramString1, paramString2, false);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */