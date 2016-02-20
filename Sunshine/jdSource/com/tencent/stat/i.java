package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import com.tencent.stat.a.d;
import com.tencent.stat.a.e;
import com.tencent.stat.common.StatLogger;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashSet;

class i
  implements Runnable
{
  private Context a = null;
  
  public i(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public void run()
  {
    Iterator localIterator = StatNativeCrashReport.a(this.a).iterator();
    while (localIterator.hasNext())
    {
      File localFile = (File)localIterator.next();
      Object localObject = StatNativeCrashReport.a(localFile);
      localObject = new d(this.a, StatService.a(this.a, false), (String)localObject, 3, 10240);
      ((d)localObject).a(StatNativeCrashReport.b(localFile));
      if (StatService.c(this.a) != null) {
        StatService.c(this.a).post(new k((e)localObject));
      }
      localFile.delete();
      StatService.b().d("delete tombstone file:" + localFile.getAbsolutePath().toString());
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */