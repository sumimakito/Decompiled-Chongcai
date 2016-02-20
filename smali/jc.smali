.class public final Ljc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)V
    .locals 0

    iput-object p1, p0, Ljc;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Ljc;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->o(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ljc;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->d(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Lje;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljc;->a:Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;->d(Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;)Lje;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lje;->sendEmptyMessage(I)Z
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
