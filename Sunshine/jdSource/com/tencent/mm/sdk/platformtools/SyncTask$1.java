package com.tencent.mm.sdk.platformtools;

class SyncTask$1
  implements Runnable
{
  SyncTask$1(SyncTask paramSyncTask) {}
  
  public void run()
  {
    SyncTask.a(this.be, Util.ticksToNow(SyncTask.a(this.be)));
    this.be.setResult(this.be.run());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/SyncTask$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */