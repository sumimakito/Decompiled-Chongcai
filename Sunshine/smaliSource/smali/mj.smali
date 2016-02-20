.class public final Lmj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)V
    .locals 0

    iput-object p1, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->b(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->c(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;->getStyle_playDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-static {v2}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->d(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->e(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;->e(Lcn/apppark/vertify/activity/free/self/SelfAnimaView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
