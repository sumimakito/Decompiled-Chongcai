import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.apppark.vertify.activity.buy.BuyWebView;

public final class gf
  extends WebViewClient
{
  public gf(BuyWebView paramBuyWebView) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/gf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */