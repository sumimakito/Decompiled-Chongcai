import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.apppark.vertify.activity.free.dyn.DynRssDetail;

public final class js
  extends WebViewClient
{
  public js(DynRssDetail paramDynRssDetail) {}
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    DynRssDetail.a(this.a).loadUrl(paramString);
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/js.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */