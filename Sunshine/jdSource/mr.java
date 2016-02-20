import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.vertify.activity.free.self.SelfWebView;

public final class mr
  extends WebViewClient
{
  public mr(SelfWebView paramSelfWebView) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    SelfWebView.a(this.a).setVisibility(8);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    SelfWebView.a(this.a).setVisibility(0);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith("tel:"))
    {
      this.a.callTel(paramString);
      return true;
    }
    if (paramString.startsWith("mqqopensdkapi:"))
    {
      paramWebView = new Intent();
      paramWebView.setAction("android.intent.action.VIEW");
      paramWebView.setData(Uri.parse(paramString));
      HQCHApplication.mainActivity.startActivity(paramWebView);
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */