import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.apppark.vertify.base.PushWebView;

public final class vs
  extends WebViewClient
{
  public vs(PushWebView paramPushWebView) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    PushWebView.urlStr = paramString;
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


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */