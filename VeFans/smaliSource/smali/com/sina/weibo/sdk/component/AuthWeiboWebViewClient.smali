.class Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;
.super Lcom/sina/weibo/sdk/component/WeiboWebViewClient;
.source "AuthWeiboWebViewClient.java"


# instance fields
.field private isCallBacked:Z

.field private mAct:Landroid/app/Activity;

.field private mAuthRequestParam:Lcom/sina/weibo/sdk/component/AuthRequestParam;

.field private mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/AuthRequestParam;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestParam"    # Lcom/sina/weibo/sdk/component/AuthRequestParam;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->isCallBacked:Z

    .line 24
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAct:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAuthRequestParam:Lcom/sina/weibo/sdk/component/AuthRequestParam;

    .line 26
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAuthRequestParam:Lcom/sina/weibo/sdk/component/AuthRequestParam;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->getAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 27
    return-void
.end method

.method private handleRedirectUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/Utility;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 109
    .local v3, "values":Landroid/os/Bundle;
    const-string v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "errorType":Ljava/lang/String;
    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "errorCode":Ljava/lang/String;
    const-string v4, "error_description"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "errorDescription":Ljava/lang/String;
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 114
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v4, v3}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 120
    new-instance v5, Lcom/sina/weibo/sdk/exception/WeiboAuthException;

    invoke-direct {v5, v0, v2, v1}, Lcom/sina/weibo/sdk/exception/WeiboAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {v4, v5}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v1, p1, p2, p3}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAuthRequestParam:Lcom/sina/weibo/sdk/component/AuthRequestParam;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v0

    .line 36
    .local v0, "authInfo":Lcom/sina/weibo/sdk/auth/AuthInfo;
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-boolean v1, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->isCallBacked:Z

    if-nez v1, :cond_1

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->isCallBacked:Z

    .line 39
    invoke-direct {p0, p2}, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->handleRedirectUrl(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 42
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAct:Landroid/app/Activity;

    .line 43
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAuthRequestParam:Lcom/sina/weibo/sdk/component/AuthRequestParam;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->getAuthListenerKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 42
    invoke-static {v1, v2, v3}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->closeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onReceivedSslErrorCallBack(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 97
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v2, p1, p2}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 57
    :cond_0
    const-string v2, "sms:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v2, "address"

    const-string v3, "sms:"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v0    # "sendIntent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 64
    :cond_1
    const-string v2, "sinaweibo://browser/close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v2}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAct:Landroid/app/Activity;

    .line 69
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;->mAuthRequestParam:Lcom/sina/weibo/sdk/component/AuthRequestParam;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->getAuthListenerKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 68
    invoke-static {v2, v3, v4}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->closeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
