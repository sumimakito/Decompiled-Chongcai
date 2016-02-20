.class public final Luq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/base/PushWebView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/PushWebView;)V
    .locals 0

    iput-object p1, p0, Luq;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Luq;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->e(Lcn/apppark/vertify/base/PushWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Luq;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->f(Lcn/apppark/vertify/base/PushWebView;)I

    iget-object v0, p0, Luq;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->g(Lcn/apppark/vertify/base/PushWebView;)I

    move-result v0

    iget-object v1, p0, Luq;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v1}, Lcn/apppark/vertify/base/PushWebView;->h(Lcn/apppark/vertify/base/PushWebView;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Luq;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->i(Lcn/apppark/vertify/base/PushWebView;)Lup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lup;->sendEmptyMessage(I)Z

    iget-object v0, p0, Luq;->a:Lcn/apppark/vertify/base/PushWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/base/PushWebView;->a(Lcn/apppark/vertify/base/PushWebView;I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
