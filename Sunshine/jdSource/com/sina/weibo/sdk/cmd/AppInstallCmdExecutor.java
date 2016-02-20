package com.sina.weibo.sdk.cmd;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.WeiboAppManager.WeiboInfo;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.MD5;
import com.sina.weibo.sdk.utils.NetworkHelper;
import com.sina.weibo.sdk.utils.ResourceManager;
import com.sina.weibo.sdk.utils.SDKNotification;
import com.sina.weibo.sdk.utils.SDKNotification.SDKNotificationBuilder;
import java.io.File;
import java.util.Iterator;
import java.util.List;

class AppInstallCmdExecutor
  implements CmdExecutor<AppInstallCmd>
{
  private static final int MESSAGE_DO_CMD = 1;
  private static final int MESSAGE_QUIT_LOOP = 2;
  private static final String TAG = AppInstallCmdExecutor.class.getName();
  private static final String WB_APK_FILE_DIR = Environment.getExternalStorageDirectory() + "/Android/org_share_data/";
  private boolean isStarted = false;
  private Context mContext;
  private InstallHandler mHandler;
  private Looper mLooper;
  private HandlerThread thread;
  
  public AppInstallCmdExecutor(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }
  
  private static PendingIntent buildInstallApkIntent(Context paramContext, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.android.package-archive");
      return PendingIntent.getActivity(paramContext, 0, localIntent, 16);
    }
    return PendingIntent.getActivity(paramContext, 0, new Intent(), 16);
  }
  
  private static boolean checkApkInstalled(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return false;
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 1);
        if (paramContext != null) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return false;
  }
  
  private static boolean checkApkSign(PackageInfo paramPackageInfo, String paramString)
  {
    if (paramPackageInfo == null) {}
    do
    {
      return false;
      if (paramPackageInfo.signatures != null) {
        break;
      }
    } while (Build.VERSION.SDK_INT >= 11);
    return true;
    String str = "";
    int i = 0;
    for (;;)
    {
      if (i >= paramPackageInfo.signatures.length)
      {
        if (str == null) {
          break;
        }
        return str.equals(paramString);
      }
      byte[] arrayOfByte = paramPackageInfo.signatures[i].toByteArray();
      if (arrayOfByte != null) {
        str = MD5.hexdigest(arrayOfByte);
      }
      i += 1;
    }
  }
  
  private static boolean checkPackageName(PackageInfo paramPackageInfo, String paramString)
  {
    if (paramPackageInfo == null) {
      return false;
    }
    return paramString.equals(paramPackageInfo.packageName);
  }
  
  private static String generateSaveFileName(String paramString)
  {
    String str = "";
    int i = paramString.lastIndexOf("/");
    if (i != -1) {
      str = paramString.substring(i + 1, paramString.length());
    }
    return str;
  }
  
  private static String getNotificationTitle(Context paramContext, String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = ResourceManager.getString(paramContext, "Weibo", "微博", "微博");
    }
    return str;
  }
  
  private void handleCmd(AppInstallCmd paramAppInstallCmd)
  {
    if (!needActivate(this.mContext, paramAppInstallCmd)) {}
    for (;;)
    {
      return;
      String str1 = WB_APK_FILE_DIR;
      String str2 = paramAppInstallCmd.getDownloadUrl();
      long l = paramAppInstallCmd.getAppVersion();
      Object localObject2 = walkDir(this.mContext, str1, paramAppInstallCmd);
      if ((localObject2 != null) && (((Pair)localObject2).second != null) && (((Integer)((Pair)localObject2).first).intValue() >= l))
      {
        showNotification(this.mContext, paramAppInstallCmd, ((File)((Pair)localObject2).second).getAbsolutePath());
        return;
      }
      if ((!NetworkHelper.isWifiValid(this.mContext)) || (TextUtils.isEmpty(str2))) {
        continue;
      }
      try
      {
        str2 = NetUtils.internalGetRedirectUri(this.mContext, str2, "GET", new WeiboParameters(""));
        localObject2 = generateSaveFileName(str2);
        if ((TextUtils.isEmpty((CharSequence)localObject2)) || (!((String)localObject2).endsWith(".apk")))
        {
          LogUtil.e(TAG, "redirectDownloadUrl is illeagle");
          return;
        }
        str1 = NetUtils.internalDownloadFile(this.mContext, str2, str1, (String)localObject2);
        if (TextUtils.isEmpty(str1)) {
          continue;
        }
        showNotification(this.mContext, paramAppInstallCmd, str1);
        return;
      }
      catch (WeiboException localWeiboException)
      {
        localWeiboException.printStackTrace();
        return;
      }
      finally
      {
        if (!TextUtils.isEmpty("")) {
          showNotification(this.mContext, paramAppInstallCmd, "");
        }
      }
    }
  }
  
  private static boolean isSpecifiedApk(PackageInfo paramPackageInfo, List<String> paramList, String paramString)
  {
    int i = 0;
    paramList = paramList.iterator();
    if (!paramList.hasNext()) {}
    for (;;)
    {
      boolean bool = checkApkSign(paramPackageInfo, paramString);
      if ((i == 0) || (!bool)) {
        break label57;
      }
      return true;
      if (!checkPackageName(paramPackageInfo, (String)paramList.next())) {
        break;
      }
      i = 1;
    }
    label57:
    return false;
  }
  
  private static boolean needActivate(Context paramContext, AppInstallCmd paramAppInstallCmd)
  {
    List localList = paramAppInstallCmd.getAppPackage();
    if ((localList == null) || (localList.size() == 0) || (TextUtils.isEmpty(paramAppInstallCmd.getAppSign())) || (TextUtils.isEmpty(paramAppInstallCmd.getDownloadUrl())) || (TextUtils.isEmpty(paramAppInstallCmd.getNotificationText()))) {}
    do
    {
      return false;
      if (!localList.contains("com.sina.weibo")) {
        break;
      }
      paramContext = WeiboAppManager.getInstance(paramContext).getWeiboInfo();
    } while ((paramContext != null) && (paramContext.isLegal()));
    return true;
    paramAppInstallCmd = localList.iterator();
    do
    {
      if (!paramAppInstallCmd.hasNext()) {
        return true;
      }
    } while (!checkApkInstalled(paramContext, (String)paramAppInstallCmd.next()));
    return false;
  }
  
  private static void showNotification(Context paramContext, AppInstallCmd paramAppInstallCmd, String paramString)
  {
    SDKNotification.SDKNotificationBuilder.buildUpon().setNotificationContent(paramAppInstallCmd.getNotificationText()).setNotificationPendingIntent(buildInstallApkIntent(paramContext, paramString)).setNotificationTitle(getNotificationTitle(paramContext, paramAppInstallCmd.getNotificationTitle())).setTickerText(paramAppInstallCmd.getNotificationText()).build(paramContext).show(1);
  }
  
  private static Pair<Integer, File> walkDir(Context paramContext, String paramString, AppInstallCmd paramAppInstallCmd)
  {
    if (TextUtils.isEmpty(paramString)) {}
    File[] arrayOfFile;
    do
    {
      do
      {
        return null;
        paramString = new File(paramString);
      } while ((!paramString.exists()) || (!paramString.isDirectory()));
      arrayOfFile = paramString.listFiles();
    } while (arrayOfFile == null);
    int j = 0;
    paramString = null;
    int m = arrayOfFile.length;
    int i = 0;
    if (i >= m) {
      return new Pair(Integer.valueOf(j), paramString);
    }
    File localFile = arrayOfFile[i];
    Object localObject2 = localFile.getName();
    int k = j;
    Object localObject1 = paramString;
    if (localFile.isFile())
    {
      k = j;
      localObject1 = paramString;
      if (((String)localObject2).endsWith(".apk"))
      {
        localObject2 = paramContext.getPackageManager().getPackageArchiveInfo(localFile.getAbsolutePath(), 64);
        if (isSpecifiedApk((PackageInfo)localObject2, paramAppInstallCmd.getAppPackage(), paramAppInstallCmd.getAppSign())) {
          break label174;
        }
        localObject1 = paramString;
        k = j;
      }
    }
    for (;;)
    {
      i += 1;
      j = k;
      paramString = (String)localObject1;
      break;
      label174:
      k = j;
      localObject1 = paramString;
      if (((PackageInfo)localObject2).versionCode > j)
      {
        k = ((PackageInfo)localObject2).versionCode;
        localObject1 = localFile;
      }
    }
  }
  
  public boolean doExecutor(AppInstallCmd paramAppInstallCmd)
  {
    if ((this.thread == null) || (this.mHandler == null)) {
      throw new RuntimeException("no thread running. please call start method first!");
    }
    if (paramAppInstallCmd != null)
    {
      Message localMessage = this.mHandler.obtainMessage();
      localMessage.what = 1;
      localMessage.obj = paramAppInstallCmd;
      this.mHandler.sendMessage(localMessage);
    }
    return false;
  }
  
  public void start()
  {
    if (this.isStarted) {
      return;
    }
    this.isStarted = true;
    this.thread = new HandlerThread("");
    this.thread.start();
    this.mLooper = this.thread.getLooper();
    this.mHandler = new InstallHandler(this.mLooper);
  }
  
  public void stop()
  {
    if ((this.thread == null) || (this.mHandler == null))
    {
      LogUtil.w(TAG, "no thread running. please call start method first!");
      return;
    }
    Message localMessage = this.mHandler.obtainMessage();
    localMessage.what = 2;
    this.mHandler.sendMessage(localMessage);
  }
  
  private class InstallHandler
    extends Handler
  {
    public InstallHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default: 
        return;
      case 1: 
        AppInstallCmdExecutor.this.handleCmd((AppInstallCmd)paramMessage.obj);
        return;
      }
      AppInstallCmdExecutor.this.mLooper.quit();
      AppInstallCmdExecutor.this.isStarted = false;
    }
  }
  
  private static final class NOTIFICATION_CONSTANTS
  {
    private static final int NOTIFICATIONID = 1;
    private static final String WEIBO = "Weibo";
    private static final String WEIBO_ZH_CN = "微博";
    private static final String WEIBO_ZH_TW = "微博";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/cmd/AppInstallCmdExecutor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */