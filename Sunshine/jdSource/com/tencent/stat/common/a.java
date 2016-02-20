package com.tencent.stat.common;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class a
{
  static c a;
  private static StatLogger d = ;
  private static JSONObject e = null;
  Integer b = null;
  String c = null;
  
  public a(Context paramContext)
  {
    try
    {
      a(paramContext);
      this.b = k.q(paramContext.getApplicationContext());
      this.c = k.p(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      d.e(paramContext);
    }
  }
  
  static c a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new c(paramContext.getApplicationContext(), null);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  public static void a(Context paramContext, Map<String, String> paramMap)
  {
    if (paramMap == null) {}
    for (;;)
    {
      return;
      paramContext = new HashMap(paramMap);
      if (e == null) {
        e = new JSONObject();
      }
      paramContext = paramContext.entrySet().iterator();
      while (paramContext.hasNext())
      {
        paramMap = (Map.Entry)paramContext.next();
        e.put((String)paramMap.getKey(), paramMap.getValue());
      }
    }
  }
  
  public void a(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (a != null) {
        a.a(localJSONObject);
      }
      k.a(localJSONObject, "cn", this.c);
      if (this.b != null) {
        localJSONObject.put("tn", this.b);
      }
      paramJSONObject.put("ev", localJSONObject);
      if ((e != null) && (e.length() > 0)) {
        paramJSONObject.put("eva", e);
      }
      return;
    }
    catch (Throwable paramJSONObject)
    {
      d.e(paramJSONObject);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/common/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */