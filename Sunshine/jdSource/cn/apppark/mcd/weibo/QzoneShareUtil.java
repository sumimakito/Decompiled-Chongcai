package cn.apppark.mcd.weibo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.tauth.Tencent;
import java.util.ArrayList;
import p;

public class QzoneShareUtil
{
  public Activity a;
  public Tencent b;
  private int shareType = 1;
  
  public QzoneShareUtil(Activity paramActivity, String paramString)
  {
    this.a = paramActivity;
    this.b = Tencent.createInstance(paramString, paramActivity.getApplicationContext());
  }
  
  private void doShareToQzone(Bundle paramBundle)
  {
    new Thread(new p(this, paramBundle)).start();
  }
  
  public void onResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.b.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void sharToQzone(String paramString1, String paramString2, String paramString3)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("req_type", this.shareType);
    localBundle.putString("title", paramString1);
    localBundle.putString("summary", paramString2);
    localBundle.putString("targetUrl", paramString3);
    localBundle.putStringArrayList("imageUrl", new ArrayList());
    doShareToQzone(localBundle);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/weibo/QzoneShareUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */