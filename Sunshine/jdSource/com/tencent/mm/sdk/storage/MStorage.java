package com.tencent.mm.sdk.storage;

import android.os.Looper;

public abstract class MStorage
{
  private final MStorageEvent<IOnStorageChange, String> bM = new MStorage.1(this);
  private final MStorageEvent<IOnStorageLoaded, String> bN = new MStorage.2(this);
  
  public void add(IOnStorageChange paramIOnStorageChange)
  {
    this.bM.add(paramIOnStorageChange, Looper.getMainLooper());
  }
  
  public void addLoadedListener(IOnStorageLoaded paramIOnStorageLoaded)
  {
    this.bN.add(paramIOnStorageLoaded, Looper.getMainLooper());
  }
  
  public void doNotify()
  {
    this.bM.event("*");
    this.bM.doNotify();
  }
  
  public void doNotify(String paramString)
  {
    this.bM.event(paramString);
    this.bM.doNotify();
  }
  
  public void lock()
  {
    this.bM.lock();
  }
  
  public void remove(IOnStorageChange paramIOnStorageChange)
  {
    this.bM.remove(paramIOnStorageChange);
  }
  
  public void removeLoadedListener(IOnStorageLoaded paramIOnStorageLoaded)
  {
    this.bN.remove(paramIOnStorageLoaded);
  }
  
  public void unlock()
  {
    this.bM.unlock();
  }
  
  public static abstract interface IOnStorageChange
  {
    public abstract void onNotifyChange(String paramString);
  }
  
  public static abstract interface IOnStorageLoaded
  {
    public abstract void onNotifyLoaded();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/storage/MStorage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */