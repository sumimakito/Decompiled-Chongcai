.class public Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;


# direct methods
.method protected constructor <init>(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)I

    move-result v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;I)I

    :goto_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->c(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->a(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;I)I

    goto :goto_1

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-class v2, Lcn/apppark/vertify/base/ImagePreview;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "picname"

    iget-object v0, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011$PublicHandler;->a:Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    invoke-static {v4}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;->b(Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/free/SelfGalleryItem2Vo;->getData_pic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0, v1}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
