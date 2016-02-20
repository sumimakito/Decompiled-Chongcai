package com.tencent.stat.a;

import android.content.Context;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class b
  extends e
{
  protected c a = new c();
  private long l = -1L;
  
  public b(Context paramContext, int paramInt, String paramString)
  {
    super(paramContext, paramInt);
    this.a.a = paramString;
  }
  
  public f a()
  {
    return f.d;
  }
  
  public void a(long paramLong)
  {
    this.l = paramLong;
  }
  
  public void a(Properties paramProperties)
  {
    if (paramProperties != null) {
      this.a.c = ((Properties)paramProperties.clone());
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null) {
      this.a.b = ((String[])paramArrayOfString.clone());
    }
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("ei", this.a.a);
    if (this.l > 0L) {
      paramJSONObject.put("du", this.l);
    }
    if ((this.a.c == null) && (this.a.b == null)) {
      paramJSONObject.put("kv", new JSONObject());
    }
    Object localObject1;
    Object localObject2;
    if (this.a.b != null)
    {
      localObject1 = new JSONArray();
      localObject2 = this.a.b;
      int j = localObject2.length;
      int i = 0;
      while (i < j)
      {
        ((JSONArray)localObject1).put(localObject2[i]);
        i += 1;
      }
      paramJSONObject.put("ar", localObject1);
    }
    if (this.a.c != null)
    {
      localObject1 = new JSONObject();
      try
      {
        localObject2 = this.a.c.entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
          ((JSONObject)localObject1).put(localEntry.getKey().toString(), localEntry.getValue().toString());
          continue;
          JSONObject localJSONObject;
          paramJSONObject.put("kv", localJSONObject);
        }
      }
      catch (Exception localException)
      {
        localJSONObject = new JSONObject(this.a.c);
      }
    }
    for (;;)
    {
      return true;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */