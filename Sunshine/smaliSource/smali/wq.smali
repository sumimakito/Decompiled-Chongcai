.class public final Lwq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/network/VersionUpdateManager;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/VersionUpdateManager;)V
    .locals 0

    iput-object p1, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v2}, Lcn/apppark/vertify/network/VersionUpdateManager;->e(Lcn/apppark/vertify/network/VersionUpdateManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v4}, Lcn/apppark/vertify/network/VersionUpdateManager;->f(Lcn/apppark/vertify/network/VersionUpdateManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v4}, Lcn/apppark/vertify/network/VersionUpdateManager;->g(Lcn/apppark/vertify/network/VersionUpdateManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v5, v0, [B

    move v0, v1

    :cond_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v6, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    int-to-float v7, v0

    int-to-float v8, v2

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcn/apppark/vertify/network/VersionUpdateManager;->a(Lcn/apppark/vertify/network/VersionUpdateManager;I)I

    iget-object v6, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v6}, Lcn/apppark/vertify/network/VersionUpdateManager;->h(Lcn/apppark/vertify/network/VersionUpdateManager;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-gtz v1, :cond_2

    iget-object v0, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v0}, Lcn/apppark/vertify/network/VersionUpdateManager;->h(Lcn/apppark/vertify/network/VersionUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    return-void

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v1, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v1}, Lcn/apppark/vertify/network/VersionUpdateManager;->i(Lcn/apppark/vertify/network/VersionUpdateManager;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lwq;->a:Lcn/apppark/vertify/network/VersionUpdateManager;

    invoke-static {v0}, Lcn/apppark/vertify/network/VersionUpdateManager;->h(Lcn/apppark/vertify/network/VersionUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
