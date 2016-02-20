package cn.apppark.vertify.network;

import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.widget.DialogOneBtn.Builder;
import cn.apppark.mcd.widget.DialogProgress;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import java.io.File;
import wl;
import wm;
import wn;
import wo;
import wp;
import wq;

public class VersionUpdateManager
{
  private final int DOWNLOAD_FAILE = 3;
  private final int DOWNLOAD_ING = 1;
  private final int DOWNLOAD_OVER = 2;
  private String apkUrl = "";
  private Runnable downloadApkRunnable = new wq(this);
  private Thread downloadApkThread = null;
  private String flag = "0";
  private Boolean interceptFlag = Boolean.valueOf(false);
  private DialogProgress mProgressDialog;
  private Handler mhandler = new wl(this);
  private int progress = 0;
  private String saveFileName = this.savePath + "/yygy.apk";
  private String savePath = PublicUtil.getExternalStoragePath();
  
  public VersionUpdateManager(String paramString1, String paramString2)
  {
    this.apkUrl = paramString1;
    this.flag = paramString2;
  }
  
  private void downloadLatestVersionApk()
  {
    this.downloadApkThread = new Thread(this.downloadApkRunnable);
    this.downloadApkThread.start();
  }
  
  private void installApk()
  {
    File localFile = new File(this.saveFileName);
    if (!localFile.exists()) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.parse("file://" + localFile.toString()), "application/vnd.android.package-archive");
    HQCHApplication.mainActivity.startActivity(localIntent);
  }
  
  private void showDownloadDialog()
  {
    this.mProgressDialog = new DialogProgress(HQCHApplication.mainActivity);
    this.mProgressDialog.setTitle("软件更新");
    this.mProgressDialog.setProgressStyle(1);
    this.mProgressDialog.setMax(100);
    this.mProgressDialog.setProgress(0);
    this.mProgressDialog.show();
    this.mProgressDialog.setCancelable(false);
    this.mProgressDialog.setOnCancelListener(new wp(this));
    this.downloadApkThread = new Thread(this.downloadApkRunnable);
    this.downloadApkThread.start();
  }
  
  private void showNoticeDialog()
  {
    if ("1".equals(this.flag))
    {
      new DialogOneBtn.Builder(HQCHApplication.mainActivity).setTitle(2131230750).setMessage(2131230749).setPositiveButton("更新", new wm(this)).setCancelable(false).show();
      return;
    }
    new DialogTwoBtn.Builder(HQCHApplication.mainActivity).setTitle(2131230750).setMessage(2131230749).setPositiveButton("更新", new wo(this)).setNegativeButton("以后再说", new wn(this)).setCancelable(false).show();
  }
  
  public void checkUpdate()
  {
    showNoticeDialog();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/VersionUpdateManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */