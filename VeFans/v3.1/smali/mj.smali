.class public final Lmj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)V
    .locals 0

    iput-object p1, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->f(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->g(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;->getStyle_playDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/FunctionPublic;->str2int(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmj;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;->h(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;)Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013$PublicHandler;->sendEmptyMessage(I)Z
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
