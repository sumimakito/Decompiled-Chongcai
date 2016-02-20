package com.tencent.open;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.connect.auth.QQToken;
import com.tencent.open.a.f;
import com.tencent.open.b.g;
import com.tencent.open.utils.ServerSetting;
import com.tencent.open.utils.Util;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.io.File;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

public class TDialog
  extends b
{
  static final FrameLayout.LayoutParams a = new FrameLayout.LayoutParams(-1, -1);
  static Toast b = null;
  private static WeakReference<ProgressDialog> d;
  private WeakReference<Context> c;
  private String e;
  private OnTimeListener f;
  private IUiListener g;
  private FrameLayout h;
  private com.tencent.open.c.b i;
  private Handler j;
  private boolean k = false;
  private QQToken l = null;
  
  public TDialog(Context paramContext, String paramString1, String paramString2, IUiListener paramIUiListener, QQToken paramQQToken)
  {
    super(paramContext, 16973840);
    this.c = new WeakReference(paramContext);
    this.e = paramString2;
    this.f = new OnTimeListener(paramContext, paramString1, paramString2, paramQQToken.getAppId(), paramIUiListener);
    this.j = new THandler(this.f, paramContext.getMainLooper());
    this.g = paramIUiListener;
    this.l = paramQQToken;
  }
  
  private void a()
  {
    new TextView((Context)this.c.get()).setText("test");
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.i = new com.tencent.open.c.b((Context)this.c.get());
    this.i.setLayoutParams(localLayoutParams);
    this.h = new FrameLayout((Context)this.c.get());
    localLayoutParams.gravity = 17;
    this.h.setLayoutParams(localLayoutParams);
    this.h.addView(this.i);
    setContentView(this.h);
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void b()
  {
    this.i.setVerticalScrollBarEnabled(false);
    this.i.setHorizontalScrollBarEnabled(false);
    this.i.setWebViewClient(new FbWebViewClient(null));
    this.i.setWebChromeClient(this.mChromeClient);
    this.i.clearFormData();
    WebSettings localWebSettings = this.i.getSettings();
    if (localWebSettings == null) {
      return;
    }
    localWebSettings.setSavePassword(false);
    localWebSettings.setSaveFormData(false);
    localWebSettings.setCacheMode(-1);
    localWebSettings.setNeedInitialFocus(false);
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setSupportZoom(true);
    localWebSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
    localWebSettings.setJavaScriptEnabled(true);
    if ((this.c != null) && (this.c.get() != null))
    {
      localWebSettings.setDatabaseEnabled(true);
      localWebSettings.setDatabasePath(((Context)this.c.get()).getApplicationContext().getDir("databases", 0).getPath());
    }
    localWebSettings.setDomStorageEnabled(true);
    this.jsBridge.a(new JsListener(null), "sdk_js_if");
    this.i.loadUrl(this.e);
    this.i.setLayoutParams(a);
    this.i.setVisibility(4);
    this.i.getSettings().setSavePassword(false);
  }
  
  private static void c(Context paramContext, String paramString)
  {
    try
    {
      paramString = Util.parseJson(paramString);
      int m = paramString.getInt("type");
      paramString = paramString.getString("msg");
      if (m == 0)
      {
        if (b == null) {
          b = Toast.makeText(paramContext, paramString, 0);
        }
        for (;;)
        {
          b.show();
          return;
          b.setView(b.getView());
          b.setText(paramString);
          b.setDuration(0);
        }
      }
      if (m != 1) {
        return;
      }
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    if (b == null) {
      b = Toast.makeText(paramContext, paramString, 1);
    }
    for (;;)
    {
      b.show();
      return;
      b.setView(b.getView());
      b.setText(paramString);
      b.setDuration(1);
    }
  }
  
  private static void d(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (paramString == null)) {}
    int m;
    do
    {
      do
      {
        return;
        try
        {
          paramString = Util.parseJson(paramString);
          m = paramString.getInt("action");
          paramString = paramString.getString("msg");
          if (m != 1) {
            break;
          }
          if ((d == null) || (d.get() == null))
          {
            paramContext = new ProgressDialog(paramContext);
            paramContext.setMessage(paramString);
            d = new WeakReference(paramContext);
            paramContext.show();
            return;
          }
        }
        catch (JSONException paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
        ((ProgressDialog)d.get()).setMessage(paramString);
      } while (((ProgressDialog)d.get()).isShowing());
      ((ProgressDialog)d.get()).show();
      return;
    } while ((m != 0) || (d == null) || (d.get() == null) || (!((ProgressDialog)d.get()).isShowing()));
    ((ProgressDialog)d.get()).dismiss();
    d = null;
  }
  
  public void onBackPressed()
  {
    if (this.f != null) {
      this.f.onCancel();
    }
    super.onBackPressed();
  }
  
  protected void onConsoleMessage(String paramString)
  {
    f.b("TDialog", "--onConsoleMessage--");
    try
    {
      this.jsBridge.a(this.i, paramString);
      return;
    }
    catch (Exception paramString) {}
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    a();
    b();
  }
  
  private class FbWebViewClient
    extends WebViewClient
  {
    private FbWebViewClient() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      TDialog.d(TDialog.this).setVisibility(0);
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      Util.logd("TDialog", "Webview loading URL: " + paramString);
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    }
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      TDialog.c(TDialog.this).onError(new UiError(paramInt, paramString1, paramString2));
      if ((TDialog.a(TDialog.this) != null) && (TDialog.a(TDialog.this).get() != null)) {
        Toast.makeText((Context)TDialog.a(TDialog.this).get(), "网络连接异常或系统错误", 0).show();
      }
      TDialog.this.dismiss();
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      Util.logd("TDialog", "Redirect URL: " + paramString);
      if (paramString.startsWith(ServerSetting.getInstance().getEnvUrl((Context)TDialog.a(TDialog.this).get(), "auth://tauth.qq.com/")))
      {
        TDialog.c(TDialog.this).onComplete(Util.parseUrlToJson(paramString));
        if (TDialog.this.isShowing()) {
          TDialog.this.dismiss();
        }
        return true;
      }
      if (paramString.startsWith("auth://cancel"))
      {
        TDialog.c(TDialog.this).onCancel();
        if (TDialog.this.isShowing()) {
          TDialog.this.dismiss();
        }
        return true;
      }
      if (paramString.startsWith("auth://close"))
      {
        if (TDialog.this.isShowing()) {
          TDialog.this.dismiss();
        }
        return true;
      }
      if (paramString.startsWith("download://"))
      {
        paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(paramString.substring("download://".length()))));
        paramWebView.addFlags(268435456);
        if ((TDialog.a(TDialog.this) != null) && (TDialog.a(TDialog.this).get() != null)) {
          ((Context)TDialog.a(TDialog.this).get()).startActivity(paramWebView);
        }
        return true;
      }
      return paramString.startsWith("auth://progress");
    }
  }
  
  private class JsListener
    extends a.b
  {
    private JsListener() {}
    
    public void onAddShare(String paramString)
    {
      f.b("TDialog", "onAddShare");
      onComplete(paramString);
    }
    
    public void onCancel(String paramString)
    {
      f.b("TDialog", "onCancel --msg = " + paramString);
      TDialog.b(TDialog.this).obtainMessage(2, paramString).sendToTarget();
      TDialog.this.dismiss();
    }
    
    public void onCancelAddShare(String paramString)
    {
      f.b("TDialog", "onCancelAddShare");
      onCancel("cancel");
    }
    
    public void onCancelInvite()
    {
      f.b("TDialog", "onCancelInvite");
      onCancel("");
    }
    
    public void onCancelLogin()
    {
      onCancel("");
    }
    
    public void onComplete(String paramString)
    {
      TDialog.b(TDialog.this).obtainMessage(1, paramString).sendToTarget();
      f.e("onComplete", paramString);
      TDialog.this.dismiss();
    }
    
    public void onInvite(String paramString)
    {
      onComplete(paramString);
    }
    
    public void onLoad(String paramString)
    {
      TDialog.b(TDialog.this).obtainMessage(4, paramString).sendToTarget();
    }
    
    public void showMsg(String paramString)
    {
      TDialog.b(TDialog.this).obtainMessage(3, paramString).sendToTarget();
    }
  }
  
  private static class OnTimeListener
    implements IUiListener
  {
    private String mAction;
    String mAppid;
    String mUrl;
    private WeakReference<Context> mWeakCtx;
    private IUiListener mWeakL;
    
    public OnTimeListener(Context paramContext, String paramString1, String paramString2, String paramString3, IUiListener paramIUiListener)
    {
      this.mWeakCtx = new WeakReference(paramContext);
      this.mAction = paramString1;
      this.mUrl = paramString2;
      this.mAppid = paramString3;
      this.mWeakL = paramIUiListener;
    }
    
    private void onComplete(String paramString)
    {
      try
      {
        onComplete(Util.parseJson(paramString));
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        onError(new UiError(-4, "服务器返回数据格式有误!", paramString));
      }
    }
    
    public void onCancel()
    {
      if (this.mWeakL != null)
      {
        this.mWeakL.onCancel();
        this.mWeakL = null;
      }
    }
    
    public void onComplete(Object paramObject)
    {
      paramObject = (JSONObject)paramObject;
      g.a().a(this.mAction + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, ((JSONObject)paramObject).optInt("ret", -6), this.mUrl, false);
      if (this.mWeakL != null)
      {
        this.mWeakL.onComplete(paramObject);
        this.mWeakL = null;
      }
    }
    
    public void onError(UiError paramUiError)
    {
      if (paramUiError.errorMessage != null) {}
      for (String str = paramUiError.errorMessage + this.mUrl;; str = this.mUrl)
      {
        g.a().a(this.mAction + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, paramUiError.errorCode, str, false);
        if (this.mWeakL != null)
        {
          this.mWeakL.onError(paramUiError);
          this.mWeakL = null;
        }
        return;
      }
    }
  }
  
  private class THandler
    extends Handler
  {
    private TDialog.OnTimeListener mL;
    
    public THandler(TDialog.OnTimeListener paramOnTimeListener, Looper paramLooper)
    {
      super();
      this.mL = paramOnTimeListener;
    }
    
    public void handleMessage(Message paramMessage)
    {
      f.b("TAG", "--handleMessage--msg.WHAT = " + paramMessage.what);
      switch (paramMessage.what)
      {
      }
      do
      {
        do
        {
          return;
          this.mL.onComplete((String)paramMessage.obj);
          return;
          this.mL.onCancel();
          return;
        } while ((TDialog.a(TDialog.this) == null) || (TDialog.a(TDialog.this).get() == null));
        TDialog.a((Context)TDialog.a(TDialog.this).get(), (String)paramMessage.obj);
        return;
      } while ((TDialog.a(TDialog.this) == null) || (TDialog.a(TDialog.this).get() == null));
      TDialog.b((Context)TDialog.a(TDialog.this).get(), (String)paramMessage.obj);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/open/TDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */