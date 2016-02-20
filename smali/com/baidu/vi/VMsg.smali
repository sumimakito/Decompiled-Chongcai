.class public Lcom/baidu/vi/VMsg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/vi/VMsg$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vi_voslib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native OnUserCommand(III)V
.end method

.method static synthetic a(III)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/vi/VMsg;->OnUserCommand(III)V

    return-void
.end method

.method public static destroy()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/vi/VMsg;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    sput-object v1, Lcom/baidu/vi/VMsg;->b:Landroid/os/HandlerThread;

    sget-object v0, Lcom/baidu/vi/VMsg;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sput-object v1, Lcom/baidu/vi/VMsg;->a:Landroid/os/Handler;

    return-void
.end method

.method public static init()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VIMsgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/vi/VMsg;->b:Landroid/os/HandlerThread;

    sget-object v0, Lcom/baidu/vi/VMsg;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/baidu/vi/VMsg$a;

    sget-object v1, Lcom/baidu/vi/VMsg;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/vi/VMsg$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/vi/VMsg;->a:Landroid/os/Handler;

    return-void
.end method

.method private static postMessage(III)V
    .locals 1

    sget-object v0, Lcom/baidu/vi/VMsg;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/vi/VMsg;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
