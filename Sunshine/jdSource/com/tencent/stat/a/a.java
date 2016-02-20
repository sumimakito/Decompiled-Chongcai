package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatConfig;
import com.tencent.stat.common.k;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class a
  extends e
{
  Map<String, ?> a = null;
  
  public a(Context paramContext, int paramInt, Map<String, ?> paramMap)
  {
    super(paramContext, paramInt);
    this.a = paramMap;
  }
  
  public f a()
  {
    return f.e;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    k.a(paramJSONObject, "qq", StatConfig.getQQ());
    if ((this.a != null) && (this.a.size() > 0))
    {
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
      }
    }
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */