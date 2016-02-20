package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.common.k;
import org.json.JSONObject;

public class i
  extends e
{
  private static String a = null;
  private String l = null;
  private String m = null;
  
  public i(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    this.l = k.p(paramContext);
    if (a == null) {
      a = k.m(paramContext);
    }
  }
  
  public f a()
  {
    return f.h;
  }
  
  public void a(String paramString)
  {
    this.m = paramString;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    k.a(paramJSONObject, "op", a);
    k.a(paramJSONObject, "cn", this.l);
    paramJSONObject.put("sp", this.m);
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */