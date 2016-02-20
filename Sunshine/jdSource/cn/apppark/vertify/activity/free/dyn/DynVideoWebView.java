package cn.apppark.vertify.activity.free.dyn;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class DynVideoWebView
  extends Activity
{
  private String link;
  private View mCustomView = null;
  private WebView mWebView;
  
  private void back()
  {
    if (this.mCustomView == null) {
      super.onBackPressed();
    }
  }
  
  @SuppressLint({"NewApi"})
  private void initWidget()
  {
    this.mWebView = ((WebView)findViewById(2131362395));
    this.mWebView.clearCache(true);
    WebSettings localWebSettings = this.mWebView.getSettings();
    localWebSettings.setPluginState(WebSettings.PluginState.ON);
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    localWebSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
    localWebSettings.setLoadWithOverviewMode(true);
    localWebSettings.setCacheMode(1);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setDefaultTextEncodingName("UTF-8");
    localWebSettings.setAllowFileAccess(true);
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setAllowFileAccess(true);
    localWebSettings.setDatabaseEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setSaveFormData(false);
    localWebSettings.setAppCacheEnabled(true);
    localWebSettings.setCacheMode(-1);
    localWebSettings.setUseWideViewPort(true);
    this.mWebView.setVerticalScrollBarEnabled(false);
    this.mWebView.clearCache(true);
    this.mWebView.setWebViewClient(new WebViewClient());
    this.mWebView.setWebChromeClient(new WebChromeClient());
    this.mWebView.loadUrl(this.link);
  }
  
  public void onBackPressed()
  {
    if (this.mCustomView == null) {
      super.onBackPressed();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903117);
    this.link = getIntent().getStringExtra("videourl");
    if (this.link == null) {
      finish();
    }
    if ((paramBundle != null) && (this.mWebView != null)) {
      this.mWebView.restoreState(paramBundle);
    }
    initWidget();
  }
  
  protected void onDestroy()
  {
    if (this.mCustomView != null) {
      this.mCustomView = null;
    }
    if (this.mWebView != null)
    {
      this.mWebView.clearCache(true);
      this.mWebView.onPause();
      this.mWebView.destroy();
    }
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
    if (this.mWebView != null) {
      this.mWebView.onPause();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.mWebView != null) {
      this.mWebView.onResume();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    this.mWebView.saveState(paramBundle);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynVideoWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */