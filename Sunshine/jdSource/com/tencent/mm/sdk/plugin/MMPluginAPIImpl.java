package com.tencent.mm.sdk.plugin;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import com.tencent.mm.algorithm.Base64;
import com.tencent.mm.sdk.channel.MMessage.CallBack;
import com.tencent.mm.sdk.channel.MMessage.Receiver;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;

public class MMPluginAPIImpl
  implements IMMPluginAPI
{
  private static final String[] columns = { "key", "type", "value" };
  private final Context R;
  private String aE;
  private MMessage.Receiver bz;
  
  public MMPluginAPIImpl(Context paramContext)
  {
    this.R = paramContext;
    this.aE = paramContext.getPackageName();
  }
  
  private void a(String paramString1, String paramString2, Intent paramIntent)
  {
    paramString2 = new Intent(paramString2);
    paramString2.setClassName("com.tencent.mm", "com.tencent.mm.plugin.PluginProxyUI");
    if (paramIntent != null) {
      paramString2.putExtras(paramIntent);
    }
    paramString2.putExtra("com.tencent.mm.sdk.plugin.Intent.ACCESS_TOKEN", paramString1);
    this.R.startActivity(paramString2);
  }
  
  private Object c(String paramString)
  {
    Object localObject = null;
    Cursor localCursor = this.R.getContentResolver().query(MMPluginProviderConstants.PluginDB.CONTENT_URI, columns, null, new String[] { paramString }, null);
    if (localCursor == null) {
      return null;
    }
    int i = localCursor.getColumnIndex("type");
    int j = localCursor.getColumnIndex("value");
    paramString = (String)localObject;
    if (localCursor.moveToFirst()) {
      paramString = MMPluginProviderConstants.Resolver.resolveObj(localCursor.getInt(i), localCursor.getString(j));
    }
    localCursor.close();
    return paramString;
  }
  
  public boolean appendNetStat(int paramInt1, int paramInt2, int paramInt3)
  {
    return Util.nullAsFalse((Boolean)c("plugindb://" + this.aE + "/action.appnetstat?recv=" + paramInt1 + "&send=" + paramInt2 + "&type=" + paramInt3));
  }
  
  public void createMsgController(String paramString) {}
  
  public void createQRCodeController(String paramString)
  {
    a(paramString, "qrcode", null);
  }
  
  public void createQRCodeController(String paramString, MMessage.CallBack paramCallBack)
  {
    createQRCodeController(paramString, paramCallBack, "*");
  }
  
  public void createQRCodeController(String paramString1, MMessage.CallBack paramCallBack, String paramString2)
  {
    a(paramString1, "qrcode", new Intent().putExtra("qrcode_pattern", paramString2));
  }
  
  public Profile getCurrentProfile(String paramString)
  {
    Object localObject = null;
    Cursor localCursor = this.R.getContentResolver().query(Profile.CONTENT_URI, Profile.columns, null, new String[] { paramString }, null);
    if (localCursor == null)
    {
      Log.e("MicroMsg.SDK.MMPluginMgrImpl", "get current profile failed");
      return null;
    }
    paramString = (String)localObject;
    if (localCursor.moveToFirst())
    {
      paramString = new Profile();
      paramString.convertFrom(localCursor);
    }
    localCursor.close();
    return paramString;
  }
  
  public String getPluginKey(String paramString)
  {
    return (String)c("plugindb://" + paramString + "/comm.pluginkey");
  }
  
  public boolean installPlugin(String paramString)
  {
    return Util.nullAsFalse((Boolean)c("plugindb://" + paramString + "/action.install"));
  }
  
  public boolean isPluginInstalled(String paramString)
  {
    return Util.nullAsFalse((Boolean)c("plugindb://" + paramString + "/comm.installed"));
  }
  
  public void jumpToBindEmail(String paramString)
  {
    a(paramString, "bindemail", new Intent());
  }
  
  public void jumpToBindMobile(String paramString)
  {
    a(paramString, "bindmobile", new Intent());
  }
  
  public void jumpToBindQQ(String paramString)
  {
    a(paramString, "bindqq", new Intent());
  }
  
  public void jumpToChattingUI(String paramString1, String paramString2)
  {
    a(paramString1, "chatting", new Intent().putExtra("Contact_User", paramString2).setFlags(67108864));
  }
  
  public void jumpToSettingView(String paramString1, String paramString2)
  {
    a(paramString1, "profile", new Intent().putExtra("Contact_User", paramString2).setFlags(67108864));
  }
  
  public boolean registerAutoMsg(String paramString1, String paramString2)
  {
    return Util.nullAsFalse((Boolean)c("plugindb://" + this.aE + "/action.automsg?pluginMsgUsername=" + paramString1 + "&pluginUsername=" + paramString2));
  }
  
  public boolean registerPattern(String paramString1, MMessage.CallBack paramCallBack, String paramString2)
  {
    return false;
  }
  
  public boolean registerQRCodePattern(String paramString1, MMessage.CallBack paramCallBack, String paramString2)
  {
    if (this.bz != null) {
      this.R.unregisterReceiver(this.bz);
    }
    this.bz = new MMessage.Receiver(paramCallBack);
    this.R.registerReceiver(this.bz, new IntentFilter("com.tencent.mm.sdk.plugin.Intent.ACTION_QRCODE_SCANNED"));
    return Util.nullAsFalse((Boolean)c("plugindb://" + paramString1 + "/action.register_qrcode_result?pattern=" + paramString2));
  }
  
  public void release()
  {
    Log.d("MicroMsg.SDK.MMPluginMgrImpl", "release plugin mgr implemetation");
    if (this.bz != null)
    {
      this.R.unregisterReceiver(this.bz);
      Log.d("MicroMsg.SDK.MMPluginMgrImpl", "unregister qrcode scan result receiver");
    }
  }
  
  public boolean sendMsgNotify(String paramString1, String paramString2, int paramInt, String paramString3, Class<?> paramClass)
  {
    if (paramClass == null) {
      return false;
    }
    return Util.nullAsFalse((Boolean)c("plugindb://" + this.aE + "/action.msgnotify?username=" + paramString1 + "&msgContent=" + paramString2 + "&msgType=" + paramInt + "&customNotify=" + paramString3 + "&intentUri=" + Base64.encodeToString(new Intent(this.R, paramClass).toUri(0).getBytes(), false)));
  }
  
  public boolean unregisterAutoMsg(String paramString1, String paramString2)
  {
    return Util.nullAsFalse((Boolean)c("plugindb://" + this.aE + "/action.unautomsg?pluginMsgUsername=" + paramString1 + "&pluginUsername=" + paramString2));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/plugin/MMPluginAPIImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */