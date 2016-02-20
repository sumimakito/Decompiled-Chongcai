package com.tencent.mm.sdk.platformtools;

class LBSManager$1
  implements MTimerHandler.CallBack
{
  LBSManager$1(LBSManager paramLBSManager) {}
  
  public boolean onTimerExpired()
  {
    Log.v("MicroMsg.LBSManager", "get location by GPS failed.");
    this.al.ag = true;
    this.al.start();
    LBSManager.a(this.al);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/LBSManager$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */