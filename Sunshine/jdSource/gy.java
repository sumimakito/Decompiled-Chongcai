import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import cn.apppark.vertify.activity.free.dyn.DynMapUrl5008;

public final class gy
  extends WebViewClient
{
  public gy(DynMapUrl5008 paramDynMapUrl5008) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    DynMapUrl5008.a(this.a).setVisibility(8);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    DynMapUrl5008.a(this.a).setVisibility(0);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/gy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */