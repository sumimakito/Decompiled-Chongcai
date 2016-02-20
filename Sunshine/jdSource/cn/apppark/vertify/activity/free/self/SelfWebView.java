package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.ZoomButtonsController;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.vo.free.SelfWebItemVo;
import cn.apppark.vertify.activity.ISelfView;
import java.lang.reflect.Field;
import mr;
import ms;
import mt;
import mu;

public class SelfWebView
  extends RelativeLayout
  implements View.OnClickListener, ISelfView
{
  private static final float[] IV_SELECTED = { 1.0F, 0.0F, 0.0F, 0.0F, 50.0F, 0.0F, 1.0F, 0.0F, 0.0F, 50.0F, 0.0F, 0.0F, 1.0F, 0.0F, 50.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F };
  public Animation a;
  public Animation b;
  private Drawable backgroundDrawable;
  public float c;
  private Context context;
  private ProgressBar mProgressBar;
  private WebView mWebView;
  private View navBar;
  private ImageView nextIV;
  private ImageView openIV;
  private ScrollView parentScroll;
  private ImageView preIV;
  private ImageView refIV;
  private SelfWebItemVo vo;
  
  public SelfWebView(Context paramContext, SelfWebItemVo paramSelfWebItemVo, ScrollView paramScrollView)
  {
    super(paramContext);
    this.context = paramContext;
    this.vo = paramSelfWebItemVo;
    this.parentScroll = paramScrollView;
    init();
    initNavBar();
    this.b = AnimationUtils.loadAnimation(paramContext, 2130968581);
    this.b.setDuration(500L);
    this.b.setFillEnabled(true);
    this.b.setFillAfter(true);
    this.a = AnimationUtils.loadAnimation(paramContext, 2130968582);
    this.a.setDuration(500L);
    this.a.setFillEnabled(true);
    this.a.setFillAfter(true);
  }
  
  private void initNavBar()
  {
    if (this.vo.getStyle_showNavFlag().equals("1"))
    {
      this.refIV.setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(this.vo.getStyle_refPagePic()));
      this.preIV.setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(this.vo.getStyle_prePagePic()));
      this.nextIV.setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(this.vo.getStyle_nextPagePic()));
      this.openIV.setImageDrawable(HQCHApplication.cacheUtil.getCachedDrawable(this.vo.getStyle_browsePagePic()));
      this.refIV.setOnClickListener(this);
      this.preIV.setOnClickListener(this);
      this.nextIV.setOnClickListener(this);
      this.openIV.setOnClickListener(this);
      switch (FunctionPublic.str2int(this.vo.getStyle_barBgType()))
      {
      }
      for (;;)
      {
        this.navBar.setBackgroundDrawable(this.backgroundDrawable);
        this.navBar.setClickable(true);
        return;
        Object localObject = new ColorDrawable(FunctionPublic.convertColor(this.vo.getStyle_barBgColor()));
        int i = FunctionPublic.str2int(this.vo.getStyle_barBgAlpha());
        if ((i >= 0) && (i <= 100)) {
          ((ColorDrawable)localObject).setAlpha((int)(i * 255.0F / 100.0F));
        }
        this.backgroundDrawable = ((Drawable)localObject);
        continue;
        localObject = HQCHApplication.cacheUtil.getCachedDrawable(this.vo.getStyle_barBgPic());
        i = FunctionPublic.str2int(this.vo.getStyle_barBgAlpha());
        if ((localObject != null) && (i >= 0) && (i <= 100)) {
          ((Drawable)localObject).setAlpha((int)(i * 255.0F / 100.0F));
        }
        this.backgroundDrawable = ((Drawable)localObject);
      }
    }
    this.navBar.setVisibility(8);
  }
  
  public void callTel(String paramString)
  {
    try
    {
      paramString = new Intent("android.intent.action.DIAL", Uri.parse(paramString));
      this.context.startActivity(paramString);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void init()
  {
    this.mProgressBar = new ProgressBar(this.context);
    Object localObject = new RelativeLayout.LayoutParams(-2, -2);
    ((RelativeLayout.LayoutParams)localObject).addRule(13);
    addView(this.mProgressBar, (ViewGroup.LayoutParams)localObject);
    this.navBar = LayoutInflater.from(this.context).inflate(2130903194, null);
    localObject = new RelativeLayout.LayoutParams(-1, (int)(40.0F * YYGYContants.scaleUnite));
    ((RelativeLayout.LayoutParams)localObject).addRule(12);
    this.openIV = ((ImageView)this.navBar.findViewById(2131362750));
    this.refIV = ((ImageView)this.navBar.findViewById(2131362751));
    this.preIV = ((ImageView)this.navBar.findViewById(2131362748));
    this.nextIV = ((ImageView)this.navBar.findViewById(2131362749));
    addView(this.navBar, (ViewGroup.LayoutParams)localObject);
    this.mWebView = new WebView(HQCHApplication.mainActivity);
    localObject = new RelativeLayout.LayoutParams(-1, -1);
    addView(this.mWebView, 0, (ViewGroup.LayoutParams)localObject);
    if ("1".equals(this.vo.getStyle_gesture()))
    {
      this.mWebView.getSettings().setSupportZoom(true);
      this.mWebView.getSettings().setBuiltInZoomControls(true);
      if (YYGYContants.SDK <= 11) {
        break label455;
      }
      this.mWebView.getSettings().setDisplayZoomControls(false);
    }
    for (;;)
    {
      this.mWebView.requestFocus();
      this.mWebView.clearCache(true);
      this.mWebView.getSettings().setDefaultTextEncodingName("UTF-8");
      this.mWebView.getSettings().setAllowFileAccess(true);
      this.mWebView.setVerticalScrollBarEnabled(false);
      this.mWebView.getSettings().setCacheMode(1);
      this.mWebView.getSettings().setDomStorageEnabled(true);
      this.mWebView.getSettings().setPluginState(WebSettings.PluginState.ON);
      this.mWebView.getSettings().setJavaScriptEnabled(true);
      this.mWebView.setWebViewClient(new mr(this));
      this.mWebView.setWebChromeClient(new ms(this));
      this.mWebView.setOnTouchListener(new mt(this));
      this.mWebView.setDownloadListener(new mu(this));
      String str = this.vo.getData_url();
      localObject = str;
      if (str.startsWith("www.")) {
        localObject = "http://" + this.vo.getData_url();
      }
      this.mWebView.loadUrl((String)localObject);
      return;
      label455:
      setZoomControlGone(this.mWebView);
    }
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131362751: 
    case 2131362748: 
    case 2131362749: 
      do
      {
        do
        {
          return;
          this.mWebView.clearCache(true);
          this.mWebView.loadUrl(this.vo.getData_url());
          return;
        } while (!this.mWebView.canGoBack());
        this.mWebView.goBack();
        return;
      } while (!this.mWebView.canGoForward());
      this.mWebView.goForward();
      return;
    }
    try
    {
      paramView = new Intent();
      paramView.setAction("android.intent.action.VIEW");
      paramView.setData(Uri.parse(this.vo.getData_url()));
      HQCHApplication.mainActivity.startActivity(paramView);
      return;
    }
    catch (Exception paramView) {}
  }
  
  public void onDestroy()
  {
    if (this.mWebView != null)
    {
      this.mWebView.clearCache(true);
      this.mWebView.destroy();
    }
  }
  
  public void onPause() {}
  
  public void onResume() {}
  
  public void setZoomControlGone(View paramView)
  {
    try
    {
      Field localField = WebView.class.getDeclaredField("mZoomButtonsController");
      localField.setAccessible(true);
      ZoomButtonsController localZoomButtonsController = new ZoomButtonsController(paramView);
      localZoomButtonsController.getZoomControls().setVisibility(8);
      return;
    }
    catch (SecurityException paramView)
    {
      try
      {
        localField.set(paramView, localZoomButtonsController);
        return;
      }
      catch (IllegalArgumentException paramView)
      {
        paramView.printStackTrace();
        return;
        paramView = paramView;
        paramView.printStackTrace();
        return;
      }
      catch (IllegalAccessException paramView)
      {
        paramView.printStackTrace();
        return;
      }
    }
    catch (NoSuchFieldException paramView)
    {
      paramView.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */