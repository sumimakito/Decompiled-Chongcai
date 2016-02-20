package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class MTimerHandler
  extends Handler
{
  private static int av;
  private final boolean aG;
  private long aH = 0L;
  private final CallBack aI;
  private final int aw;
  
  public MTimerHandler(Looper paramLooper, CallBack paramCallBack, boolean paramBoolean)
  {
    super(paramLooper);
    this.aI = paramCallBack;
    this.aw = d();
    this.aG = paramBoolean;
  }
  
  public MTimerHandler(CallBack paramCallBack, boolean paramBoolean)
  {
    this.aI = paramCallBack;
    this.aw = d();
    this.aG = paramBoolean;
  }
  
  private static int d()
  {
    if (av >= 8192) {
      av = 0;
    }
    int i = av + 1;
    av = i;
    return i;
  }
  
  protected void finalize()
  {
    stopTimer();
    super.finalize();
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((paramMessage.what != this.aw) || (this.aI == null)) {}
    while ((!this.aI.onTimerExpired()) || (!this.aG)) {
      return;
    }
    sendEmptyMessageDelayed(this.aw, this.aH);
  }
  
  public void startTimer(long paramLong)
  {
    this.aH = paramLong;
    stopTimer();
    sendEmptyMessageDelayed(this.aw, paramLong);
  }
  
  public void stopTimer()
  {
    removeMessages(this.aw);
  }
  
  public boolean stopped()
  {
    return !hasMessages(this.aw);
  }
  
  public static abstract interface CallBack
  {
    public abstract boolean onTimerExpired();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/MTimerHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */