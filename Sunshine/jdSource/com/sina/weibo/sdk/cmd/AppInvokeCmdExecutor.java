package com.sina.weibo.sdk.cmd;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.sina.weibo.sdk.utils.SDKNotification;
import com.sina.weibo.sdk.utils.SDKNotification.SDKNotificationBuilder;
import java.util.List;

class AppInvokeCmdExecutor
  implements CmdExecutor<AppInvokeCmd>
{
  private static final int NOTIFICATION_ID = 2;
  private static final int SHOW_NOTICIATION = 1;
  private Context mContext;
  private NotificationHandler mHandler;
  
  public AppInvokeCmdExecutor(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
    this.mHandler = new NotificationHandler(this.mContext.getMainLooper());
  }
  
  private static PendingIntent buildInvokePendingIntent(Context paramContext, AppInvokeCmd paramAppInvokeCmd)
  {
    Object localObject2 = paramAppInvokeCmd.getScheme();
    String str = paramAppInvokeCmd.getUrl();
    paramAppInvokeCmd = paramAppInvokeCmd.getAppPackage();
    Object localObject1 = null;
    localObject2 = buildOpenSchemeIntent((String)localObject2, paramAppInvokeCmd);
    paramAppInvokeCmd = (AppInvokeCmd)localObject1;
    if (localObject2 != null)
    {
      List localList = paramContext.getPackageManager().queryIntentActivities((Intent)localObject2, 65536);
      paramAppInvokeCmd = (AppInvokeCmd)localObject1;
      if (localList != null)
      {
        paramAppInvokeCmd = (AppInvokeCmd)localObject1;
        if (!localList.isEmpty()) {
          paramAppInvokeCmd = (AppInvokeCmd)localObject2;
        }
      }
    }
    localObject1 = paramAppInvokeCmd;
    if (paramAppInvokeCmd == null) {
      localObject1 = buildOpenUrlIntent(str);
    }
    if (localObject1 != null)
    {
      ((Intent)localObject1).setFlags(268435456);
      return PendingIntent.getActivity(paramContext, 0, (Intent)localObject1, 134217728);
    }
    return null;
  }
  
  private static Intent buildOpenSchemeIntent(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (Uri.parse(paramString1).isHierarchical()))
    {
      paramString1 = Uri.parse(paramString1);
      Intent localIntent = new Intent();
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setData(paramString1);
      localIntent.setPackage(paramString2);
      return localIntent;
    }
    return null;
  }
  
  private static Intent buildOpenUrlIntent(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      paramString = Uri.parse(paramString);
      localObject = paramString.getScheme();
    } while ((!((String)localObject).equalsIgnoreCase("http")) && (!((String)localObject).equalsIgnoreCase("https")));
    Object localObject = new Intent();
    ((Intent)localObject).setAction("android.intent.action.VIEW");
    ((Intent)localObject).setData(paramString);
    return (Intent)localObject;
  }
  
  private static void showNotification(Context paramContext, AppInvokeCmd paramAppInvokeCmd)
  {
    SDKNotification.SDKNotificationBuilder.buildUpon().setNotificationContent(paramAppInvokeCmd.getNotificationText()).setNotificationPendingIntent(buildInvokePendingIntent(paramContext, paramAppInvokeCmd)).setNotificationTitle(paramAppInvokeCmd.getNotificationTitle()).setTickerText(paramAppInvokeCmd.getNotificationText()).build(paramContext).show(2);
  }
  
  public boolean doExecutor(AppInvokeCmd paramAppInvokeCmd)
  {
    if ((paramAppInvokeCmd == null) || (TextUtils.isEmpty(paramAppInvokeCmd.getNotificationText())) || (TextUtils.isEmpty(paramAppInvokeCmd.getScheme()))) {
      return false;
    }
    Message localMessage = this.mHandler.obtainMessage();
    localMessage.what = 1;
    localMessage.obj = paramAppInvokeCmd;
    this.mHandler.sendMessageDelayed(localMessage, paramAppInvokeCmd.getNotificationDelay());
    return true;
  }
  
  private class NotificationHandler
    extends Handler
  {
    public NotificationHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      switch (paramMessage.what)
      {
      default: 
        return;
      }
      AppInvokeCmdExecutor.showNotification(AppInvokeCmdExecutor.this.mContext, (AppInvokeCmd)paramMessage.obj);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/cmd/AppInvokeCmdExecutor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */