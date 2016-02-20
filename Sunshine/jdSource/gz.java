import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import cn.apppark.vertify.activity.free.dyn.DynMapUrl5008;

public final class gz
  extends WebChromeClient
{
  public gz(DynMapUrl5008 paramDynMapUrl5008) {}
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/gz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */