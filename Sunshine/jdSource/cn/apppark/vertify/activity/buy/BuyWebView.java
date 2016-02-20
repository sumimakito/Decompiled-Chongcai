package cn.apppark.vertify.activity.buy;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import gf;
import gg;

public class BuyWebView
  extends Activity
{
  private Button btn_back;
  private WebView mWebView;
  private ProgressBar progressBar;
  private String title;
  private TextView tv_title;
  private String urlStr;
  
  private void initWebView()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.mWebView.getSettings().setCacheMode(2);
    this.mWebView.getSettings().setJavaScriptEnabled(true);
    this.mWebView.getSettings().setPluginState(WebSettings.PluginState.ON);
    this.mWebView.requestFocus();
    this.mWebView.clearCache(true);
    this.mWebView.getSettings().setDefaultTextEncodingName("UTF-8");
    this.mWebView.getSettings().setAllowFileAccess(true);
    this.mWebView.setWebViewClient(new gf(this));
    this.mWebView.setWebChromeClient(new gg(this));
    this.mWebView.loadUrl(this.urlStr);
  }
  
  private void initWidget()
  {
    this.btn_back = ((Button)findViewById(2131362159));
    this.tv_title = ((TextView)findViewById(2131362160));
    if (this.title != null) {
      this.tv_title.setText(this.title);
    }
    this.mWebView = ((WebView)findViewById(2131362162));
    this.progressBar = ((ProgressBar)findViewById(2131362161));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(new BuyWebView.1(this));
    if (this.urlStr != null)
    {
      initWebView();
      return;
    }
    Toast.makeText(this, "url地址错误", 0).show();
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903085);
    this.urlStr = getIntent().getStringExtra("urlStr");
    this.title = getIntent().getStringExtra("title");
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */