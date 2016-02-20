.class public Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;
.super Landroid/app/Activity;
.source "WeiboSdkBrowser.java"

# interfaces
.implements Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;
    }
.end annotation


# static fields
.field public static final BROWSER_CLOSE_SCHEME:Ljava/lang/String; = "sinaweibo://browser/close"

.field public static final BROWSER_WIDGET_SCHEME:Ljava/lang/String; = "sinaweibo://browser/datatransfer"

.field private static final CANCEL_EN:Ljava/lang/String; = "Close"

.field private static final CANCEL_ZH_CN:Ljava/lang/String; = "\u5173\u95ed"

.field private static final CANCEL_ZH_TW:Ljava/lang/String; = "\u5173\u95ed"

.field private static final CHANNEL_DATA_ERROR_EN:Ljava/lang/String; = "channel_data_error"

.field private static final CHANNEL_DATA_ERROR_ZH_CN:Ljava/lang/String; = "\u91cd\u65b0\u52a0\u8f7d"

.field private static final CHANNEL_DATA_ERROR_ZH_TW:Ljava/lang/String; = "\u91cd\u65b0\u8f09\u5165"

.field private static final EMPTY_PROMPT_BAD_NETWORK_UI_EN:Ljava/lang/String; = "A network error occurs, please tap the button to reload"

.field private static final EMPTY_PROMPT_BAD_NETWORK_UI_ZH_CN:Ljava/lang/String; = "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

.field private static final EMPTY_PROMPT_BAD_NETWORK_UI_ZH_TW:Ljava/lang/String; = "\u7db2\u8def\u51fa\u932f\u5566\uff0c\u8acb\u9ede\u64ca\u6309\u9215\u91cd\u65b0\u8f09\u5165"

.field private static final LOADINFO_EN:Ljava/lang/String; = "Loading...."

.field private static final LOADINFO_ZH_CN:Ljava/lang/String; = "\u52a0\u8f7d\u4e2d...."

.field private static final LOADINFO_ZH_TW:Ljava/lang/String; = "\u8f09\u5165\u4e2d...."

.field private static final TAG:Ljava/lang/String;

.field private static final WEIBOBROWSER_NO_TITLE_EN:Ljava/lang/String; = "No Title"

.field private static final WEIBOBROWSER_NO_TITLE_ZH_CN:Ljava/lang/String; = "\u65e0\u6807\u9898"

.field private static final WEIBOBROWSER_NO_TITLE_ZH_TW:Ljava/lang/String; = "\u7121\u6a19\u984c"


# instance fields
.field private isErrorPage:Z

.field private isLoading:Z

.field private mHtmlTitle:Ljava/lang/String;

.field private mLeftBtn:Landroid/widget/TextView;

.field private mLoadErrorRetryBtn:Landroid/widget/Button;

.field private mLoadErrorView:Landroid/widget/LinearLayout;

.field private mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

.field private mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

.field private mSpecifyTitle:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/view/LoadingBar;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isLoading:Z

    return-void
.end method

