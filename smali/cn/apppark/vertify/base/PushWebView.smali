.class public Lcn/apppark/vertify/base/PushWebView;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static urlStr:Ljava/lang/String;


# instance fields
.field private btn_back:Landroid/widget/Button;

.field private btn_finish:Landroid/widget/Button;

.field private btn_forward:Landroid/widget/Button;

.field private btn_ref:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private count:I

.field private delayTime:I

.field private isDestroy:Z

.field private ll_hiddenbar:Landroid/widget/LinearLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private myHandler:Lup;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rel_bottombar:Landroid/widget/RelativeLayout;

.field private rel_topbar:Landroid/widget/RelativeLayout;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcn/apppark/vertify/base/PushWebView;->urlStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcn/apppark/vertify/base/PushWebView;->context:Landroid/content/Context;

    new-instance v0, Lup;

    invoke-direct {v0, p0}, Lup;-><init>(Lcn/apppark/vertify/base/PushWebView;)V

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->myHandler:Lup;

    iput v1, p0, Lcn/apppark/vertify/base/PushWebView;->count:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/base/PushWebView;->delayTime:I

    iput-boolean v1, p0, Lcn/apppark/vertify/base/PushWebView;->isDestroy:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/base/PushWebView;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/base/PushWebView;->count:I

    return v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->rel_topbar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->rel_bottombar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->ll_hiddenbar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private clickAd(Ljava/lang/String;)V
    .locals 8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "msgId"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "json"

    invoke-static {v4}, Lcn/apppark/mcd/util/PublicUtil;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com/"

    const-string v6, "http://www.apppark.cn//push.ws"

    const-string v7, "updateMsgStatus"

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public static synthetic d(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/base/PushWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/apppark/vertify/base/PushWebView;->isDestroy:Z

    return v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/base/PushWebView;)I
    .locals 2

    iget v0, p0, Lcn/apppark/vertify/base/PushWebView;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/apppark/vertify/base/PushWebView;->count:I

    return v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/base/PushWebView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/base/PushWebView;->count:I

    return v0
.end method

.method public static synthetic h(Lcn/apppark/vertify/base/PushWebView;)I
    .locals 1

    iget v0, p0, Lcn/apppark/vertify/base/PushWebView;->delayTime:I

    return v0
.end method

.method public static synthetic i(Lcn/apppark/vertify/base/PushWebView;)Lup;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->myHandler:Lup;

    return-object v0
.end method

.method private initWebView()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lum;

    invoke-direct {v1, p0}, Lum;-><init>(Lcn/apppark/vertify/base/PushWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lun;

    invoke-direct {v1, p0}, Lun;-><init>(Lcn/apppark/vertify/base/PushWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcn/apppark/vertify/base/PushWebView;->urlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Luo;

    invoke-direct {v1, p0}, Luo;-><init>(Lcn/apppark/vertify/base/PushWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initWidget()V
    .locals 3

    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->ll_hiddenbar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->ll_hiddenbar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a02fe

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v1, Lcn/apppark/vertify/base/PushWebView$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/base/PushWebView$1;-><init>(Lcn/apppark/vertify/base/PushWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->rel_topbar:Landroid/widget/RelativeLayout;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/base/PushWebView;->rel_topbar:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a02f9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->rel_bottombar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02f5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a02f8

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_finish:Landroid/widget/Button;

    const v0, 0x7f0a02fa

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_forward:Landroid/widget/Button;

    const v0, 0x7f0a02fc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_ref:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_forward:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_forward:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_finish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_forward:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->btn_ref:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcn/apppark/vertify/base/PushWebView;->urlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcn/apppark/vertify/base/PushWebView;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a02f8
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/base/PushWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "urlStr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/vertify/base/PushWebView;->urlStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/base/PushWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/vertify/base/PushWebView;->urlStr:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcn/apppark/vertify/base/PushWebView;->initWidget()V

    invoke-direct {p0}, Lcn/apppark/vertify/base/PushWebView;->initWebView()V

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/base/PushWebView;->clickAd(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Luq;

    invoke-direct {v1, p0}, Luq;-><init>(Lcn/apppark/vertify/base/PushWebView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->context:Landroid/content/Context;

    const-string v1, "url\u5730\u5740\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcn/apppark/vertify/base/PushWebView;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/vertify/base/PushWebView;->isDestroy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/base/PushWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/apppark/vertify/base/PushWebView;->finish()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
