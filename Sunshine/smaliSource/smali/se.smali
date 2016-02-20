.class public final Lse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/tieba/TMain;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/tieba/TMain;)V
    .locals 0

    iput-object p1, p0, Lse;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lse;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    invoke-static {v0}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse;->a:Lcn/apppark/vertify/activity/tieba/TMain;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/tieba/TMain;->a(Lcn/apppark/vertify/activity/tieba/TMain;I)V

    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
