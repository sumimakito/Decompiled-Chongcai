package com.alipay.sdk.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.sdk.authjs.CallInfo;
import com.alipay.sdk.authjs.JsBridge;
import com.alipay.sdk.data.Envelope;
import com.alipay.sdk.data.FrameUtils;
import com.alipay.sdk.data.InteractionData;
import com.alipay.sdk.data.MspConfig;
import com.alipay.sdk.data.Request;
import com.alipay.sdk.exception.FailOperatingException;
import com.alipay.sdk.exception.NetErrorException;
import com.alipay.sdk.net.RequestWrapper;
import com.alipay.sdk.protocol.ActionType;
import com.alipay.sdk.protocol.ElementAction;
import com.alipay.sdk.protocol.FrameData;
import com.alipay.sdk.sys.GlobalContext;
import com.alipay.sdk.util.AuthHelper;
import com.alipay.sdk.util.Utils;
import com.alipay.sdk.widget.Loading;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

public class H5AuthActivity
  extends Activity
{
  private WebView a;
  private Loading b;
  private Handler c = new Handler();
  private boolean d;
  private Runnable e = new H5AuthActivity.11(this);
  
  private static void a()
  {
    synchronized (AuthHelper.a)
    {
      try
      {
        ???.notify();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  private void a(CallInfo paramCallInfo)
  {
    if ((this.a == null) || (paramCallInfo == null)) {
      return;
    }
    try
    {
      runOnUiThread(new H5AuthActivity.10(this, String.format("AlipayJSBridge._invokeJS(%s)", new Object[] { paramCallInfo.d() })));
      return;
    }
    catch (JSONException paramCallInfo)
    {
      paramCallInfo.printStackTrace();
    }
  }
  
  private void a(String paramString)
  {
    new JsBridge(this, new H5AuthActivity.9(this)).a(paramString);
  }
  
  private void a(JSONObject paramJSONObject)
    throws FailOperatingException
  {
    paramJSONObject = ElementAction.a(paramJSONObject.optJSONObject("form"), "onload");
    if (paramJSONObject == null) {
      throw new FailOperatingException();
    }
    paramJSONObject = ActionType.a(paramJSONObject);
    int j = paramJSONObject.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Object localObject = paramJSONObject[i];
        if (localObject != ActionType.a) {
          break label89;
        }
        paramJSONObject = com.alipay.sdk.util.ActionUtil.a(localObject.e())[0];
        if (!Utils.a(paramJSONObject)) {
          finish();
        }
      }
      else
      {
        return;
      }
      runOnUiThread(new H5AuthActivity.5(this, paramJSONObject));
      return;
      label89:
      i += 1;
    }
  }
  
  private void b()
  {
    e();
    Object localObject1 = getIntent().getExtras().getString("params");
    localObject1 = FrameUtils.a(new InteractionData(), (String)localObject1, new JSONObject());
    ((Request)localObject1).d().c("com.alipay.mobilecashier");
    ((Request)localObject1).d().a("com.alipay.mcpay");
    ((Request)localObject1).d().e("4.0.3");
    ((Request)localObject1).d().d("/cashier/main");
    RequestWrapper localRequestWrapper = new RequestWrapper(new InteractionData());
    try
    {
      localObject1 = localRequestWrapper.a(this, (Request)localObject1, false).c();
      f();
      a((JSONObject)localObject1);
      return;
    }
    catch (NetErrorException localNetErrorException)
    {
      runOnUiThread(new H5AuthActivity.3(this));
      return;
    }
    catch (Exception localException)
    {
      runOnUiThread(new H5AuthActivity.4(this));
      return;
    }
    finally
    {
      f();
    }
  }
  
  private void c()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage("不能连接到服务器，是否重试？");
    localBuilder.setPositiveButton("确定", new H5AuthActivity.6(this));
    localBuilder.setNeutralButton("取消", new H5AuthActivity.7(this));
    localBuilder.create().show();
  }
  
  private void d()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage("系统繁忙，请稍后再试");
    localBuilder.setNeutralButton("确定", new H5AuthActivity.8(this));
    localBuilder.create().show();
  }
  
  private void e()
  {
    if (this.b == null) {
      this.b = new Loading(this);
    }
    try
    {
      this.b.b();
      return;
    }
    catch (Exception localException)
    {
      this.b = null;
    }
  }
  
  private void f()
  {
    if ((this.b != null) && (this.b.a())) {
      this.b.c();
    }
    this.b = null;
  }
  
  public void finish()
  {
    synchronized (AuthHelper.a)
    {
      try
      {
        ???.notify();
        super.finish();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getIntent().getExtras() == null) {
      finish();
    }
    for (;;)
    {
      return;
      super.requestWindowFeature(1);
      GlobalContext.a().a(this, MspConfig.a());
      paramBundle = new LinearLayout(this);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      paramBundle.setOrientation(1);
      setContentView(paramBundle, localLayoutParams);
      this.a = new WebView(this);
      localLayoutParams.weight = 1.0F;
      this.a.setVisibility(0);
      paramBundle.addView(this.a, localLayoutParams);
      paramBundle = this.a.getSettings();
      paramBundle.setUserAgentString(paramBundle.getUserAgentString() + Utils.c(this));
      paramBundle.setRenderPriority(WebSettings.RenderPriority.HIGH);
      paramBundle.setSupportMultipleWindows(true);
      paramBundle.setJavaScriptEnabled(true);
      paramBundle.setSavePassword(false);
      paramBundle.setJavaScriptCanOpenWindowsAutomatically(true);
      paramBundle.setMinimumFontSize(paramBundle.getMinimumFontSize() + 8);
      paramBundle.setAllowFileAccess(false);
      this.a.setVerticalScrollbarOverlay(true);
      this.a.setWebViewClient(new MyWebViewClient((byte)0));
      this.a.setWebChromeClient(new MyWebChromeClient((byte)0));
      this.a.setDownloadListener(new H5AuthActivity.1(this));
      new Thread(new H5AuthActivity.2(this)).start();
      if (Build.VERSION.SDK_INT >= 7) {}
      for (;;)
      {
        try
        {
          paramBundle = this.a.getSettings().getClass().getMethod("setDomStorageEnabled", new Class[] { Boolean.TYPE });
          if (paramBundle != null) {
            paramBundle.invoke(this.a.getSettings(), new Object[] { Boolean.valueOf(true) });
          }
        }
        catch (Exception paramBundle)
        {
          continue;
        }
        try
        {
          paramBundle = this.a.getClass().getMethod("removeJavascriptInterface", new Class[0]);
          if (paramBundle == null) {
            break;
          }
          paramBundle.invoke(this.a, new Object[] { "searchBoxJavaBridge_" });
          return;
        }
        catch (Exception paramBundle) {}
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  private class MyWebChromeClient
    extends WebChromeClient
  {
    private MyWebChromeClient() {}
    
    public boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
    {
      String str2 = paramConsoleMessage.message();
      if (TextUtils.isEmpty(str2)) {
        return super.onConsoleMessage(paramConsoleMessage);
      }
      String str1 = null;
      if (str2.startsWith("h5container.message: ")) {
        str1 = str2.replaceFirst("h5container.message: ", "");
      }
      if (TextUtils.isEmpty(str1)) {
        return super.onConsoleMessage(paramConsoleMessage);
      }
      H5AuthActivity.a(H5AuthActivity.this, str1);
      return super.onConsoleMessage(paramConsoleMessage);
    }
  }
  
  private class MyWebViewClient
    extends WebViewClient
  {
    private MyWebViewClient() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      H5AuthActivity.i(H5AuthActivity.this);
      H5AuthActivity.h(H5AuthActivity.this).removeCallbacks(H5AuthActivity.g(H5AuthActivity.this));
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      H5AuthActivity.f(H5AuthActivity.this);
      H5AuthActivity.h(H5AuthActivity.this).postDelayed(H5AuthActivity.g(H5AuthActivity.this), 30000L);
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    }
    
    public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
    {
      if (H5AuthActivity.e(H5AuthActivity.this))
      {
        paramSslErrorHandler.proceed();
        H5AuthActivity.a(H5AuthActivity.this, false);
        return;
      }
      H5AuthActivity.this.runOnUiThread(new H5AuthActivity.MyWebViewClient.1(this, paramSslErrorHandler));
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if ((TextUtils.equals(paramString, "sdklite://h5quit")) || (TextUtils.equals(paramString, "http://m.alipay.com/?action=h5quit")))
      {
        Result.a(Result.b());
        H5AuthActivity.this.finish();
        return true;
      }
      if (paramString.startsWith("sdklite://h5quit?result=")) {
        try
        {
          paramWebView = paramString.substring(paramString.indexOf("sdklite://h5quit?result=") + 24);
          int i = Integer.parseInt(paramWebView.substring(paramWebView.lastIndexOf("&end_code=") + 10));
          if (i == ResultStatus.a.a())
          {
            paramWebView = URLDecoder.decode(paramString);
            paramWebView = paramWebView.substring(paramWebView.indexOf("sdklite://h5quit?result=") + 24, paramWebView.lastIndexOf("&end_code="));
            paramString = ResultStatus.a(i);
            Result.a(Result.a(paramString.a(), paramString.b(), paramWebView));
          }
          for (;;)
          {
            paramWebView = new H5AuthActivity.MyWebViewClient.2(this);
            H5AuthActivity.this.runOnUiThread(paramWebView);
            return true;
            paramWebView = ResultStatus.a(ResultStatus.b.a());
            Result.a(Result.a(paramWebView.a(), paramWebView.b(), ""));
          }
        }
        catch (Exception paramWebView)
        {
          for (;;)
          {
            Result.a(Result.c());
          }
        }
      }
      paramWebView.loadUrl(paramString);
      return true;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/app/H5AuthActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */