package cn.apppark.vertify.activity.free.dyn;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.DynRssItem5003Vo;
import cn.apppark.mcd.widget.LoadDataProgress;
import js;

public class DynRssDetail
  extends Activity
  implements View.OnClickListener
{
  private Button btn_finish;
  private LoadDataProgress load;
  private View mCustomView = null;
  private WebView mWebView;
  private RelativeLayout rel_topMenu;
  private DynRssItem5003Vo rssVo;
  private String time;
  private String title;
  private TextView tv_menuTitle;
  private TextView tv_time;
  private TextView tv_title;
  
  private void back()
  {
    if (this.mCustomView == null) {
      super.onBackPressed();
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void initData(String paramString1, String paramString2)
  {
    this.tv_title.setText(this.title);
    this.tv_menuTitle.setText(this.title);
    this.tv_time.setText(this.time);
    this.mWebView.loadUrl(this.rssVo.getLink());
  }
  
  @SuppressLint({"NewApi", "SetJavaScriptEnabled"})
  private void initWidget()
  {
    this.mWebView = ((WebView)findViewById(2131362364));
    this.tv_title = ((TextView)findViewById(2131362362));
    this.tv_menuTitle = ((TextView)findViewById(2131362360));
    this.rel_topMenu = ((RelativeLayout)findViewById(2131362359));
    this.tv_time = ((TextView)findViewById(2131362363));
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.rel_topMenu);
    this.mWebView.clearCache(true);
    this.btn_finish = ((Button)findViewById(2131362361));
    this.btn_finish.setOnClickListener(this);
    ButtonColorFilter.setButtonFocusChanged(this.btn_finish);
    WebSettings localWebSettings = this.mWebView.getSettings();
    localWebSettings.setPluginState(WebSettings.PluginState.ON);
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    localWebSettings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
    localWebSettings.setLoadWithOverviewMode(true);
    localWebSettings.setCacheMode(1);
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setDefaultTextEncodingName("UTF-8");
    localWebSettings.setAllowFileAccess(true);
    this.mWebView.setVerticalScrollBarEnabled(false);
    this.mWebView.clearCache(true);
    this.mWebView.setWebViewClient(new js(this));
  }
  
  public void onBackPressed()
  {
    if (this.mCustomView == null) {
      super.onBackPressed();
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      return;
    } while (this.mCustomView != null);
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903110);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.rssVo = ((DynRssItem5003Vo)getIntent().getBundleExtra("bund").getSerializable("vo"));
    if (this.rssVo != null)
    {
      this.title = this.rssVo.getTitle();
      this.time = this.rssVo.getPubDate();
      initWidget();
      initData(null, null);
      this.load.hidden();
    }
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
    this.mWebView.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    this.mWebView.onResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    this.mWebView.saveState(paramBundle);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynRssDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */