package com.sina.weibo.sdk.utils;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.Builder;

public class SDKNotification
{
  private Context mContext;
  private Notification mNotification;
  
  private SDKNotification(Context paramContext, Notification paramNotification)
  {
    this.mContext = paramContext.getApplicationContext();
    this.mNotification = paramNotification;
  }
  
  public void show(int paramInt)
  {
    if (this.mNotification != null) {
      ((NotificationManager)this.mContext.getSystemService("notification")).notify(paramInt, this.mNotification);
    }
  }
  
  public static class SDKNotificationBuilder
  {
    private String mNotificationContent;
    private PendingIntent mNotificationPendingIntent;
    private String mNotificationTitle;
    private Uri mSoundUri;
    private String mTickerText;
    private long[] mVibrate;
    
    public static SDKNotificationBuilder buildUpon()
    {
      return new SDKNotificationBuilder();
    }
    
    private static int getNotificationIcon(Context paramContext)
    {
      int i = getResourceId(paramContext, "com_sina_weibo_sdk_weibo_logo", "drawable");
      if (i > 0) {
        return i;
      }
      return 17301659;
    }
    
    private static int getResourceId(Context paramContext, String paramString1, String paramString2)
    {
      String str = paramContext.getApplicationContext().getPackageName();
      paramContext = paramContext.getPackageManager();
      try
      {
        int i = paramContext.getResourcesForApplication(str).getIdentifier(paramString1, paramString2, str);
        return i;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        paramContext.printStackTrace();
      }
      return 0;
    }
    
    public SDKNotification build(Context paramContext)
    {
      NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(paramContext);
      localBuilder.setAutoCancel(true);
      localBuilder.setContentIntent(this.mNotificationPendingIntent);
      localBuilder.setTicker(this.mTickerText);
      localBuilder.setSmallIcon(getNotificationIcon(paramContext));
      localBuilder.setWhen(System.currentTimeMillis());
      if (this.mSoundUri != null) {
        localBuilder.setSound(this.mSoundUri);
      }
      if (this.mVibrate != null) {
        localBuilder.setVibrate(this.mVibrate);
      }
      localBuilder.setLargeIcon(((BitmapDrawable)ResourceManager.getDrawable(paramContext, "weibosdk_notification_icon.png")).getBitmap());
      localBuilder.setContentTitle(this.mNotificationTitle);
      localBuilder.setContentText(this.mNotificationContent);
      return new SDKNotification(paramContext, localBuilder.build(), null);
    }
    
    public SDKNotificationBuilder setNotificationContent(String paramString)
    {
      this.mNotificationContent = paramString;
      return this;
    }
    
    public SDKNotificationBuilder setNotificationPendingIntent(PendingIntent paramPendingIntent)
    {
      this.mNotificationPendingIntent = paramPendingIntent;
      return this;
    }
    
    public SDKNotificationBuilder setNotificationTitle(String paramString)
    {
      this.mNotificationTitle = paramString;
      return this;
    }
    
    public SDKNotificationBuilder setSoundUri(Uri paramUri)
    {
      this.mSoundUri = paramUri;
      return this;
    }
    
    public SDKNotificationBuilder setTickerText(String paramString)
    {
      this.mTickerText = paramString;
      return this;
    }
    
    public SDKNotificationBuilder setVibrate(long[] paramArrayOfLong)
    {
      this.mVibrate = paramArrayOfLong;
      return this;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/utils/SDKNotification.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */