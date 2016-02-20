.class public final La;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/apppark/ckj10185912/Main;


# direct methods
.method public constructor <init>(Lcn/apppark/ckj10185912/Main;)V
    .locals 0

    iput-object p1, p0, La;->a:Lcn/apppark/ckj10185912/Main;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
