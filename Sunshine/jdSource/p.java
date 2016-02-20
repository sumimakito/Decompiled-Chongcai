import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.weibo.QzoneShareUtil;
import com.tencent.tauth.Tencent;

public final class p
  implements Runnable
{
  public p(QzoneShareUtil paramQzoneShareUtil, Bundle paramBundle) {}
  
  public final void run()
  {
    Intent localIntent = new Intent();
    localIntent.setAction(YYGYContants.SHARE_ACTION_MSG);
    this.b.a.sendBroadcast(localIntent);
    this.b.b.shareToQzone(this.b.a, this.a, new q(this));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */