package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.a.d;
import com.tencent.stat.common.StatLogger;

final class g
  implements Thread.UncaughtExceptionHandler
{
  g(Context paramContext) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    n.a(this.a).a(new d(this.a, StatService.a(this.a, false), 2, paramThrowable), null);
    StatService.b().debug("MTA has caught the following uncaught exception:");
    StatService.b().error(paramThrowable);
    if (StatService.c() != null)
    {
      StatService.b().debug("Call the original uncaught exception handler.");
      StatService.c().uncaughtException(paramThread, paramThrowable);
      return;
    }
    StatService.b().debug("Original uncaught exception handler not set.");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/stat/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */