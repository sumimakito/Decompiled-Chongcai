.class public final Llu;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfWebView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfWebView;)V
    .locals 0

    iput-object p1, p0, Llu;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Llu;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->a(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Llu;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->a(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llu;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-virtual {v1, p2}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->callTel(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "mqqopensdkapi:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v2, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v2, v1}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