.method static synthetic access$10(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isErrorPage:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isLoading:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isWeiboCustomScheme(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->updateTitleName()V

    return-void
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    return-object v0
.end method

.method public static closeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "authListenerKey"    # Ljava/lang/String;
    .param p2, "widgetRequestCallbackKey"    # Ljava/lang/String;

    .prologue
    .line 604
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 603
    invoke-static {v1}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/WeiboCallbackManager;

    move-result-object v0

    .line 605
    .local v0, "manager":Lcom/sina/weibo/sdk/component/WeiboCallbackManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->removeWeiboAuthListener(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 609
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->removeWidgetRequestCallback(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 613
    :cond_1
    return-void
.end method

.method private createBrowserRequestParam(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 510
    const/4 v2, 0x0

    .line 512
    .local v2, "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    const-string v6, "key_launcher"

    .line 511
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    .line 513
    .local v1, "launcher":Lcom/sina/weibo/sdk/component/BrowserLauncher;
    sget-object v6, Lcom/sina/weibo/sdk/component/BrowserLauncher;->AUTH:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v1, v6, :cond_0

    .line 514
    new-instance v0, Lcom/sina/weibo/sdk/component/AuthRequestParam;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/AuthRequestParam;-><init>(Landroid/content/Context;)V

    .line 515
    .local v0, "authRequestParam":Lcom/sina/weibo/sdk/component/AuthRequestParam;
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setupRequestParam(Landroid/os/Bundle;)V

    .line 516
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->installAuthWeiboWebViewClient(Lcom/sina/weibo/sdk/component/AuthRequestParam;)V

    .line 517
    move-object v2, v0

    move-object v3, v2

    .line 532
    .end local v0    # "authRequestParam":Lcom/sina/weibo/sdk/component/AuthRequestParam;
    .end local v2    # "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    .local v3, "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    :goto_0
    return-object v3

    .line 520
    .end local v3    # "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    .restart local v2    # "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    :cond_0
    sget-object v6, Lcom/sina/weibo/sdk/component/BrowserLauncher;->SHARE:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v1, v6, :cond_2

    .line 521
    new-instance v4, Lcom/sina/weibo/sdk/component/ShareRequestParam;

    invoke-direct {v4, p0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;-><init>(Landroid/content/Context;)V

    .line 522
    .local v4, "shareRequestParam":Lcom/sina/weibo/sdk/component/ShareRequestParam;
    invoke-virtual {v4, p1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->setupRequestParam(Landroid/os/Bundle;)V

    .line 523
    invoke-direct {p0, v4}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->installShareWeiboWebViewClient(Lcom/sina/weibo/sdk/component/ShareRequestParam;)V

    .line 524
    move-object v2, v4

    .end local v4    # "shareRequestParam":Lcom/sina/weibo/sdk/component/ShareRequestParam;
    :cond_1
    :goto_1
    move-object v3, v2

    .line 532
    .end local v2    # "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    .restart local v3    # "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    goto :goto_0

    .line 526
    .end local v3    # "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    .restart local v2    # "result":Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    :cond_2
    sget-object v6, Lcom/sina/weibo/sdk/component/BrowserLauncher;->WIDGET:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v1, v6, :cond_1

    .line 527
    new-instance v5, Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-direct {v5, p0}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;-><init>(Landroid/content/Context;)V

    .line 528
    .local v5, "widgetRequestParam":Lcom/sina/weibo/sdk/component/WidgetRequestParam;
    invoke-virtual {v5, p1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setupRequestParam(Landroid/os/Bundle;)V

    .line 529
    invoke-direct {p0, v5}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->installWidgetWeiboWebViewClient(Lcom/sina/weibo/sdk/component/WidgetRequestParam;)V

    .line 530
    move-object v2, v5

    goto :goto_1
.end method

.method private handleReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 433
    const-string v0, "sinaweibo"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isErrorPage:Z

    .line 435
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->promptError()V

    .line 437
    :cond_0
    return-void
.end method

.method private hiddenErrorPrompt()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 447
    return-void
.end method

.method private initDataFromIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->createBrowserRequestParam(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    .line 144
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->getSpecifyTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    .line 156
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const/4 v3, 0x0

    .line 161
    :goto_1
    return v3

    .line 148
    :cond_1
    const-string v3, "key_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "url":Ljava/lang/String;
    const-string v3, "key_specify_title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "specifyTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iput-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    goto :goto_0

    .line 159
    .end local v1    # "specifyTitle":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LOAD URL : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private initTitleBar()Landroid/view/View;
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x2

    .line 370
    const/16 v0, 0x2d

    .line 372
    .local v0, "TITLE_BAR_HEIGHT":I
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 373
    .local v2, "titleBar":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 374
    const/4 v5, -0x1

    .line 375
    const/16 v6, 0x2d

    invoke-static {p0, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 373
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    const-string v4, "weibosdk_navigationbar_background.9.png"

    .line 376
    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    .line 380
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 381
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 382
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    const/16 v5, -0x7e00

    const v6, 0x66ff8200

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 383
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    const-string v5, "Close"

    const-string v6, "\u5173\u95ed"

    const-string v7, "\u5173\u95ed"

    invoke-static {p0, v5, v6, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 387
    .local v1, "leftBtnLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 389
    invoke-static {p0, v11}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 390
    invoke-static {p0, v11}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 391
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 394
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    .line 395
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 396
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const v5, -0xadadae

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 398
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 399
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 400
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const/16 v5, 0xa0

    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 401
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    .local v3, "titleTextLy":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 407
    return-object v2
.end method

.method private initWebView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isWeiboShareRequestParam(Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/Utility;->generateUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 214
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 215
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 216
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 217
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->removeJavascriptInterface(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method private installAuthWeiboWebViewClient(Lcom/sina/weibo/sdk/component/AuthRequestParam;)V
    .locals 1
    .param p1, "param"    # Lcom/sina/weibo/sdk/component/AuthRequestParam;

    .prologue
    .line 540
    new-instance v0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/AuthRequestParam;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    .line 541
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->setBrowserRequestCallBack(Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;)V

    .line 542
    return-void
.end method

.method private installShareWeiboWebViewClient(Lcom/sina/weibo/sdk/component/ShareRequestParam;)V
    .locals 1
    .param p1, "param"    # Lcom/sina/weibo/sdk/component/ShareRequestParam;

    .prologue
    .line 545
    new-instance v0, Lcom/sina/weibo/sdk/component/ShareWeiboWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/ShareWeiboWebViewClient;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/ShareRequestParam;)V

    .line 546
    .local v0, "client":Lcom/sina/weibo/sdk/component/ShareWeiboWebViewClient;
    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/ShareWeiboWebViewClient;->setBrowserRequestCallBack(Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;)V

    .line 547
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    .line 548
    return-void
.end method

.method private installWidgetWeiboWebViewClient(Lcom/sina/weibo/sdk/component/WidgetRequestParam;)V
    .locals 1
    .param p1, "param"    # Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    .prologue
    .line 551
    new-instance v0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/WidgetRequestParam;)V

    .line 552
    .local v0, "client":Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;
    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->setBrowserRequestCallBack(Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;)V

    .line 553
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    .line 554
    return-void
.end method

.method private isWeiboCustomScheme(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    const-string v1, "sinaweibo"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWeiboShareRequestParam(Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;)Z
    .locals 2
    .param p1, "reqParam"    # Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    .prologue
    .line 536
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->getLauncher()Lcom/sina/weibo/sdk/component/BrowserLauncher;

    move-result-object v0

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->SHARE:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private promptError()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 442
    return-void
.end method

.method private setContentView()V
    .locals 20

    .prologue
    .line 258
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 259
    .local v4, "contentLy":Landroid/widget/RelativeLayout;
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    .line 260
    const/16 v17, -0x1

    .line 261
    const/16 v18, -0x1

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 259
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 264
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 265
    .local v14, "titleBarLy":Landroid/widget/LinearLayout;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 266
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 268
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    .line 269
    const/16 v17, -0x1

    .line 270
    const/16 v18, -0x2

    .line 268
    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 267
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->initTitleBar()Landroid/view/View;

    move-result-object v13

    .line 274
    .local v13, "titleBar":Landroid/view/View;
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 275
    .local v12, "shadowBar":Landroid/widget/TextView;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 276
    const/16 v17, -0x1

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    const-string v16, "weibosdk_common_shadow_top.9.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 277
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    new-instance v16, Lcom/sina/weibo/sdk/component/view/LoadingBar;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setBackgroundColor(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->drawProgress(I)V

    .line 283
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 284
    const/16 v16, -0x1

    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v17

    .line 283
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v10, "loadingBarLy":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    new-instance v16, Landroid/webkit/WebView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 293
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 294
    const/16 v16, -0x1

    .line 295
    const/16 v17, -0x1

    .line 293
    invoke-direct/range {v15 .. v17}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v15, "webViewLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v16, 0x3

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x11

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 303
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    const/16 v16, -0x1

    .line 305
    const/16 v17, -0x1

    .line 303
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    .local v11, "mLoadErrorViewLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v16, 0x3

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 310
    .local v7, "loadErrorImg":Landroid/widget/ImageView;
    const-string v16, "weibosdk_empty_failed.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    const/16 v16, -0x2

    .line 313
    const/16 v17, -0x2

    .line 311
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 317
    .local v8, "loadErrorImgLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v16

    .line 316
    move/from16 v0, v16

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 315
    move/from16 v0, v16

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 314
    move/from16 v0, v16

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v16

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 318
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 322
    .local v5, "loadErrorContent":Landroid/widget/TextView;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 323
    const v16, -0x424243

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    const/16 v16, 0x2

    const/high16 v17, 0x41600000    # 14.0f

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 326
    const-string v16, "A network error occurs, please tap the button to reload"

    .line 327
    const-string v17, "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

    .line 328
    const-string v18, "\u7db2\u8def\u51fa\u932f\u5566\uff0c\u8acb\u9ede\u64ca\u6309\u9215\u91cd\u65b0\u8f09\u5165"

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    const/16 v16, -0x2

    .line 331
    const/16 v17, -0x2

    .line 329
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 332
    .local v6, "loadErrorContentLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    new-instance v16, Landroid/widget/Button;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x11

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setGravity(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    const v17, -0x878788

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setTextColor(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    const/high16 v18, 0x41800000    # 16.0f

    invoke-virtual/range {v16 .. v18}, Landroid/widget/Button;->setTextSize(IF)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    .line 340
    const-string v17, "channel_data_error"

    .line 341
    const-string v18, "\u91cd\u65b0\u52a0\u8f7d"

    .line 342
    const-string v19, "\u91cd\u65b0\u8f09\u5165"

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    .line 344
    const-string v17, "weibosdk_common_button_alpha.9.png"

    .line 345
    const-string v18, "weibosdk_common_button_alpha_highlighted.9.png"

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 347
    const/16 v16, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v16

    .line 348
    const/16 v17, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v17

    .line 346
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 349
    .local v9, "loadErrorRetryBtnLp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v16, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    new-instance v17, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 364
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setContentView(Landroid/view/View;)V

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setTopNavTitle()V

    .line 367
    return-void
.end method

.method private setTopNavTitle()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method private setViewLoading()V
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    .line 427
    const-string v1, "Loading...."

    const-string v2, "\u52a0\u8f7d\u4e2d...."

    const-string v3, "\u8f09\u5165\u4e2d...."

    .line 426
    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setVisibility(I)V

    .line 429
    return-void
.end method

.method private setViewNormal()V
    .locals 2

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->updateTitleName()V

    .line 421
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setVisibility(I)V

    .line 422
    return-void
.end method

.method public static startAuth(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;
    .param p3, "listener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 105
    new-instance v1, Lcom/sina/weibo/sdk/component/AuthRequestParam;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/AuthRequestParam;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, "reqParam":Lcom/sina/weibo/sdk/component/AuthRequestParam;
    sget-object v2, Lcom/sina/weibo/sdk/component/BrowserLauncher;->AUTH:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setLauncher(Lcom/sina/weibo/sdk/component/BrowserLauncher;)V

    .line 107
    invoke-virtual {v1, p1}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setUrl(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p2}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setAuthInfo(Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    .line 109
    invoke-virtual {v1, p3}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->createRequestParamBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method private startShare()V
    .locals 6

    .prologue
    .line 169
    sget-object v2, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    const-string v3, "Enter startShare()............"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    check-cast v1, Lcom/sina/weibo/sdk/component/ShareRequestParam;

    .line 171
    .local v1, "req":Lcom/sina/weibo/sdk/component/ShareRequestParam;
    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    sget-object v2, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    const-string v3, "loadUrl hasImage............"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "param":Lcom/sina/weibo/sdk/net/WeiboParameters;
    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->buildUploadPicParam(Lcom/sina/weibo/sdk/net/WeiboParameters;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 175
    new-instance v2, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    invoke-direct {v2, p0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;-><init>(Landroid/content/Context;)V

    const-string v3, "http://service.weibo.com/share/mobilesdk_uppic.php"

    .line 176
    const-string v4, "POST"

    new-instance v5, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;

    invoke-direct {v5, p0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/ShareRequestParam;)V

    .line 175
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 200
    .end local v0    # "param":Lcom/sina/weibo/sdk/net/WeiboParameters;
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->openUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startShared(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;
    .param p3, "listener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 119
    return-void
.end method

.method private updateTitleName()V
    .locals 2

    .prologue
    .line 245
    const-string v0, ""

    .line 247
    .local v0, "showTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    .line 253
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->initDataFromIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 139
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setContentView()V

    .line 132
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->initWebView()V

    .line 134
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isWeiboShareRequestParam(Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->startShare()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->openUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 492
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->clearCookies(Landroid/content/Context;)V

    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 494
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 498
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    .line 501
    const/4 v1, 0x3

    .line 500
    invoke-virtual {v0, p0, v1}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->execRequest(Landroid/app/Activity;I)V

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 504
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 579
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isErrorPage:Z

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->promptError()V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isErrorPage:Z

    .line 584
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->hiddenErrorPrompt()V

    goto :goto_0
.end method

.method public onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 558
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    .line 560
    invoke-direct {p0, p2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isWeiboCustomScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    .line 569
    :cond_0
    return-void
.end method

.method public onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 591
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError: errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    const-string v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 593
    const-string v2, ", failingUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->handleReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public onReceivedSslErrorCallBack(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 599
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    const-string v1, "onReceivedSslErrorCallBack........."

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 487
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 488
    return-void
.end method

.method protected refreshAllViews()V
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isLoading:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setViewLoading()V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setViewNormal()V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Landroid/webkit/WebView;)V
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 616
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 618
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 619
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "removeJavascriptInterface"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 620
    .local v2, "m1":Ljava/lang/reflect/Method;
    const-string v3, "searchBoxJavaBridge_"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m1":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 573
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    return v0
.end method
