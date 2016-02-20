.class public final Lly;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)V
    .locals 0

    iput-object p1, p0, Lly;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lly;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->g(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lly;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->f(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_playDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lly;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lly;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lly;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView$PublicHandler;->sendMessage(Landroid/os/Message;)Z
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
