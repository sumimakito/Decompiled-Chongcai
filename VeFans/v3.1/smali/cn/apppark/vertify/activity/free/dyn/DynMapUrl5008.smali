.class public Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcn/apppark/vertify/activity/ISelfViewDyn;


# instance fields
.field private context:Landroid/content/Context;

.field private loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWebView:Landroid/webkit/WebView;

.field private parentScroll:Landroid/widget/ScrollView;

.field private vo:Lcn/apppark/mcd/vo/dyn/Dyn5008Vo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/Dyn5008Vo;Lcn/apppark/mcd/widget/ElasticScrollView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->vo:Lcn/apppark/mcd/vo/dyn/Dyn5008Vo;

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->parentScroll:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcn/apppark/mcd/widget/ElasticScrollView;->setRefreshable(Z)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->init()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v5, v0}, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lgy;

    invoke-direct {v1, p0}, Lgy;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lgz;

    invoke-direct {v1, p0}, Lgz;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->vo:Lcn/apppark/mcd/vo/dyn/Dyn5008Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/Dyn5008Vo;->getData_mapURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public initData()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public isCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcn/apppark/vertify/activity/ILoadDataEndListener;->onLoadSuccess(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setLoadendListener(Lcn/apppark/vertify/activity/ILoadDataEndListener;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->loadendListener:Lcn/apppark/vertify/activity/ILoadDataEndListener;

    return-void
.end method
