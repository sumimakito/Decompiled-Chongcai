.class public Lcn/apppark/vertify/network/request/HttpPostRequestPool;
.super Lcn/apppark/vertify/network/request/NetWorkRequest;


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private jsonParams:Ljava/lang/String;

.field private msgWhat:I

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/network/request/NetWorkRequest;-><init>()V

    iput-object p3, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->myHandler:Landroid/os/Handler;

    iput p1, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->msgWhat:I

    iput-object p2, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->actionUrl:Ljava/lang/String;

    iput-object p4, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->jsonParams:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/apppark/vertify/network/request/NetWorkRequest$OnSuccessListener;Lcn/apppark/vertify/network/request/NetWorkRequest$OnErrorListener;ILjava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/network/request/NetWorkRequest;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->onErrorListener:Lcn/apppark/vertify/network/request/NetWorkRequest$OnErrorListener;

    iput-object p1, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->onSuccessListener:Lcn/apppark/vertify/network/request/NetWorkRequest$OnSuccessListener;

    iput-object p5, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->myHandler:Landroid/os/Handler;

    iput p3, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->msgWhat:I

    iput-object p4, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->actionUrl:Ljava/lang/String;

    iput-object p6, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->jsonParams:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V
    .locals 1

    invoke-static {}, Lcn/apppark/vertify/network/request/NetWorkPool;->getNetWorkPool()Lcn/apppark/vertify/network/request/NetWorkPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/apppark/vertify/network/request/NetWorkPool;->addRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method

.method public requestData(Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->onErrorListener:Lcn/apppark/vertify/network/request/NetWorkRequest$OnErrorListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->onSuccessListener:Lcn/apppark/vertify/network/request/NetWorkRequest$OnSuccessListener;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->myHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->actionUrl:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->jsonParams:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/apppark/vertify/network/request/MyHttpRequest;->doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->ERROR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lwr;

    invoke-direct {v1, p0, v0}, Lwr;-><init>(Lcn/apppark/vertify/network/request/HttpPostRequestPool;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lws;

    invoke-direct {v1, p0, v0}, Lws;-><init>(Lcn/apppark/vertify/network/request/HttpPostRequestPool;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->actionUrl:Ljava/lang/String;

    iget-object v1, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->jsonParams:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/apppark/vertify/network/request/MyHttpRequest;->doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->msgWhat:I

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "soresult"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcn/apppark/vertify/network/request/HttpPostRequestPool;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v1, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
