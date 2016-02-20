import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.apppark.vertify.activity.buy.BuyProductDetail;
import cn.apppark.vertify.activity.free.dyn.DynVideoWebView;

public final class fe
  extends WebViewClient
{
  public fe(BuyProductDetail paramBuyProductDetail) {}
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith("video:"))
    {
      paramWebView = new Intent(this.a, DynVideoWebView.class);
      paramWebView.putExtra("videourl", paramString.substring(6));
      this.a.startActivity(paramWebView);
    }
    for (;;)
    {
      return true;
      paramWebView = new Intent();
      paramWebView.setAction("android.intent.action.VIEW");
      paramWebView.setData(Uri.parse(paramString));
      this.a.startActivity(paramWebView);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */