package com.tencent.stat;

import com.tencent.stat.common.StatLogger;
import java.util.List;

class f
  implements Runnable
{
  f(d paramd, List paramList, c paramc) {}
  
  public void run()
  {
    try
    {
      this.c.a(this.a, this.b);
      return;
    }
    catch (Throwable localThrowable)
    {
      d.c().e(localThrowable);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */