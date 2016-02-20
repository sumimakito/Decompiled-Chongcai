package com.sina.weibo.sdk.api.share;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.sina.weibo.sdk.utils.Utility;

public class WeiboDownloader
{
  private static final String CANCEL_CHINESS = "以后再说";
  private static final String CANCEL_ENGLISH = "Download Later";
  private static final String OK_CHINESS = "现在下载";
  private static final String OK_ENGLISH = "Download Now";
  private static final String PROMPT_CHINESS = "未安装微博客户端，是否现在去下载？";
  private static final String PROMPT_ENGLISH = "Sina Weibo client is not installed, download now?";
  private static final String TITLE_CHINESS = "提示";
  private static final String TITLE_ENGLISH = "Notice";
  
  public static Dialog createDownloadConfirmDialog(Context paramContext, IWeiboDownloadListener paramIWeiboDownloadListener)
  {
    String str4 = "提示";
    String str3 = "未安装微博客户端，是否现在去下载？";
    String str2 = "现在下载";
    String str1 = "以后再说";
    if (!Utility.isChineseLocale(paramContext.getApplicationContext()))
    {
      str4 = "Notice";
      str3 = "Sina Weibo client is not installed, download now?";
      str2 = "Download Now";
      str1 = "Download Later";
    }
    new AlertDialog.Builder(paramContext).setMessage(str3).setTitle(str4).setPositiveButton(str2, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        WeiboDownloader.downloadWeibo(WeiboDownloader.this);
      }
    }).setNegativeButton(str1, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (WeiboDownloader.this != null) {
          WeiboDownloader.this.onCancel();
        }
      }
    }).create();
  }
  
  private static void downloadWeibo(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setData(Uri.parse("http://app.sina.cn/appdetail.php?appID=84560"));
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/share/WeiboDownloader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */