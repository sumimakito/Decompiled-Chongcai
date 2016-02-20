import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;
import cn.apppark.vertify.base.PushWebView;

public final class vt
  extends WebChromeClient
{
  public vt(PushWebView paramPushWebView) {}
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt != 100)
    {
      PushWebView.d(this.a).setVisibility(0);
      PushWebView.d(this.a).setProgress(paramInt);
      return;
    }
    PushWebView.d(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */