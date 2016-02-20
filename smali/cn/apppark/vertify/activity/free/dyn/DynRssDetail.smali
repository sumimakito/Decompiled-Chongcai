.class public Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btn_finish:Landroid/widget/Button;

.field private load:Lcn/apppark/mcd/widget/LoadDataProgress;

.field private mCustomView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;

.field private rel_topMenu:Landroid/widget/RelativeLayout;

.field private rssVo:Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;

.field private time:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tv_menuTitle:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mCustomView:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private back()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private initData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->tv_menuTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->tv_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->rssVo:Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initWidget()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x1

    const v0, 0x7f0a022c

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f0a022a

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->tv_menuTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0227

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->rel_topMenu:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a022b

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->tv_time:Landroid/widget/TextView;

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->rel_topMenu:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    const v0, 0x7f0a0229

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->btn_finish:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->btn_finish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->btn_finish:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljs;

    invoke-direct {v1, p0}, Ljs;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0229
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->setContentView(I)V

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/LoadDataProgress;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bund"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "vo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->rssVo:Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->rssVo:Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->rssVo:Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->title:Ljava/lang/String;

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->rssVo:Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/DynRssItem5003Vo;->getPubDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->time:Ljava/lang/String;

    invoke-direct {p0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->initWidget()V

    invoke-direct {p0, v2, v2}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->initData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->load:Lcn/apppark/mcd/widget/LoadDataProgress;

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/LoadDataProgress;->hidden()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mCustomView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
