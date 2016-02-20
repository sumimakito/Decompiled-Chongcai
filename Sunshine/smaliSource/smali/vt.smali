.class public final Lvt;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/base/PushWebView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/PushWebView;)V
    .locals 0

    iput-object p1, p0, Lvt;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lvt;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->d(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lvt;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->d(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lvt;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->d(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
