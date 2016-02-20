package com.alipay.sdk.auth;

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
import com.alipay.sdk.data.MspConfig;
import com.alipay.sdk.exception.FailOperatingException;
import com.alipay.sdk.protocol.ActionType;
import com.alipay.sdk.protocol.ElementAction;
import com.alipay.sdk.sys.GlobalContext;
import com.alipay.sdk.util.Utils;
import com.alipay.sdk.widget.Loading;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

public class AuthActivity
  extends Activity
{
  static final String a = "params";
  static final String b = "redirectUri";
  private WebView c;
  private String d;
  private Loading e;
  private Handler f = new Handler();
  private boolean g;
  private Runnable h = new AuthActivity.11(this);
  
  /* Error */
  private void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 51	com/alipay/sdk/auth/AuthActivity:d	()V
    //   4: aload_0
    //   5: invokevirtual 55	com/alipay/sdk/auth/AuthActivity:getIntent	()Landroid/content/Intent;
    //   8: invokevirtual 61	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   11: ldc 14
    //   13: invokevirtual 67	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   16: astore_1
    //   17: aload_0
    //   18: aload_0
    //   19: invokevirtual 55	com/alipay/sdk/auth/AuthActivity:getIntent	()Landroid/content/Intent;
    //   22: invokevirtual 61	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   25: ldc 17
    //   27: invokevirtual 67	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   30: putfield 69	com/alipay/sdk/auth/AuthActivity:d	Ljava/lang/String;
    //   33: new 71	com/alipay/sdk/data/InteractionData
    //   36: dup
    //   37: invokespecial 72	com/alipay/sdk/data/InteractionData:<init>	()V
    //   40: aload_1
    //   41: new 74	org/json/JSONObject
    //   44: dup
    //   45: invokespecial 75	org/json/JSONObject:<init>	()V
    //   48: invokestatic 80	com/alipay/sdk/data/FrameUtils:a	(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/Request;
    //   51: astore_1
    //   52: aload_1
    //   53: invokevirtual 85	com/alipay/sdk/data/Request:d	()Lcom/alipay/sdk/data/Envelope;
    //   56: ldc 87
    //   58: invokevirtual 92	com/alipay/sdk/data/Envelope:c	(Ljava/lang/String;)V
    //   61: aload_1
    //   62: invokevirtual 85	com/alipay/sdk/data/Request:d	()Lcom/alipay/sdk/data/Envelope;
    //   65: ldc 94
    //   67: invokevirtual 96	com/alipay/sdk/data/Envelope:a	(Ljava/lang/String;)V
    //   70: aload_1
    //   71: invokevirtual 85	com/alipay/sdk/data/Request:d	()Lcom/alipay/sdk/data/Envelope;
    //   74: ldc 98
    //   76: invokevirtual 100	com/alipay/sdk/data/Envelope:e	(Ljava/lang/String;)V
    //   79: aload_1
    //   80: invokevirtual 85	com/alipay/sdk/data/Request:d	()Lcom/alipay/sdk/data/Envelope;
    //   83: ldc 102
    //   85: invokevirtual 104	com/alipay/sdk/data/Envelope:d	(Ljava/lang/String;)V
    //   88: new 106	com/alipay/sdk/net/RequestWrapper
    //   91: dup
    //   92: new 71	com/alipay/sdk/data/InteractionData
    //   95: dup
    //   96: invokespecial 72	com/alipay/sdk/data/InteractionData:<init>	()V
    //   99: invokespecial 109	com/alipay/sdk/net/RequestWrapper:<init>	(Lcom/alipay/sdk/data/InteractionData;)V
    //   102: astore_2
    //   103: aload_2
    //   104: aload_0
    //   105: aload_1
    //   106: iconst_0
    //   107: invokevirtual 112	com/alipay/sdk/net/RequestWrapper:a	(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;
    //   110: invokevirtual 117	com/alipay/sdk/protocol/FrameData:c	()Lorg/json/JSONObject;
    //   113: astore_1
    //   114: aload_0
    //   115: invokespecial 119	com/alipay/sdk/auth/AuthActivity:e	()V
    //   118: aload_0
    //   119: aload_1
    //   120: invokespecial 122	com/alipay/sdk/auth/AuthActivity:a	(Lorg/json/JSONObject;)V
    //   123: aload_0
    //   124: invokespecial 119	com/alipay/sdk/auth/AuthActivity:e	()V
    //   127: return
    //   128: astore_1
    //   129: aload_0
    //   130: invokespecial 119	com/alipay/sdk/auth/AuthActivity:e	()V
    //   133: aload_0
    //   134: invokevirtual 125	com/alipay/sdk/auth/AuthActivity:finish	()V
    //   137: return
    //   138: astore_1
    //   139: aload_0
    //   140: new 127	com/alipay/sdk/auth/AuthActivity$3
    //   143: dup
    //   144: aload_0
    //   145: invokespecial 128	com/alipay/sdk/auth/AuthActivity$3:<init>	(Lcom/alipay/sdk/auth/AuthActivity;)V
    //   148: invokevirtual 132	com/alipay/sdk/auth/AuthActivity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   151: aload_0
    //   152: invokespecial 119	com/alipay/sdk/auth/AuthActivity:e	()V
    //   155: return
    //   156: astore_1
    //   157: aload_0
    //   158: new 134	com/alipay/sdk/auth/AuthActivity$4
    //   161: dup
    //   162: aload_0
    //   163: invokespecial 135	com/alipay/sdk/auth/AuthActivity$4:<init>	(Lcom/alipay/sdk/auth/AuthActivity;)V
    //   166: invokevirtual 132	com/alipay/sdk/auth/AuthActivity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   169: aload_0
    //   170: invokespecial 119	com/alipay/sdk/auth/AuthActivity:e	()V
    //   173: return
    //   174: astore_1
    //   175: aload_0
    //   176: invokespecial 119	com/alipay/sdk/auth/AuthActivity:e	()V
    //   179: aload_1
    //   180: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	this	AuthActivity
    //   16	104	1	localObject1	Object
    //   128	1	1	localException1	Exception
    //   138	1	1	localNetErrorException	com.alipay.sdk.exception.NetErrorException
    //   156	1	1	localException2	Exception
    //   174	6	1	localObject2	Object
    //   102	2	2	localRequestWrapper	com.alipay.sdk.net.RequestWrapper
    // Exception table:
    //   from	to	target	type
    //   4	33	128	java/lang/Exception
    //   103	123	138	com/alipay/sdk/exception/NetErrorException
    //   103	123	156	java/lang/Exception
    //   103	123	174	finally
    //   139	151	174	finally
    //   157	169	174	finally
  }
  
  private void a(CallInfo paramCallInfo)
  {
    if ((this.c == null) || (paramCallInfo == null)) {
      return;
    }
    try
    {
      runOnUiThread(new AuthActivity.10(this, String.format("AlipayJSBridge._invokeJS(%s)", new Object[] { paramCallInfo.d() })));
      return;
    }
    catch (JSONException paramCallInfo)
    {
      paramCallInfo.printStackTrace();
    }
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
      runOnUiThread(new AuthActivity.5(this, paramJSONObject));
      return;
      label89:
      i += 1;
    }
  }
  
  private boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while ((paramString.startsWith("http://")) || (paramString.startsWith("https://"))) {
      return false;
    }
    if (!"SDKLite://h5quit".equalsIgnoreCase(paramString))
    {
      String str = paramString;
      if (TextUtils.equals(paramString, this.d)) {
        str = paramString + "?resultCode=150";
      }
      AuthHelper.a(this, str);
    }
    finish();
    return true;
  }
  
  private void b()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage("不能连接到服务器，是否重试？");
    localBuilder.setPositiveButton("确定", new AuthActivity.6(this));
    localBuilder.setNeutralButton("取消", new AuthActivity.7(this));
    localBuilder.create().show();
  }
  
  private void b(String paramString)
  {
    new JsBridge(this, new AuthActivity.9(this)).a(paramString);
  }
  
  private void c()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage("系统繁忙，请稍后再试");
    localBuilder.setNeutralButton("确定", new AuthActivity.8(this));
    localBuilder.create().show();
  }
  
  private void d()
  {
    if (this.e == null) {
      this.e = new Loading(this);
    }
    try
    {
      this.e.b();
      return;
    }
    catch (Exception localException)
    {
      this.e = null;
    }
  }
  
  private void e()
  {
    if ((this.e != null) && (this.e.a())) {
      this.e.c();
    }
    this.e = null;
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
      this.c = new WebView(this);
      localLayoutParams.weight = 1.0F;
      this.c.setVisibility(0);
      paramBundle.addView(this.c, localLayoutParams);
      paramBundle = this.c.getSettings();
      paramBundle.setUserAgentString(paramBundle.getUserAgentString() + Utils.c(this));
      paramBundle.setRenderPriority(WebSettings.RenderPriority.HIGH);
      paramBundle.setSupportMultipleWindows(true);
      paramBundle.setJavaScriptEnabled(true);
      paramBundle.setSavePassword(false);
      paramBundle.setJavaScriptCanOpenWindowsAutomatically(true);
      paramBundle.setMinimumFontSize(paramBundle.getMinimumFontSize() + 8);
      paramBundle.setAllowFileAccess(false);
      this.c.setVerticalScrollbarOverlay(true);
      this.c.setWebViewClient(new MyWebViewClient((byte)0));
      this.c.setWebChromeClient(new MyWebChromeClient((byte)0));
      this.c.setDownloadListener(new AuthActivity.1(this));
      new Thread(new AuthActivity.2(this)).start();
      if (Build.VERSION.SDK_INT >= 7) {}
      for (;;)
      {
        try
        {
          paramBundle = this.c.getSettings().getClass().getMethod("setDomStorageEnabled", new Class[] { Boolean.TYPE });
          if (paramBundle != null) {
            paramBundle.invoke(this.c.getSettings(), new Object[] { Boolean.valueOf(true) });
          }
        }
        catch (Exception paramBundle)
        {
          continue;
        }
        try
        {
          paramBundle = this.c.getClass().getMethod("removeJavascriptInterface", new Class[0]);
          if (paramBundle == null) {
            break;
          }
          paramBundle.invoke(this.c, new Object[] { "searchBoxJavaBridge_" });
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
      AuthActivity.b(AuthActivity.this, str1);
      return super.onConsoleMessage(paramConsoleMessage);
    }
  }
  
  private class MyWebViewClient
    extends WebViewClient
  {
    private MyWebViewClient() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      AuthActivity.i(AuthActivity.this);
      AuthActivity.h(AuthActivity.this).removeCallbacks(AuthActivity.g(AuthActivity.this));
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      AuthActivity.f(AuthActivity.this);
      AuthActivity.h(AuthActivity.this).postDelayed(AuthActivity.g(AuthActivity.this), 30000L);
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    }
    
    public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
    {
      if (AuthActivity.e(AuthActivity.this))
      {
        paramSslErrorHandler.proceed();
        AuthActivity.a(AuthActivity.this, false);
        return;
      }
      AuthActivity.this.runOnUiThread(new AuthActivity.MyWebViewClient.1(this, paramSslErrorHandler));
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if (AuthActivity.a(AuthActivity.this, paramString))
      {
        paramWebView.stopLoading();
        return true;
      }
      return super.shouldOverrideUrlLoading(paramWebView, paramString);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/auth/AuthActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */