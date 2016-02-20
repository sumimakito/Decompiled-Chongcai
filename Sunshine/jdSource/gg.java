import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;
import cn.apppark.vertify.activity.buy.BuyWebView;

public final class gg
  extends WebChromeClient
{
  public gg(BuyWebView paramBuyWebView) {}
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt != 100)
    {
      BuyWebView.a(this.a).setVisibility(0);
      BuyWebView.a(this.a).setProgress(paramInt);
      return;
    }
    BuyWebView.a(this.a).setVisibility(8);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/gg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */