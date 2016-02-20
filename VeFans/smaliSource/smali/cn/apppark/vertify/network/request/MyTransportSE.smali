.class public Lcn/apppark/vertify/network/request/MyTransportSE;
.super Lorg/ksoap2/transport/HttpTransportSE;


# instance fields
.field private p:Ljava/net/Proxy;

.field private timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->timeout:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->timeout:I

    iput p2, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->timeout:I

    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->timeout:I

    iput-object p1, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->p:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 3

    iget-object v0, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->p:Ljava/net/Proxy;

    if-nez v0, :cond_0

    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->url:Ljava/lang/String;

    iget v2, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->timeout:I

    invoke-direct {v0, v1, v2}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->p:Ljava/net/Proxy;

    iget-object v2, p0, Lcn/apppark/vertify/network/request/MyTransportSE;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    goto :goto_0
.end method
