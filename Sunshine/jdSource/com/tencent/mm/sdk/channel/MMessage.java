package com.tencent.mm.sdk.channel;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.util.HashMap;
import java.util.Map;

public class MMessage
{
  public static void send(Context paramContext, String paramString1, String paramString2)
  {
    send(paramContext, paramString1, "com.tencent.mm.sdk.channel.Intent.ACTION_MESSAGE", paramString2);
  }
  
  public static void send(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    send(paramContext, paramString1, paramString2, paramString3, null);
  }
  
  public static boolean send(Context paramContext, String paramString1, String paramString2, String paramString3, Bundle paramBundle)
  {
    paramString1 = paramString1 + ".permission.MM_MESSAGE";
    paramString2 = new Intent(paramString2);
    if (paramBundle != null) {
      paramString2.putExtras(paramBundle);
    }
    paramBundle = paramContext.getPackageName();
    paramString2.putExtra("_mmessage_sdkVersion", 553844737);
    paramString2.putExtra("_mmessage_appPackage", paramBundle);
    paramString2.putExtra("_mmessage_content", paramString3);
    paramString2.putExtra("_mmessage_checksum", MMessageUtil.a(paramString3, paramBundle));
    paramContext.sendBroadcast(paramString2, paramString1);
    Log.d("MicroMsg.SDK.MMessage", "send mm message, intent=" + paramString2 + ", perm=" + paramString1);
    return true;
  }
  
  public static abstract interface CallBack
  {
    public abstract void handleMessage(Intent paramIntent);
  }
  
  public static final class Receiver
    extends BroadcastReceiver
  {
    public static final Map<String, MMessage.CallBack> callbacks = new HashMap();
    private final MMessage.CallBack o;
    
    public Receiver()
    {
      this(null);
    }
    
    public Receiver(MMessage.CallBack paramCallBack)
    {
      this.o = paramCallBack;
    }
    
    public static void registerCallBack(String paramString, MMessage.CallBack paramCallBack)
    {
      callbacks.put(paramString, paramCallBack);
    }
    
    public static void unregisterCallBack(String paramString)
    {
      callbacks.remove(paramString);
    }
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      Log.d("MicroMsg.SDK.MMessage", "receive intent=" + paramIntent);
      if (this.o != null)
      {
        this.o.handleMessage(paramIntent);
        Log.d("MicroMsg.SDK.MMessage", "mm message self-handled");
      }
      do
      {
        return;
        paramContext = (MMessage.CallBack)callbacks.get(paramIntent.getAction());
      } while (paramContext == null);
      paramContext.handleMessage(paramIntent);
      Log.d("MicroMsg.SDK.MMessage", "mm message handled");
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/channel/MMessage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */