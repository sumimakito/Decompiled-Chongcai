package cn.apppark.vertify.network;

import android.app.Activity;
import android.os.AsyncTask;
import android.widget.Toast;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.widget.DialogOneBtn;
import cn.apppark.mcd.widget.DialogOneBtn.Builder;
import cn.apppark.mcd.widget.DialogProgress;
import java.util.ArrayList;
import wa;
import wb;

public class FileDownLoader
  extends AsyncTask<Void, Integer, Void>
{
  public Activity mActivity;
  private ArrayList<String> mDownLoadList;
  private DialogProgress mProgressDialog;
  
  public FileDownLoader(Activity paramActivity, ArrayList<String> paramArrayList)
  {
    if ((paramActivity instanceof Main)) {
      this.mActivity = paramActivity;
    }
    for (;;)
    {
      if (this.mActivity == null) {
        this.mActivity = paramActivity;
      }
      this.mDownLoadList = paramArrayList;
      return;
      if (paramActivity.isChild()) {
        this.mActivity = paramActivity.getParent();
      }
    }
  }
  
  /* Error */
  protected Void doInBackground(Void... paramVarArgs)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: iload_2
    //   3: aload_0
    //   4: getfield 23	cn/apppark/vertify/network/FileDownLoader:mDownLoadList	Ljava/util/ArrayList;
    //   7: invokevirtual 55	java/util/ArrayList:size	()I
    //   10: if_icmpge +222 -> 232
    //   13: getstatic 61	cn/apppark/ckj10185912/HQCHApplication:DEBUG	Z
    //   16: ifne +64 -> 80
    //   19: aload_0
    //   20: getfield 23	cn/apppark/vertify/network/FileDownLoader:mDownLoadList	Ljava/util/ArrayList;
    //   23: iload_2
    //   24: invokevirtual 65	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   27: checkcast 67	java/lang/String
    //   30: new 69	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   37: invokestatic 74	cn/apppark/ckj10185912/HQCHApplication:getInstance	()Lcn/apppark/ckj10185912/HQCHApplication;
    //   40: invokevirtual 78	cn/apppark/ckj10185912/HQCHApplication:getResourceDir	()Ljava/io/File;
    //   43: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   46: getstatic 88	java/io/File:separator	Ljava/lang/String;
    //   49: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokestatic 101	cn/apppark/mcd/util/NetworkIO:downFilesToSdcard	(Ljava/lang/String;Ljava/lang/String;)V
    //   58: aload_0
    //   59: iconst_1
    //   60: anewarray 103	java/lang/Integer
    //   63: dup
    //   64: iconst_0
    //   65: iload_2
    //   66: invokestatic 107	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   69: aastore
    //   70: invokevirtual 111	cn/apppark/vertify/network/FileDownLoader:publishProgress	([Ljava/lang/Object;)V
    //   73: iload_2
    //   74: iconst_1
    //   75: iadd
    //   76: istore_2
    //   77: goto -75 -> 2
    //   80: aload_0
    //   81: getfield 23	cn/apppark/vertify/network/FileDownLoader:mDownLoadList	Ljava/util/ArrayList;
    //   84: iload_2
    //   85: invokevirtual 65	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   88: checkcast 67	java/lang/String
    //   91: new 69	java/lang/StringBuilder
    //   94: dup
    //   95: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   98: invokestatic 74	cn/apppark/ckj10185912/HQCHApplication:getInstance	()Lcn/apppark/ckj10185912/HQCHApplication;
    //   101: invokevirtual 78	cn/apppark/ckj10185912/HQCHApplication:getResourceDir	()Ljava/io/File;
    //   104: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   107: getstatic 88	java/io/File:separator	Ljava/lang/String;
    //   110: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: invokestatic 101	cn/apppark/mcd/util/NetworkIO:downFilesToSdcard	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: goto -61 -> 58
    //   122: astore_1
    //   123: getstatic 117	java/lang/System:out	Ljava/io/PrintStream;
    //   126: new 69	java/lang/StringBuilder
    //   129: dup
    //   130: ldc 119
    //   132: invokespecial 122	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   135: aload_0
    //   136: getfield 23	cn/apppark/vertify/network/FileDownLoader:mDownLoadList	Ljava/util/ArrayList;
    //   139: iload_2
    //   140: invokevirtual 65	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   143: checkcast 67	java/lang/String
    //   146: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: ldc 124
    //   151: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokevirtual 129	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   160: goto -102 -> 58
    //   163: astore_1
    //   164: aload_1
    //   165: invokevirtual 132	java/lang/Exception:printStackTrace	()V
    //   168: getstatic 61	cn/apppark/ckj10185912/HQCHApplication:DEBUG	Z
    //   171: ifne +18 -> 189
    //   174: aload_0
    //   175: iconst_1
    //   176: anewarray 103	java/lang/Integer
    //   179: dup
    //   180: iconst_0
    //   181: iconst_m1
    //   182: invokestatic 107	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   185: aastore
    //   186: invokevirtual 111	cn/apppark/vertify/network/FileDownLoader:publishProgress	([Ljava/lang/Object;)V
    //   189: aconst_null
    //   190: areturn
    //   191: astore_1
    //   192: getstatic 117	java/lang/System:out	Ljava/io/PrintStream;
    //   195: new 69	java/lang/StringBuilder
    //   198: dup
    //   199: ldc 119
    //   201: invokespecial 122	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   204: aload_0
    //   205: getfield 23	cn/apppark/vertify/network/FileDownLoader:mDownLoadList	Ljava/util/ArrayList;
    //   208: iload_2
    //   209: invokevirtual 65	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   212: checkcast 67	java/lang/String
    //   215: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc -122
    //   220: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: invokevirtual 129	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   229: goto -171 -> 58
    //   232: getstatic 140	cn/apppark/ckj10185912/YYGYContants:mHelper	Lcn/apppark/vertify/base/ClientInitInfoHelpler;
    //   235: getstatic 143	cn/apppark/ckj10185912/HQCHApplication:lastUpdateTimeFlag	Ljava/lang/String;
    //   238: invokevirtual 148	cn/apppark/vertify/base/ClientInitInfoHelpler:updateTimeStamp	(Ljava/lang/String;)V
    //   241: goto -52 -> 189
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	244	0	this	FileDownLoader
    //   0	244	1	paramVarArgs	Void[]
    //   1	208	2	i	int
    // Exception table:
    //   from	to	target	type
    //   80	119	122	java/io/FileNotFoundException
    //   2	58	163	java/lang/Exception
    //   58	73	163	java/lang/Exception
    //   80	119	163	java/lang/Exception
    //   123	160	163	java/lang/Exception
    //   192	229	163	java/lang/Exception
    //   232	241	163	java/lang/Exception
    //   80	119	191	java/net/MalformedURLException
  }
  
  protected void finishCheckUPdate()
  {
    new DialogOneBtn.Builder(this.mActivity).setTitle(this.mActivity.getString(2131230724)).setMessage(this.mActivity.getString(2131230740)).setPositiveButton(2131230731, new wb(this)).create().show();
  }
  
  protected void onPostExecute(Void paramVoid)
  {
    super.onPostExecute(paramVoid);
    this.mProgressDialog.dismiss();
    finishCheckUPdate();
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    this.mProgressDialog = new DialogProgress(this.mActivity);
    this.mProgressDialog.setTitle(this.mActivity.getString(2131230747));
    this.mProgressDialog.setProgressStyle(1);
    this.mProgressDialog.setMax(this.mDownLoadList.size());
    this.mProgressDialog.setProgress(0);
    this.mProgressDialog.show();
    this.mProgressDialog.setOnCancelListener(new wa(this));
  }
  
  protected void onProgressUpdate(Integer... paramVarArgs)
  {
    super.onProgressUpdate(paramVarArgs);
    if (paramVarArgs[0].intValue() == -1)
    {
      Toast.makeText(this.mActivity, this.mActivity.getString(2131230741), 0).show();
      cancel(true);
      return;
    }
    this.mProgressDialog.setProgress(paramVarArgs[0].intValue());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/FileDownLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */