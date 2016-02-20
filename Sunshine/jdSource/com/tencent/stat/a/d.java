package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatConfig;
import com.tencent.stat.common.k;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONObject;

public class d
  extends e
{
  private String a;
  private int l;
  private int m = 100;
  
  public d(Context paramContext, int paramInt1, int paramInt2, Throwable paramThrowable)
  {
    super(paramContext, paramInt1);
    if (paramThrowable != null) {
      paramContext = new Throwable(paramThrowable);
    }
    try
    {
      paramThrowable = paramContext.getStackTrace();
      if ((paramThrowable != null) && (paramThrowable.length > this.m))
      {
        localObject = new StackTraceElement[this.m];
        paramInt1 = 0;
        while (paramInt1 < this.m)
        {
          localObject[paramInt1] = paramThrowable[paramInt1];
          paramInt1 += 1;
        }
        paramContext.setStackTrace((StackTraceElement[])localObject);
      }
    }
    catch (Throwable paramThrowable)
    {
      for (;;)
      {
        Object localObject;
        paramThrowable.printStackTrace();
      }
    }
    paramThrowable = new StringWriter();
    localObject = new PrintWriter(paramThrowable);
    paramContext.printStackTrace((PrintWriter)localObject);
    this.a = paramThrowable.toString();
    this.l = paramInt2;
    ((PrintWriter)localObject).close();
  }
  
  public d(Context paramContext, int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    super(paramContext, paramInt1);
    if (paramString != null)
    {
      paramInt1 = paramInt3;
      if (paramInt3 <= 0) {
        paramInt1 = StatConfig.getMaxReportEventLength();
      }
      if (paramString.length() > paramInt1) {
        break label48;
      }
    }
    label48:
    for (this.a = paramString;; this.a = paramString.substring(0, paramInt1))
    {
      this.l = paramInt2;
      return;
    }
  }
  
  public f a()
  {
    return f.c;
  }
  
  public void a(long paramLong)
  {
    this.c = paramLong;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    k.a(paramJSONObject, "er", this.a);
    paramJSONObject.put("ea", this.l);
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */