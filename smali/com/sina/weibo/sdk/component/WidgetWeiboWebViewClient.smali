.class Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;
.super Lcom/sina/weibo/sdk/component/WeiboWebViewClient;
.source "WidgetWeiboWebViewClient.java"


# instance fields
.field private mAct:Landroid/app/Activity;

.field private mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mWidgetCallback:Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

.field private mWidgetRequestParam:Lcom/sina/weibo/sdk/component/WidgetRequestParam;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/WidgetRequestParam;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestParam"    # Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mAct:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetRequestParam:Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    .line 22
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->getWidgetRequestCallback()Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetCallback:Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

    .line 23
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->getAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 24
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 31
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 32
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onReceivedSslErrorCallBack(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 84
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v2, p1, p2}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 40
    :cond_0
    const-string v2, "sinaweibo://browser/close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 41
    .local v1, "needClose":Z
    const-string v2, "sinaweibo://browser/close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    const-string v2, "sinaweibo://browser/datatransfer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    :cond_1
    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/Utility;->parseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v2, v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetCallback:Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

    if-eqz v2, :cond_3

    .line 50
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetCallback:Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

    invoke-interface {v2, p2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;->onWebViewResult(Ljava/lang/String;)V

    .line 52
    :cond_3
    if-eqz v1, :cond_4

    .line 53
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mAct:Landroid/app/Activity;

    .line 54
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetRequestParam:Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->getAuthListenerKey()Ljava/lang/String;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetRequestParam:Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->getWidgetRequestCallbackKey()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v2, v3, v4}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->closeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_4
    const/4 v2, 0x1

    .line 59
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
