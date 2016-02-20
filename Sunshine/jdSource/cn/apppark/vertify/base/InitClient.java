package cn.apppark.vertify.base;

import android.app.Activity;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.TextView;
import cn.apppark.mcd.util.file.AssetsIO;
import java.util.ArrayList;
import vp;
import vq;
import vr;

public class InitClient
  extends Activity
{
  private static final int COPY_FAILED = 3;
  private static final int GUI_NEXT_NOTIFIER = 1;
  private static final int GUI_STOP_NOTIFIER = 2;
  public Handler a = new vp(this);
  private String[] assetsList;
  private AssetsIO fileIo;
  private ImageView img;
  private int index;
  private boolean initSuccess = true;
  private boolean isExistCopyListFile;
  private TextView loadPercentTV;
  private int max;
  private String sdcardPath;
  private ArrayList<String> txtList;
  
  private native String getCopyFileListName();
  
  private native String getInitPath();
  
  private native String getLoadbgPath();
  
  private native String getSDPath();
  
  public void initFinish()
  {
    finish();
  }
  
  protected void initFromAssets()
  {
    this.assetsList = this.fileIo.getAssetsCopyList(getInitPath());
    this.max = this.assetsList.length;
    new Thread(new vq(this)).start();
  }
  
  protected void initFromTxt()
  {
    this.txtList = this.fileIo.getTxtCopyList(getCopyFileListName());
    this.max = this.txtList.size();
    new Thread(new vr(this)).start();
  }
  
  /* Error */
  protected void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 128	android/app/Activity:onCreate	(Landroid/os/Bundle;)V
    //   7: aload_0
    //   8: ldc -127
    //   10: invokevirtual 133	cn/apppark/vertify/base/InitClient:setContentView	(I)V
    //   13: aload_0
    //   14: aload_0
    //   15: ldc -122
    //   17: invokevirtual 138	cn/apppark/vertify/base/InitClient:findViewById	(I)Landroid/view/View;
    //   20: checkcast 140	android/widget/TextView
    //   23: putfield 57	cn/apppark/vertify/base/InitClient:loadPercentTV	Landroid/widget/TextView;
    //   26: aload_0
    //   27: aload_0
    //   28: ldc -115
    //   30: invokevirtual 138	cn/apppark/vertify/base/InitClient:findViewById	(I)Landroid/view/View;
    //   33: checkcast 143	android/widget/ImageView
    //   36: putfield 145	cn/apppark/vertify/base/InitClient:img	Landroid/widget/ImageView;
    //   39: aload_0
    //   40: invokevirtual 149	cn/apppark/vertify/base/InitClient:getAssets	()Landroid/content/res/AssetManager;
    //   43: astore_3
    //   44: aload_2
    //   45: astore_1
    //   46: aload_3
    //   47: aload_0
    //   48: invokespecial 151	cn/apppark/vertify/base/InitClient:getLoadbgPath	()Ljava/lang/String;
    //   51: invokevirtual 157	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   54: astore_2
    //   55: aload_2
    //   56: astore_1
    //   57: aload_2
    //   58: aconst_null
    //   59: invokestatic 163	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   62: astore 4
    //   64: aload_2
    //   65: astore_1
    //   66: aload 4
    //   68: ifnull +16 -> 84
    //   71: aload_2
    //   72: astore_1
    //   73: aload_0
    //   74: getfield 145	cn/apppark/vertify/base/InitClient:img	Landroid/widget/ImageView;
    //   77: aload 4
    //   79: invokevirtual 167	android/widget/ImageView:setImageDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   82: aload_2
    //   83: astore_1
    //   84: aload_1
    //   85: ifnull +7 -> 92
    //   88: aload_1
    //   89: invokevirtual 172	java/io/InputStream:close	()V
    //   92: aload_0
    //   93: aload_0
    //   94: invokevirtual 176	cn/apppark/vertify/base/InitClient:getIntent	()Landroid/content/Intent;
    //   97: aload_0
    //   98: invokespecial 178	cn/apppark/vertify/base/InitClient:getSDPath	()Ljava/lang/String;
    //   101: invokevirtual 184	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   104: putfield 65	cn/apppark/vertify/base/InitClient:sdcardPath	Ljava/lang/String;
    //   107: getstatic 190	cn/apppark/ckj10185912/YYGYContants:mHelper	Lcn/apppark/vertify/base/ClientInitInfoHelpler;
    //   110: invokevirtual 195	cn/apppark/vertify/base/ClientInitInfoHelpler:resetTimeStamp	()V
    //   113: aload_0
    //   114: new 89	cn/apppark/mcd/util/file/AssetsIO
    //   117: dup
    //   118: aload_0
    //   119: invokespecial 198	cn/apppark/mcd/util/file/AssetsIO:<init>	(Landroid/content/Context;)V
    //   122: putfield 69	cn/apppark/vertify/base/InitClient:fileIo	Lcn/apppark/mcd/util/file/AssetsIO;
    //   125: aload_0
    //   126: iconst_0
    //   127: putfield 200	cn/apppark/vertify/base/InitClient:isExistCopyListFile	Z
    //   130: aload_0
    //   131: getfield 69	cn/apppark/vertify/base/InitClient:fileIo	Lcn/apppark/mcd/util/file/AssetsIO;
    //   134: aload_0
    //   135: getfield 65	cn/apppark/vertify/base/InitClient:sdcardPath	Ljava/lang/String;
    //   138: ldc -54
    //   140: invokevirtual 206	cn/apppark/mcd/util/file/AssetsIO:copyDataSdcard	(Ljava/lang/String;Ljava/lang/String;)V
    //   143: aload_0
    //   144: getfield 69	cn/apppark/vertify/base/InitClient:fileIo	Lcn/apppark/mcd/util/file/AssetsIO;
    //   147: aload_0
    //   148: getfield 65	cn/apppark/vertify/base/InitClient:sdcardPath	Ljava/lang/String;
    //   151: ldc -48
    //   153: invokevirtual 206	cn/apppark/mcd/util/file/AssetsIO:copyDataSdcard	(Ljava/lang/String;Ljava/lang/String;)V
    //   156: aload_3
    //   157: aload_0
    //   158: invokespecial 107	cn/apppark/vertify/base/InitClient:getCopyFileListName	()Ljava/lang/String;
    //   161: invokevirtual 157	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   164: pop
    //   165: aload_0
    //   166: iconst_1
    //   167: putfield 200	cn/apppark/vertify/base/InitClient:isExistCopyListFile	Z
    //   170: aload_0
    //   171: getfield 200	cn/apppark/vertify/base/InitClient:isExistCopyListFile	Z
    //   174: ifeq +45 -> 219
    //   177: aload_0
    //   178: invokevirtual 210	cn/apppark/vertify/base/InitClient:initFromTxt	()V
    //   181: return
    //   182: astore_2
    //   183: aload_2
    //   184: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   187: goto -103 -> 84
    //   190: astore_1
    //   191: aload_1
    //   192: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   195: goto -103 -> 92
    //   198: astore_1
    //   199: aload_1
    //   200: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   203: goto -47 -> 156
    //   206: astore_1
    //   207: aload_1
    //   208: invokevirtual 214	java/lang/Exception:printStackTrace	()V
    //   211: aload_0
    //   212: iconst_0
    //   213: putfield 200	cn/apppark/vertify/base/InitClient:isExistCopyListFile	Z
    //   216: goto -46 -> 170
    //   219: aload_0
    //   220: invokevirtual 216	cn/apppark/vertify/base/InitClient:initFromAssets	()V
    //   223: return
    //   224: astore_1
    //   225: aload_0
    //   226: ldc -39
    //   228: iconst_0
    //   229: invokestatic 223	android/widget/Toast:makeText	(Landroid/content/Context;II)Landroid/widget/Toast;
    //   232: invokevirtual 226	android/widget/Toast:show	()V
    //   235: aload_1
    //   236: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   239: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	240	0	this	InitClient
    //   0	240	1	paramBundle	android.os.Bundle
    //   1	82	2	localInputStream	java.io.InputStream
    //   182	2	2	localIOException	java.io.IOException
    //   43	114	3	localAssetManager	android.content.res.AssetManager
    //   62	16	4	localDrawable	android.graphics.drawable.Drawable
    // Exception table:
    //   from	to	target	type
    //   46	55	182	java/io/IOException
    //   57	64	182	java/io/IOException
    //   73	82	182	java/io/IOException
    //   88	92	190	java/io/IOException
    //   130	156	198	java/io/IOException
    //   156	170	206	java/lang/Exception
    //   170	181	224	java/io/IOException
    //   219	223	224	java/io/IOException
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/base/InitClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */