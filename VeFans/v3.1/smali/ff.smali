.class public final Lff;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/BuyProductDetail;)V
    .locals 0

    iput-object p1, p0, Lff;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "video:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lff;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    const-class v2, Lcn/apppark/vertify/activity/free/dyn/DynVideoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "videourl"

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lff;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lff;->a:Lcn/apppark/vertify/activity/buy/BuyProductDetail;

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/buy/BuyProductDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
