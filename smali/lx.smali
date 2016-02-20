.class public final Llx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfWebView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfWebView;)V
    .locals 0

    iput-object p1, p0, Llx;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Llx;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfWebView;->e(Lcn/apppark/vertify/activity/free/self/SelfWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
