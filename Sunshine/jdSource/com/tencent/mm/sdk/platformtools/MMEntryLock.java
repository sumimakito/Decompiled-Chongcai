package com.tencent.mm.sdk.platformtools;

import java.util.HashSet;
import java.util.Set;

public final class MMEntryLock
{
  private static Set<String> aF = new HashSet();
  
  public static boolean isLocked(String paramString)
  {
    return aF.contains(paramString);
  }
  
  public static boolean lock(String paramString)
  {
    if (isLocked(paramString))
    {
      Log.d("MicroMsg.MMEntryLock", "locked-" + paramString);
      return false;
    }
    Log.d("MicroMsg.MMEntryLock", "lock-" + paramString);
    return aF.add(paramString);
  }
  
  public static void unlock(String paramString)
  {
    aF.remove(paramString);
    Log.d("MicroMsg.MMEntryLock", "unlock-" + paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/MMEntryLock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */