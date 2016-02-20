.class public final Lvr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/base/InitClient;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/InitClient;)V
    .locals 0

    iput-object p1, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0, v5}, Lcn/apppark/vertify/base/InitClient;->a(Lcn/apppark/vertify/base/InitClient;Z)Z

    move v1, v2

    :goto_0
    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0}, Lcn/apppark/vertify/base/InitClient;->h(Lcn/apppark/vertify/base/InitClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0, v1}, Lcn/apppark/vertify/base/InitClient;->a(Lcn/apppark/vertify/base/InitClient;I)I

    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0}, Lcn/apppark/vertify/base/InitClient;->f(Lcn/apppark/vertify/base/InitClient;)Lcn/apppark/mcd/util/file/AssetsIO;

    move-result-object v3

    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0}, Lcn/apppark/vertify/base/InitClient;->e(Lcn/apppark/vertify/base/InitClient;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0}, Lcn/apppark/vertify/base/InitClient;->h(Lcn/apppark/vertify/base/InitClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/apppark/mcd/util/file/AssetsIO;->copyToSdcard(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    iget-object v3, v3, Lcn/apppark/vertify/base/InitClient;->a:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    iget-object v0, v0, Lcn/apppark/vertify/base/InitClient;->a:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0, v2}, Lcn/apppark/vertify/base/InitClient;->a(Lcn/apppark/vertify/base/InitClient;Z)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    invoke-static {v0}, Lcn/apppark/vertify/base/InitClient;->g(Lcn/apppark/vertify/base/InitClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateInitFlag()V

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lvr;->a:Lcn/apppark/vertify/base/InitClient;

    iget-object v1, v1, Lcn/apppark/vertify/base/InitClient;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
