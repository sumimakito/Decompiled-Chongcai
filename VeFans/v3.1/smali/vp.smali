.class public final Lvp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/apppark/vertify/network/request/WebServicePool;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/network/request/WebServicePool;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lvp;->b:Lcn/apppark/vertify/network/request/WebServicePool;

    iput-object p2, p0, Lvp;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lvp;->b:Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v0, v0, Lcn/apppark/vertify/network/request/WebServicePool;->onErrorListener:Lcn/apppark/vertify/network/request/NetWorkRequest$OnErrorListener;

    iget-object v1, p0, Lvp;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/apppark/vertify/network/request/NetWorkRequest$OnErrorListener;->onErrorResponse(Ljava/lang/String;)V

    return-void
.end method
