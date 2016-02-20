package cn.apppark.vertify.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import vs;
import vt;
import vu;
import vv;
import vw;

public class PushWebView
  extends Activity
  implements View.OnClickListener
{
  public static String urlStr = "";
  private Button btn_back;
  private Button btn_finish;
  private Button btn_forward;
  private Button btn_ref;
  private Context context = this;
  private int count = 0;
  private int delayTime = 3;
  private boolean isDestroy = false;
  private LinearLayout ll_hiddenbar;
  private WebView mWebView;
  private vv myHandler = new vv(this);
  private ProgressBar progressBar;
  private RelativeLayout rel_bottombar;
  private RelativeLayout rel_topbar;
  private Thread thread;
  
  private void clickAd(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("msgId", paramString);
    paramString = new WebServicePool(-1, null, "json", PublicUtil.map2Json(localHashMap), "http://ws.ckj.hqch.com/", "http://www.apppark.cn//push.ws", "updateMsgStatus");
    paramString.doRequest(paramString);
  }
  
  private void initWebView()
  {
    this.mWebView.getSettings().setCacheMode(2);
    this.mWebView.getSettings().setJavaScriptEnabled(true);
    this.mWebView.getSettings().setPluginState(WebSettings.PluginState.ON);
    this.mWebView.requestFocus();
    this.mWebView.clearCache(true);
    this.mWebView.getSettings().setDefaultTextEncodingName("UTF-8");
    this.mWebView.getSettings().setAllowFileAccess(true);
    this.mWebView.setWebViewClient(new vs(this));
    this.mWebView.setWebChromeClient(new vt(this));
    this.mWebView.loadUrl(urlStr);
    this.mWebView.setOnTouchListener(new vu(this));
  }
  
  private void initWidget()
  {
    this.ll_hiddenbar = ((LinearLayout)findViewById(2131362579));
    this.ll_hiddenbar.setVisibility(8);
    Button localButton = (Button)findViewById(2131362580);
    localButton.getBackground().setAlpha(100);
    localButton.setOnClickListener(new PushWebView.1(this));
    this.rel_topbar = ((RelativeLayout)findViewById(2131362573));
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.rel_topbar);
    this.rel_bottombar = ((RelativeLayout)findViewById(2131362575));
    this.mWebView = ((WebView)findViewById(2131362571));
    this.mWebView.clearCache(true);
    this.progressBar = ((ProgressBar)findViewById(2131362572));
    this.btn_finish = ((Button)findViewById(2131362574));
    this.btn_back = ((Button)findViewById(2131362576));
    this.btn_forward = ((Button)findViewById(2131362577));
    this.btn_ref = ((Button)findViewById(2131362578));
    ButtonColorFilter.setButtonFocusChanged(this.btn_forward);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    ButtonColorFilter.setButtonFocusChanged(this.btn_forward);
    this.btn_finish.setOnClickListener(this);
    this.btn_back.setOnClickListener(this);
    this.btn_forward.setOnClickListener(this);
    this.btn_ref.setOnClickListener(this);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362575: 
    default: 
    case 2131362576: 
    case 2131362577: 
      do
      {
        do
        {
          return;
        } while (!this.mWebView.canGoBack());
        this.mWebView.goBack();
        return;
      } while (!this.mWebView.canGoForward());
      this.mWebView.goForward();
      return;
    case 2131362578: 
      this.mWebView.clearCache(true);
      this.mWebView.loadUrl(urlStr);
      return;
    }
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903160);
    urlStr = getIntent().getStringExtra("urlStr");
    paramBundle = getIntent().getStringExtra("id");
    if (urlStr != null)
    {
      initWidget();
      initWebView();
      if ((!"".equals(paramBundle)) && (paramBundle != null)) {
        clickAd(paramBundle);
      }
      this.thread = new Thread(new vw(this));
      this.thread.start();
      return;
    }
    Toast.makeText(this.context, "url地址错误", 0).show();
    finish();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.isDestroy = true;
    this.mWebView = null;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.mWebView.canGoBack())
      {
        this.mWebView.goBack();
        return true;
      }
      finish();
    }
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/base/PushWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */