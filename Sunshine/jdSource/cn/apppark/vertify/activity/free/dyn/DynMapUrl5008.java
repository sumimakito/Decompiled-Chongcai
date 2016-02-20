package cn.apppark.vertify.activity.free.dyn;

import android.content.Context;
import android.content.Intent;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.Dyn5008Vo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import gy;
import gz;

public class DynMapUrl5008
  extends RelativeLayout
  implements ISelfViewDyn
{
  private Context context;
  private ILoadDataEndListener loadendListener;
  private ProgressBar mProgressBar;
  private WebView mWebView;
  private ScrollView parentScroll;
  private Dyn5008Vo vo;
  
  public DynMapUrl5008(Context paramContext, Dyn5008Vo paramDyn5008Vo, ElasticScrollView paramElasticScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.vo = paramDyn5008Vo;
    this.parentScroll = paramElasticScrollView;
    paramElasticScrollView.setRefreshable(false);
    init();
  }
  
  public void init()
  {
    this.mProgressBar = new ProgressBar(this.context);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    addView(this.mProgressBar, localLayoutParams);
    this.mWebView = new WebView(HQCHApplication.mainActivity);
    localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    addView(this.mWebView, 0, localLayoutParams);
    this.mWebView.requestFocus();
    this.mWebView.clearCache(true);
    this.mWebView.getSettings().setDefaultTextEncodingName("UTF-8");
    this.mWebView.getSettings().setAllowFileAccess(true);
    this.mWebView.setVerticalScrollBarEnabled(false);
    this.mWebView.getSettings().setCacheMode(1);
    this.mWebView.getSettings().setDomStorageEnabled(true);
    this.mWebView.getSettings().setPluginState(WebSettings.PluginState.ON);
    this.mWebView.getSettings().setJavaScriptEnabled(true);
    this.mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    this.mWebView.setWebViewClient(new gy(this));
    this.mWebView.setWebChromeClient(new gz(this));
    this.mWebView.loadUrl(this.vo.getData_mapURL());
  }
  
  public void initData()
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(2);
    }
  }
  
  public boolean isCache()
  {
    return false;
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onDestroy()
  {
    if (this.mWebView != null)
    {
      this.mWebView.clearCache(true);
      this.mWebView.destroy();
    }
  }
  
  public void onPause() {}
  
  public void onRefresh()
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(3);
    }
  }
  
  public void onResume() {}
  
  public void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener)
  {
    this.loadendListener = paramILoadDataEndListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynMapUrl5008.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */