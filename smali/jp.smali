.class public final Ljp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;I)V
    .locals 0

    iput-object p1, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    iput p2, p0, Ljp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/mozilla/intl/chardet/nsDetector;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    new-instance v3, Ljq;

    invoke-direct {v3, p0}, Ljq;-><init>(Ljp;)V

    invoke-virtual {v2, v3}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->g(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getInterfaces()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :cond_0
    :goto_0
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v2, v5, v6}, Lorg/mozilla/intl/chardet/nsDetector;->isAscii([BI)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v5, v6, v1}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Z)Z

    :cond_3
    iget-object v0, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->h(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    iget-object v1, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->g(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;->getStyle_codeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    sget-object v1, Lcn/apppark/vertify/network/request/WebServiceRequest;->NO_DATA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->b(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Ljp;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "soresult"

    iget-object v3, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->i(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->j(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljr;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljr;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const v1, 0xc350

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Content-Type"

    const-string v2, "text/xml; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->read(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->c(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->b(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    sget-object v2, Lcn/apppark/vertify/network/request/WebServiceRequest;->WEB_ERROR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->b(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Ljp;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "soresult"

    iget-object v3, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v3}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->i(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->j(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljr;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljr;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Ljp;->a:I

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "soresult"

    iget-object v4, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->i(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->j(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;)Ljr;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljr;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
