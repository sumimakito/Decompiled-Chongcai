.class public Lcn/apppark/vertify/activity/buy/BuyWebView;
.super Landroid/app/Activity;


# instance fields
.field private btn_back:Landroid/widget/Button;

.field private mWebView:Landroid/webkit/WebView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private title:Ljava/lang/String;

.field private tv_title:Landroid/widget/TextView;

.field private urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/buy/BuyWebView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private initWebView()V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lgf;

    invoke-direct {v1, p0}, Lgf;-><init>(Lcn/apppark/vertify/activity/buy/BuyWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lgg;

    invoke-direct {v1, p0}, Lgg;-><init>(Lcn/apppark/vertify/activity/buy/BuyWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->urlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a015f

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a0160

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0a0162

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f0a0161

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->btn_back:Landroid/widget/Button;

    new-instance v1, Lcn/apppark/vertify/activity/buy/BuyWebView$1;

    invoke-direct {v1, p0}, Lcn/apppark/vertify/activity/buy/BuyWebView$1;-><init>(Lcn/apppark/vertify/activity/buy/BuyWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->urlStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->initWebView()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "url\u5730\u5740\u9519\u8bef"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->setContentView(I)V

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "urlStr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->urlStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/buy/BuyWebView;->title:Ljava/lang/String;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyWebView;->initWidget()V

    return-void
.end method
