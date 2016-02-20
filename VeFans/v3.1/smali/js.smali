.class public final Ljs;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;)V
    .locals 0

    iput-object p1, p0, Ljs;->a:Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ljs;->a:Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;->a(Lcn/apppark/vertify/activity/free/dyn/DynRssDetail;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
