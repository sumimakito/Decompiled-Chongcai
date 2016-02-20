import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import cn.apppark.vertify.activity.free.self.SelfWebView;

public final class ms
  extends WebChromeClient
{
  public ms(SelfWebView paramSelfWebView) {}
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ms.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */