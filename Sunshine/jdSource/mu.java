import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import cn.apppark.vertify.activity.free.self.SelfWebView;

public final class mu
  implements DownloadListener
{
  public mu(SelfWebView paramSelfWebView) {}
  
  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    paramString1 = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
    SelfWebView.e(this.a).startActivity(paramString1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */