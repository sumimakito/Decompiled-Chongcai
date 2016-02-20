package com.tencent.open.b;

import com.tencent.open.utils.Global;
import com.tencent.open.utils.OpenConfig;

public class e
{
  public static int a()
  {
    int j = OpenConfig.getInstance(Global.getContext(), null).getInt("Common_HttpRetryCount");
    int i = j;
    if (j == 0) {
      i = 2;
    }
    return i;
  }
  
  public static int a(String paramString)
  {
    int j = OpenConfig.getInstance(Global.getContext(), paramString).getInt("Common_BusinessReportFrequency");
    int i = j;
    if (j == 0) {
      i = 100;
    }
    return i;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */