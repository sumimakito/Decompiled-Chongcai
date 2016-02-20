.class public final Lho;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)V
    .locals 0

    iput-object p1, p0, Lho;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lho;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->m(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lho;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->d(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Lhq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lho;->a:Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;->d(Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;)Lhq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhq;->sendEmptyMessage(I)Z
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
