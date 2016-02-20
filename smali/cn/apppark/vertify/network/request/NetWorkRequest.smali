.class public abstract Lcn/apppark/vertify/network/request/NetWorkRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static ERROR:Ljava/lang/String;


# instance fields
.field protected handler:Landroid/os/Handler;

.field public onErrorListener:Lcn/apppark/vertify/network/request/NetWorkRequest$OnErrorListener;

.field public onSuccessListener:Lcn/apppark/vertify/network/request/NetWorkRequest$OnSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-1"

    sput-object v0, Lcn/apppark/vertify/network/request/NetWorkRequest;->ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V
.end method

.method public abstract requestData(Landroid/os/Handler;)V
.end method

.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/network/request/NetWorkRequest;->requestData(Landroid/os/Handler;)V

    return-void
.end method
