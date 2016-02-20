.class public Lcn/apppark/vertify/network/request/NetWorkPool;
.super Ljava/lang/Object;


# static fields
.field private static MAX_THREAD_NUMBER:I

.field private static fixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private static netWorkPool:Lcn/apppark/vertify/network/request/NetWorkPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcn/apppark/vertify/network/request/NetWorkPool;->MAX_THREAD_NUMBER:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetWorkPool()Lcn/apppark/vertify/network/request/NetWorkPool;
    .locals 1

    sget-object v0, Lcn/apppark/vertify/network/request/NetWorkPool;->fixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lcn/apppark/vertify/network/request/NetWorkPool;->MAX_THREAD_NUMBER:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/apppark/vertify/network/request/NetWorkPool;->fixedThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcn/apppark/vertify/network/request/NetWorkPool;->netWorkPool:Lcn/apppark/vertify/network/request/NetWorkPool;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/network/request/NetWorkPool;

    invoke-direct {v0}, Lcn/apppark/vertify/network/request/NetWorkPool;-><init>()V

    sput-object v0, Lcn/apppark/vertify/network/request/NetWorkPool;->netWorkPool:Lcn/apppark/vertify/network/request/NetWorkPool;

    :cond_1
    sget-object v0, Lcn/apppark/vertify/network/request/NetWorkPool;->netWorkPool:Lcn/apppark/vertify/network/request/NetWorkPool;

    return-object v0
.end method

.method public static setMAX_THREAD_NUMBER(I)V
    .locals 0

    sput p0, Lcn/apppark/vertify/network/request/NetWorkPool;->MAX_THREAD_NUMBER:I

    return-void
.end method


# virtual methods
.method public addRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcn/apppark/vertify/network/request/NetWorkPool;->fixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
