package com.tencent.mm.sdk.plugin;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.os.Handler;
import com.tencent.mm.sdk.platformtools.Log;
import java.util.HashMap;
import java.util.Map;

public class MMPluginOAuth
{
  private final Context R;
  private final IResult bA;
  private String bB;
  private String bC;
  private Handler handler;
  
  public MMPluginOAuth(Context paramContext, IResult paramIResult)
  {
    this.R = paramContext;
    this.bA = paramIResult;
  }
  
  public String getAccessToken()
  {
    return this.bB;
  }
  
  public String getRequestToken()
  {
    return this.bC;
  }
  
  public void start()
  {
    start(null);
  }
  
  public boolean start(Handler paramHandler)
  {
    Handler localHandler = paramHandler;
    if (paramHandler == null) {
      localHandler = new Handler();
    }
    this.handler = localHandler;
    paramHandler = this.R.getContentResolver().query(MMPluginProviderConstants.OAuth.CONTENT_URI, null, null, new String[] { this.R.getPackageName(), "request_token" }, null);
    if (paramHandler != null)
    {
      if ((paramHandler.moveToFirst()) && (paramHandler.getColumnCount() >= 2))
      {
        this.bC = paramHandler.getString(0);
        this.bB = paramHandler.getString(1);
      }
      paramHandler.close();
    }
    Log.i("MicroMsg.SDK.MMPluginOAuth", "request token = " + this.bC);
    if (this.bC == null)
    {
      Log.e("MicroMsg.SDK.MMPluginOAuth", "request token failed");
      return false;
    }
    if (this.bB != null)
    {
      this.handler.post(new MMPluginOAuth.1(this));
      return true;
    }
    Log.d("MicroMsg.SDK.MMPluginOAuth", "begin to show user oauth page");
    paramHandler = new Intent();
    paramHandler.setClassName("com.tencent.mm", "com.tencent.mm.plugin.PluginOAuthUI");
    paramHandler.putExtra("com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN", this.bC);
    paramHandler.putExtra("com.tencent.mm.sdk.plugin.Intent.PACKAGE", this.R.getPackageName());
    if (this.R.getPackageManager().resolveActivity(paramHandler, 65536) == null) {
      Log.e("MicroMsg.SDK.MMPluginOAuth", "show oauth page failed, activity not found");
    }
    for (int i = 0; i != 0; i = 1)
    {
      Receiver.register(this.bC, this);
      return true;
      if (!(this.R instanceof Activity)) {
        paramHandler.setFlags(268435456);
      }
      this.R.startActivity(paramHandler);
    }
    return false;
  }
  
  public static abstract interface IResult
  {
    public abstract void onResult(MMPluginOAuth paramMMPluginOAuth);
    
    public abstract void onSessionTimeOut();
  }
  
  public static class Receiver
    extends BroadcastReceiver
  {
    private static final Map<String, MMPluginOAuth> aA = new HashMap();
    private final MMPluginOAuth bE;
    
    public Receiver()
    {
      this(null);
    }
    
    public Receiver(MMPluginOAuth paramMMPluginOAuth)
    {
      this.bE = paramMMPluginOAuth;
    }
    
    public static void register(String paramString, MMPluginOAuth paramMMPluginOAuth)
    {
      aA.put(paramString, paramMMPluginOAuth);
    }
    
    public static void unregister(String paramString)
    {
      aA.remove(paramString);
    }
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      Log.d("MicroMsg.SDK.MMPluginOAuth", "receive oauth result");
      String str = paramIntent.getStringExtra("com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN");
      paramIntent = paramIntent.getStringExtra("com.tencent.mm.sdk.plugin.Intent.ACCESS_TOKEN");
      if (this.bE != null) {
        paramContext = this.bE;
      }
      for (;;)
      {
        new Handler().post(new MMPluginOAuth.Receiver.1(this, paramContext, paramIntent));
        return;
        paramContext = (MMPluginOAuth)aA.get(str);
        if (paramContext == null)
        {
          Log.e("MicroMsg.SDK.MMPluginOAuth", "oauth unregistered, request token = " + str);
          return;
        }
        unregister(MMPluginOAuth.a(paramContext));
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/plugin/MMPluginOAuth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */