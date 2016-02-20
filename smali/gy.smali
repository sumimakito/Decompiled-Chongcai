.class public final Lgy;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;)V
    .locals 0

    iput-object p1, p0, Lgy;->a:Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lgy;->a:Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->a(Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lgy;->a:Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;->a(Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
