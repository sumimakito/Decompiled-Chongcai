import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;
import cn.apppark.vertify.activity.free.dyn.DynSubComment;
import cn.apppark.vertify.activity.free.dyn.DynVideoWebView;

public final class hf
  extends WebViewClient
{
  public hf(DynMsgDetail paramDynMsgDetail) {}
  
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
      if (paramString.startsWith("msg:"))
      {
        paramWebView = new Intent(this.a, DynSubComment.class);
        paramWebView.putExtra("id", DynMsgDetail.a(this.a).getId());
        this.a.startActivityForResult(paramWebView, 2);
      }
      else
      {
        paramWebView = new Intent();
        paramWebView.setAction("android.intent.action.VIEW");
        paramWebView.setData(Uri.parse(paramString));
        this.a.startActivity(paramWebView);
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */